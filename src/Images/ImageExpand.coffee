ImageExpand =
  init: ->
    return if g.VIEW is 'catalog' or !Conf['Image Expansion']

    @EAI = $.el 'a',
      className: 'expand-all-shortcut fa fa-expand'
      textContent: 'EAI' 
      title: 'Expand All Images'
      href: 'javascript:;'
    $.on @EAI, 'click', @cb.toggleAll
    Header.addShortcut @EAI, 3
    $.on d, 'scroll visibilitychange', @cb.playVideos

    Post.callbacks.push
      name: 'Image Expansion'
      cb: @node

  node: ->
    return unless @file and (@file.isImage or @file.isVideo)
    $.on @file.thumb.parentNode, 'click', ImageExpand.cb.toggle
    if @isClone 
      if @file.isExpanding
        # If we clone a post where the image is still loading,
        # make it loading in the clone too.
        ImageExpand.contract @
        ImageExpand.expand @
      else if @file.isExpanded and @file.isVideo
        ImageExpand.setupVideoCB @
        ImageExpand.play @ if !@origin.file.fullImage?.paused or @origin.file.wasPlaying
    else if ImageExpand.on and !@isHidden and
      (Conf['Expand spoilers'] or !@file.isSpoiler) and
      (Conf['Expand videos'] or !@file.isVideo)
        ImageExpand.expand @

  cb:
    toggle: (e) ->
      return if e.shiftKey or e.altKey or e.ctrlKey or e.metaKey or e.button isnt 0
      post = Get.postFromNode @
      {file} = post
      return if file.isExpanded and file.isVideo and file.fullImage.controls
      e.preventDefault()
      ImageExpand.toggle post

    toggleAll: ->
      $.event 'CloseMenu'
      toggle = (post) ->
        {file} = post
        return unless file and (file.isImage or file.isVideo) and doc.contains post.nodes.root
        if ImageExpand.on and
          (!Conf['Expand spoilers'] and file.isSpoiler or
          !Conf['Expand videos']    and file.isVideo or
          Conf['Expand from here']  and Header.getTopOf(file.thumb) < 0)
            return
        $.queueTask func, post

      if ImageExpand.on = $.hasClass ImageExpand.EAI, 'expand-all-shortcut'
        ImageExpand.EAI.className = 'contract-all-shortcut fa fa-compress'
        ImageExpand.EAI.title     = 'Contract All Images'
        func = (post) -> ImageExpand.expand post
      else
        ImageExpand.EAI.className = 'expand-all-shortcut fa fa-expand'
        ImageExpand.EAI.title     = 'Expand All Images'
        func = ImageExpand.contract

      g.posts.forEach (post) ->
        toggle post for post in [post, post.clones...]
        return

    playVideos: (e) ->
      g.posts.forEach (post) ->
        return unless post.file and post.file.isVideo and post.file.isExpanded
        video = post.file.fullImage
        visible = !d.hidden and Header.isNodeVisible video
        if visible and post.file.wasPlaying
          delete post.file.wasPlaying
          video.play()
        else if !visible and !video.paused
          post.file.wasPlaying = true
          video.pause()
        return

    setFitness: ->
      (if @checked then $.addClass else $.rmClass) doc, @name.toLowerCase().replace /\s+/g, '-'

  toggle: (post) ->
    unless post.file.isExpanding or post.file.isExpanded
      ImageExpand.expand post
      return

    # Scroll back to the thumbnail when contracting the image
    # to avoid being left miles away from the relevant post.
    {root} = post.nodes
    {top, left} = (if Conf['Advance on contract'] then do ->
      next = root
      while next = $.x "following::div[contains(@class,'postContainer')][1]", next
        continue if $('.stub', next) or next.offsetHeight is 0
        return next
      root
    else 
      root
    ).getBoundingClientRect()

    if top < 0
      y = top
      if Conf['Fixed Header'] and not Conf['Bottom Header']
        headRect = Header.bar.getBoundingClientRect()
        y -= headRect.top + headRect.height

    if left < 0
      x = -window.scrollX
    window.scrollBy x, y if x or y
    ImageExpand.contract post

  contract: (post) ->
    {file} = post
    $.rmClass post.nodes.root, 'expanded-image'
    $.rmClass file.thumb,      'expanding'
    $.rm file.videoControls if file.videoControls
    for x in ['isExpanding', 'isExpanded', 'videoControls', 'wasPlaying']
      delete file[x]
    if el = file.fullImage
      $.off el, 'error', ImageExpand.error
      if file.isVideo
        el.pause()
        TrashQueue.add el, post
        for eventName, cb of ImageExpand.videoCB
          $.off el, eventName, cb
        return

  expand: (post, src) ->
    # Do not expand images of hidden/filtered replies, or already expanded pictures.
    {thumb, isVideo} = post.file
    return if post.isHidden or post.file.isExpanding or post.file.isExpanded
    post.file.isExpanding = true
    $.addClass thumb, 'expanding'
    el = post.file.fullImage or $.el (if isVideo then 'video' else 'img'), className: 'full-image'
    $.on el, 'error', ImageExpand.error
    if post.file.fullImage
      # Expand already-loaded/ing picture.
      TrashQueue.remove el
    else
      el.src = src or post.file.URL
      $.after thumb, el
      post.file.fullImage = el
    $.asap (-> if isVideo then el.readyState >= el.HAVE_CURRENT_DATA else el.naturalHeight), ->
      if post.nodes.root.parentNode
        {bottom} = post.nodes.root.getBoundingClientRect()
        $.queueTask -> ImageExpand.completeExpand post, bottom
      else
        # Image might start/finish loading before the post is inserted; don't scroll.
        ImageExpand.completeExpand post

  completeExpand: (post, oldBottom) ->
    {file} = post
    return unless file.isExpanding # contracted before the image loaded

    $.rmClass  file.thumb,      'expanding'
    $.addClass post.nodes.root, 'expanded-image'
    delete file.isExpanding
    file.isExpanded = true

    if file.isVideo
      # add contract link to file info
      if Conf['Show Controls']
        file.videoControls = ImageExpand.videoControls.cloneNode true
        $.add file.text, file.videoControls

      # disable link to file so native controls can work
      file.thumb.parentNode.removeAttribute 'href'
      file.thumb.parentNode.removeAttribute 'target'

      video = file.fullImage
      video.loop = true
      ImageExpand.setupVideoCB post
      ImageExpand.play post if Conf['Autoplay']
      ImageCommon.addControls video if Conf['Show Controls']

    # Scroll to keep our place in the thread when images are expanded above us.
    if oldBottom? and oldBottom <= 0
      window.scrollBy 0, post.nodes.root.getBoundingClientRect().bottom - oldBottom
      return

    # Scroll to display full image.
    imageBottom = Header.getBottomOf file.fullImage
    {height} = file.fullImage.getBoundingClientRect()
    if imageBottom + height >= 0 and imageBottom < 0
      window.scrollBy 0, Math.min(-imageBottom, Header.getTopOf file.fullImage)

  play: (post) ->
    if !d.hidden and Header.isNodeVisible post.file.fullImage
      post.file.fullImage.play()
    else
      post.file.wasPlaying = true

  videoControls: $.el 'span',
    className: 'video-controls'
    innerHTML: '\u00A0<a href="javascript:;" title="You can also contract the video by dragging it to the left.">contract</a>'

  videoCB: do ->
    # dragging to the left contracts the video
    mousedown = false
    mouseover:     -> mousedown = false
    mousedown: (e) -> mousedown = true  if e.button is 0
    mouseup:   (e) -> mousedown = false if e.button is 0
    mouseout:  (e) -> ImageExpand.contract(Get.postFromNode @) if mousedown and e.clientX <= @getBoundingClientRect().left
    click:     (e) ->
      if @paused and not @controls
        @play()
        e.stopPropagation()

  setupVideoCB: (post) ->
    for eventName, cb of ImageExpand.videoCB
      $.on post.file.fullImage, eventName, cb
    if post.file.videoControls
      $.on post.file.videoControls.firstElementChild, 'click', -> ImageExpand.contract post

  error: ->
    post = Get.postFromNode @
    $.rm @
    delete post.file.fullImage
    # Images can error:
    #  - before the image started loading.
    #  - after the image started loading.
    unless post.file.isExpanding or post.file.isExpanded
      # Don't try to re-expand if it was already contracted.
      return
    ImageExpand.contract post
    return if ImageCommon.decodeError @, post
    ImageCommon.error post, 10 * $.SECOND, (URL) -> ImageExpand.expand post, URL

  menu:
    init: ->
      return if g.VIEW is 'catalog' or !Conf['Image Expansion']

      el = $.el 'span',
        textContent: 'Image Expansion'
        className: 'image-expansion-link'

      {createSubEntry} = ImageExpand.menu
      subEntries = []
      for name, conf of Config.imageExpansion
        subEntries.push createSubEntry name, conf[1]

      Header.menu.addEntry
        el: el
        order: 105
        subEntries: subEntries

    createSubEntry: (name, desc) ->
      label = UI.checkbox name, " #{name}"
      label.title = desc
      input = label.firstElementChild
      if name in ['Fit width', 'Fit height']
        $.on input, 'change', ImageExpand.cb.setFitness
      $.event 'change', null, input
      $.on input, 'change', $.cb.checked
      el: label
