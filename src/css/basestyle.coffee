  css: '
body::after {
  position: fixed;
  bottom: 279px;
  right: 0;
  left: auto;
  -moz-transform: scaleX(1);
  -webkit-transform: scaleX(1);
}
body {
  padding: 16px 0 0;
}
@media only screen and (max-width: 1100px) {
  body {
    padding-top: 31px;
  }
}
@media only screen and (max-width:689px) {
  body {
    padding-top: 46px;
  }
}
@media only screen and (max-width:553px) {
  body {
    padding-top: 61px;
  }
}
.globalMessage {
  bottom: auto;
  left: 2px;
  padding: 10px 5px 10px 5px;
  position: fixed;
  right: auto;
  top: -1000px;
}
.globalMessage b { font-weight: 100; }
.globalMessage:hover::before {
  cursor: pointer;
  opacity: 1;
}
/* Cleanup */
#absbot,
#ft li.fill,
#logo,
#postForm .refreshBtn,
#postForm > tbody > tr > td:first-child,
#postForm > tbody > tr:nth-of-type(7),
#postPassword + span,
#qr.auto:not(:hover) #recaptcha_reload_btn,
#recaptcha_switch_audio_btn,
#recaptcha_whatsthis_btn,
#settingsBox[style*="display: none;"],
.board > hr:last-of-type,
.closed,
.deleteform br,
.error:empty,
.hidden_thread > .summary,
.mobile,
.navLinksBot,
.next,
.pages td:nth-of-type(2n-1),
.postingMode,
.prev,
.qrHeader,
.replyContainer > .hide_reply_button.stub ~ .reply,
.replymode,
.rules,
.sideArrows:not(.hide_reply_button),
.stylechanger,
.warnicon,
.warning:empty,
.yui-menu-shadow,
a[href*="jlist"],
body > .postingMode ~ #delform hr,
body > br,
body > hr,
div.reply[hidden],
form table tbody > tr:nth-of-type(2) td[align="right"],
form[name="post"] h1,
html body > span[style="left: 5px; position: absolute;"]:nth-of-type(0),
table[style="text-align:center;width:100%;height:300px;"],
td[style^="padding: "]:not([style="padding: 10px 7px 7px 7px;"]):not([style="padding: 10px 7px 7px;"]),
#imgControls label:first-of-type input,
.autoPagerS,
#options hr,
.inline .report_button,
.inline input,
.entry:not(.focused) > .subMenu,
#autohide,
#qr.autohide select,
#qr.autohide .close {
  display: none;
}
div.post > blockquote .prettyprint span {
  font-family: monospace;
}
div.post div.file .fileThumb {
  float: left;
  margin: 3px 20px 0;
}
a {
  outline: 0;
}
#boardNavDesktop,
#boardNavDesktop a,
#boardNavDesktopFoot a,
#count,
#imageType,
#imageType option
#imgControls,
#navtopr a[href="javascript:;"],
#postcount,
#stats,
#timer,
#updater,
.pages a,
.pages strong,
body:not([class]) a[href="javascript:void(0);"],
input,
label {
  font-size: 12px;
  text-decoration: none;
}
.filtered {
  text-decoration: line-through;
}
/* YouTube Link Title */
div.post > blockquote .chanlinkify.YTLT-link.YTLT-na {
  text-decoration: line-through;
}
div.post > blockquote .chanlinkify.YTLT-link.YTLT-text {
  font-style: normal;
}
/* Z-INDEXES */
#options.reply.dialog {
  z-index: 999 !important;
}
#autoPagerBorderPaging,
#boardNavDesktopFoot:hover,
#ihover,
#menu.reply.dialog,
#navlinks,
#overlay,
#qp,
#updater:hover,
.deleteform:hover,
.exPopup,
html .subMenu {
  z-index: 99 !important;
}
#boardNavDesktop,
#qr,
body > form #imgControls {
  z-index: 98 !important;
}
.fileText ~ a > img + img {
  z-index: 96 !important;
}
#boardNavMobile,
#imageType,
#imgControls label:first-of-type,
#imgControls label:first-of-type::after,
#stats,
#updater {
  z-index: 10 !important;
}
#settingsBox {
  z-index: 9 !important;
}
.fileThumb,
.deleteform:hover input[type="checkbox"] {
  z-index: 7 !important;
}
#boardNavDesktopFoot::after,
#navtopr,
.deleteform::before,
.qrMessage,
body > a[style="cursor: pointer; float: right;"],
div.navLinks a:first-of-type::after {
  z-index: 6 !important;
}
#stats,
#watcher,
#watcher::before {
  z-index: 4 !important;
}
#postForm label::after,
#postForm label input,
body::after {
  z-index: 3 !important;
}
#recaptcha_reload_btn,
.boardBanner,
.globalMessage::before,
.replyhider a {
  z-index: 1 !important;
}
#postForm td,
div.reply,
div.reply.highlight {
  z-index: 0 !important;
}
#settingsWindowLink::after,
body:not([class]) a[href="javascript:void(0);"]::after {
  z-index: -1 !important;
}
/* ICON POSITIONS */
/* 4chan X Options / 4chan Options */
#settingsWindowLink::after, body:not([class]) a[href="javascript:void(0);"]::after {
  content: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAQAAACR313BAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAIVJREFUGNOFkVERwCAMQyMBKZOAhEng69lCChImYRKQkH0AG7fdjfaHpmmbFmkyMoWstxGIEgljTJKIhCd59IQp9+voBHaMOUmdnqgYs41qcxLYKZhCJFCxbrZJvUfz2LCm1liappoiYUxu8AiHVw2cPIXf6sXsl/L6Vb7c++9qi5v//dgFAGGyWuspVmQAAAAASUVORK5CYII=");
  position: fixed;
  left: auto;
  right: 17px;
  opacity: 0.3;
}
/* 4sight */
body > a[style="cursor: pointer; float: right;"]::after {
  content: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAQAAACR313BAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAH9JREFUGNONkFEZgCAMhIlABCIQgQhE8O2vQQMiEMEIi7AIRjACPqGC4ueetu/udrcZ869wBMI7ZFkREpmN+IRXlpOo+HGt3KZA6eFA6mYZ4dzlkNFbcWefW467XonGYMnU3qrFKwjCQqKi2PmD5JOARansw/0PQpkbeMpUfdUBLYs3tDb03tIAAAAASUVORK5CYII=");
  font-size: 12px;
  position: fixed;
  right: 0px;
  opacity: 0.3;
}
/* Back */
div.navLinks a:first-of-type::after {
  content: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAQAAACR313BAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAGNJREFUGNNjYKAaiC2IXY9LyiH2fuz/2P3YpBRi9wOl/mORjhWIbYBKgeB7oEIIbIgVAEnfR5JEhf2Yuu8DeQ2x/UBTgCYh7J6PajdEC6rL9+ORBgsGgO3DJY2kMAHkegbaAgCK4libswvDKwAAAABJRU5ErkJggg==");
  position: fixed;
  right: 230px;
  cursor: pointer;
  -moz-transform: scale(.8);
  -webkit-transform: scale(.8);
  opacity: 0.4;
  bottom: 1px;
  top: auto;
}
/* Delete Form */
.deleteform::before {
  content: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAAftJREFUOE991M0rRFEYx/E7jYkRTWymycZmZCUrWYgUZTFrkub1T1Cy8LJXkrKWlWRrJZsZW+upSTZkJxbSmIzmXt/feK6O8aI+nnPOc+7vnHnB8zp+isVipFQq9SCJcUxjBpMYRj97op3Pfc1peujGKJtXUcEjfAR4RRUH7JlFQod+C7SQPmoG52gg+EOL9WusYehbmN1EIVfQxr9C3PUH9m1jsFAoeB6/Ino5dpMwpM68jBsn+MnW7qi+HXbP80uIKagHq2gggEKOMYUV5jU8M97BBNaZ39pen3qBlIKSqFhDQWVMoQtxZLChzbq97d93Dn5hPKegcTw6QTeMdZO4PhFqDAl4+XxeQWM4Q8t5ZkvNafgITItaQwax8ONVCNI4QcPZr+cOFTTTsajGMzaQcIKizOftEB0WHqx6pKBJvDqNJ8Y7SMHL5XIRtL/JzONYRBVu2J6aw9YITygzn7AAhaQxj/Z7Rh2gv4s3O7xJXVajHwdoIcAd1pHEGE5Qw6JCsIBLZ796IwqKYhbXFuRTb7GPMzTsoSp110KatrdO3URv+71kkMAaHmyDbhYGaCy68Ztzk3fGp9BL//zj1QBD2M5ms/fwEfyjTk8hei+/viLtMBoRDGIJF3j5JajJWg2bSCOGn/+atGjNFHUOWzjEEfawjBH06mA34QPkk++/bAlEMAAAAABJRU5ErkJggg==");
  visibility: visible;
  position: fixed;
  right: 210px;
  -moz-transform: scale(.9);
  -webkit-transform: scale(.9);
  opacity: 0.4;
  top: auto;
  bottom: 2px;
}
/* Expand Images */
#imgControls label:first-of-type::after {
  content: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAAMRJREFUKFNtks0OAUEQhOdM4iBx8XMSwb6En0dw89CciQMXvIIb9XW6pXfYpDKlu6rV9G4ppfSElbB2THTGA486GrQmfjteOnfJAKcWfbQ2IQp38WkyDMWvqY/WDEyJxkl8JoyFg4sfrjEDOflrpoUAU/CLD0CT72dB8lRiIp6niD+0NkS8lvBfJCYfPf9ZJ4v4RqovjXjh8cLUujSGWOuzyjzS71vq25a2qcB690JH6DrPL26DYSDkT2PpNeqNwFSApv8BTpBEE3rYF6oAAAAASUVORK5CYII=");
  opacity: 0.2;
  position: relative;
  top: 4px;
}
/* Global Message */
.globalMessage::before {
  content: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAQAAACR313BAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAK5JREFUGNN1kE0VxCAMhCMBCZVQCUhAwp6+cyXEARKQgIRIQAISKiF7oEvp7ts5zuTNT0QukCgYhpHZZQU7DcdQFKXhVMItnjS25TzSaQQRIdCxi37hw3iyHJwfIxQnTgcnCkaZpscti9DIgvNaMlc5Y4KTHvIchWKCkSexUZf+jfysdvxWC3OjkLCxn0CjrW+JX2/xGcSG4XQKSqXjOH6HDg+lYhSURBkH8h9E4htm9nkTaedRxgAAAABJRU5ErkJggg==");
  height: 9px;
  position: fixed;
  right: 70px;
  min-width: 30px;
  max-width: 30px;
  padding-bottom: 5px;
  opacity: 0.4;
}
/* Slideout Navigation */
#boardNavDesktopFoot::after {
  border: none;
  position: fixed;
  right: 37px;
  content: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAMAAAAMCGV4AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAEVQTFRFAAAAZ2dnzczMZ2dnzczMZ2dntLOzZ2dnq6qqZ2dnZ2dnZ2dnkI+PZ2dnjIyMqKenZ2dnZ2dnZ2dndXR0e3t7Z2dndHR03/W/BgAAABV0Uk5TABAQICAwQGBggI+fn6+vr7/P3+/vEpdk4gAAAHlJREFUCB0FwYEBgjAQBLDUCghY/aLn/qOagOWoqmMBtJHMmsnZoM2cHf3MbBjZAFtOlpzA+jbSHelwf/1WPbua8PjkiVmqcP/ke0OVmnjl+4Cr7OnW3/MGPbue4b0CI50zG2DLgTYzOvrIbNCO5KorORqg71W1d/gDBFEGZ/GMsaMAAAAASUVORK5CYII=");
  opacity: 0.4;
}
/* Watcher */
#watcher::before {
  content: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAALhJREFUOE+tkl0RgzAQhJFQCUhBAhJ4yENnMIEDJFRKJVRCJSCh3HfsMQfTFzI87CS5n+zuJU0ppalFdSOE9zY/x3EwvAzvBM7D2d7ObMnO8BUWW38JnCPXxSXeLDYKesNsYI+CNuWIE/Oce1YBAZgfYjtIVBNKyENAfUvzhDcp4AIvOvtT3CVrFlMNMwQb8x/PTHb3lXwSD8mb55CnBBP9SGKeNvuYdn+YdvYnpmvvXPO/7/2eVxSsk6VHBDjH8sAAAAAASUVORK5CYII=");
  height: 9px;
  font-size: 12px;
  position: fixed;
  right: 42px;
  min-width: 30px;
  max-width: 30px;
  opacity: 0.4;
}
/* END OF ICON POSITIONS */
a.yuimenuitemlabel:hover,
.sideArrows a:hover {
  background-color: transparent;
}
#settingsBox {
  position: fixed;
  right: 5px;
  width: 234px;
}
#boardNavMobile {
  background: none;
  border: none;
  font-size: 12px;
  padding: 0px;
  padding-top: 1px;
  padding-left: 2px;
  width: 320px;
  pointer-events: none;
}
.pageJump {
  position: fixed;
  top: -1000px;
  pointer-events: all;
}
.extButton img {
  margin-top: -4px;
}
#boardNavMobile select {
  font-size: 11px;
  pointer-events: all;
}
.qrMessage {
  position: fixed;
  right: 3px;
  bottom: 250px;
  font-size: 11px;
  font-weight: 100;
  background: none;
  border: none;
  width: 248px;
}
.boardBanner {
  position: fixed;
  right: 2px;
  top: 19px;
  width: 248px;
  margin: 0;
  margin-top: -6px;
  text-align: center;
 }
.boardBanner img {
  width: 248px;
  height: 83px;
}
.boardTitle {
  font-size: 30px;
  font-weight: 400;
}
.boardSubtitle {
  font-size: 13px;
}
/* 4watch */
body > span > div {
  position: fixed;
  top: auto;
  bottom: 440px;
  right: 0;
  width: 248px;
}
hr {
  padding: 0;
  height: 0;
  width: 100%;
  clear: both;
  border: none;
}
/* Front Page */
.bd,
.bd ul,
img,
.pages,
.pages *,
#qr,
div[id^="qr"],
table.reply[style^="clear: both"],
.boxcontent > hr,
h3 {
  border: none;
}
.boxcontent input {
  height: 18px;
  vertical-align: bottom;
  margin-right: 1px;
}
a.yuimenuitemlabel {
  padding: 0 20px;
}
/* Navigation */
#boardNavDesktop, /* Top Navigation */
.pages /* Bottom Navigation */ {
  text-align: center;
  font-size: 0;
  color: transparent;
  width: auto;
}
#boardNavDesktop{
  /* cripple the positioning of the top navigation */
  position: static;
  width: auto;
  padding-right: 0px;
  margin-right: 0px;
}
#boardNavDesktopFoot:hover::after {
  opacity: 1;
  cursor: pointer;
}
#boardNavDesktopFoot {
  visibility: visible;
  position: fixed;
  position: fixed;
  right: 2px;
  bottom: auto;
  width: 226px;
  color: transparent;
  padding: 3px 10px 35px 10px;
  border-width: 0 1px 1px 0;
  word-spacing: -2px;
  height: 50px;
  text-align: center;
  word-spacing: -3px;
}
.fileThumb {
  position: relative;
}
.pages td:nth-of-type(1) {
  font-size: 75%;
  text-transform: uppercase;
}
.pages td {
  color: transparent;
}
#boardNavDesktop a,
.pages a,
.pages strong,
.pages input {
  -moz-appearance: none;
  -webkit-appearance: none;
  display: inline-block;
  font-size: 12px;
  border: none;
  text-align: center;
  margin: 0 1px 0 2px;
}
.pages {
  word-spacing: 10px;
}
/* moot"s announcements */
h3, h2, h1, .globalMessage {
  font-size: 12px;
}
h3, .globalMessage {
  font-weight: 200;
}
.pages input {
  margin-bottom: 2px;
}
.pages strong,
.pages input,
a,
.new {
  -moz-transition: background-color .1s linear;
  -webkit-transition: background-color .1s linear;
}
/* Post Form */
/* Override OS-specific UI */
#ft li,
#ft ul,
#options input:not([type="checkbox"]):not([type="radio"]),
#updater input:not([type="checkbox"]):not([type="radio"]),
.box-outer,
.boxbar,
.deleteform input[value=Delete],
.recaptcha_image_cell > center > #recaptcha_image,
[name="recaptcha_response_field"],
.top-box,
h2,
input:not([type="checkbox"]):not([type="radio"]),
input:not([type="radio"]),
input[type="file"] > input[type="button"],
input[type="submit"],
select,
textarea {
  -moz-appearance: none;
}
#postForm > table > tbody > tr > td {
  padding: 0;
}
/* Unfuxor the Captcha layout */
#recaptcha_widget_div tr, #recaptcha_widget_div td, #recaptcha_widget_div center, #recaptcha_widget_div #recaptcha_table, #recaptcha_widget_div #recaptcha_area, #recaptcha_widget_div #recaptcha_image {
  margin: 0;
  padding: 0;
  height: auto;
}
#recaptcha_table #recaptcha_image {
  border: none;
}
#postForm #recaptcha_widget_div {
  height: 69px;
}
/* Collapse the postarea table for better control over the height and width */
#postForm {
  border-collapse: collapse;
}
/* Formatting for all postarea elements */
.recaptchatable #recaptcha_response_field,
.deleteform input[type="password"],
input,
input.field,
input[type="submit"],
input[type="file"] > input[type="button"],
input[type="file"] > input[type="text"],
textarea {
  border-width: 1px !important;
  border-style: solid !important;
  padding: 1px !important;
  height: 20px !important;
}
#postForm input:not([type="checkbox"]):not([type="radio"]),
#qr .move .field,
#postForm textarea,
#postForm #recaptcha_widget_div input,
#postForm #recaptcha_widget_div #recaptcha_image img,
#qr input[type="submit"],
input[type="file"],
#qr textarea,
#qr .field {
  margin: 1px 0 0;
  vertical-align: bottom;
}
/* Width and height of all postarea elements (excluding some captcha elements) */
#recaptcha_response_field,
#postForm textarea,
textarea.field,
#postForm input,
#postForm .field,
#recaptcha_widget_div input,
#qr .move .field,
#qr .field[type="password"],
.ys_playerContainer audio,
#qr input[title="Verification"],
#postForm > table,
#recaptcha_image,
#qr div,
input[type="file"] {
  width: 248px;
}
/* File and Subject inputs */
#qr input[type="file"] > input[type="text"],
#postForm input[type="file"] > input[type="text"] {
  width: 185px;
}
input[type="file"] > input[type="button"],
#postForm input[type="file"] > input[type="button"],
#qr input[type="file"] > input[type="text"],
#postForm input[type="file"] > input[type="text"] {
  margin-top: 0;
}
/* Buttons */
input[type="submit"], /* Any lingering buttons */
input[value="Report"],
input[type="file"] > input[type="button"],
#postForm input[type="file"] > input[type="button"] /* Browse Button (Fx*) */ {
  cursor: default;
  height: 20px;
  padding: 0;
  font-size: 12px;
}
#postForm [type="submit"],
#qr input[type="submit"] {
  width: 100%;
  float: left;
  clear: both;
}
#qr input[type="file"] > input[type="button"],
#postForm input[type="file"] > input[type="button"] {
  width: 62px;
  margin-right: 1px;
}
/* Force the file input"s CONTAINER to behave as if it were non-existent, e.g. occupies no more space than its contents */
#qr input[type="file"],
#postForm input[type="file"] {
  height: auto;
  border: none 0px;
  padding: 0;
  float: left;
}
/* Positioning of various postarea checkboxes */
#postForm label {
  position: absolute;
}
#postForm input[name="sub"] + input + label {
  font-size: 12px;
  top: auto;
  bottom: 0px;
  right: 20px;
  vertical-align: bottom;
}
#qr input[name="email"] + label {
  bottom: 2px;
  right: 4px;
}
#qr input[name="sub"] + input + label {
  font-size: 12px;
  top: auto;
  right: 70px;
  margin-top: 1px;
}
/* Image Hover and Image Expansion */
#ihover {
  max-width:85%;
  max-height:85%;
}
#qp {
  min-width: 500px;
}
.fileText ~ a > img + img {
  position: relative;
  top: 0px;
}
#imageType {
  border: none;
  width: 90px;
  position: relative;
  bottom: 1px;
  background: none;
}
/* #qr dimensions */
#qr {
  height: auto;
}
#postForm td {
  padding: 0;
}
#recaptcha_reload_btn {
  position: absolute;
  height: 0;
  width: 0;
  padding: 12px 0 0 12px;
  background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAQAAAD8fJRsAAAAZ0lEQVR4XgXAsQ0BUQCA4c8kSrOo70KntAgxgkl05CV2sMOVEo2ofgEAYAIAdp6SRQBwkSQJgL3kbJYEwPC1BgArIFcAwAvIFgAcBQwAQAawQZK7g0UmAJKPt+QEAPlJHmYA4AYA8AeJKy3vtXoiawAAAABJRU5ErkJggg==") no-repeat;
  overflow: hidden;
}
#postForm #recaptcha_reload_btn {
  bottom: 62px;
  right: 2px;
}
#postForm #recaptcha_reload_btn,
.refreshBtn {
  bottom: 70px;
  right: 5px;
}
.top-box .menubutton,
.boardTitle {
  background-image: none;
}
/* Post form Checkboxes */
#postForm input[name="email"] + label {
  position: absolute;
  top: auto;
  bottom: 2px;
  right: 170px;
  vertical-align: bottom;
}
div#postForm > form td:nth-of-type(3) > label input,
#delform > div:not(.thread) input,
.deleteform input[type="checkbox"] {
  vertical-align: middle;
}
#postForm td:nth-of-type(3) > label input,
#qr label input,
.boxcontent input,
.boxcontent textarea {
  -moz-appearance: none;
  -webkit-appearance: none;
  border: 0;
}
input[type=checkbox],
.reply input[type=checkbox],
#options input[type=checkbox] {
  -moz-appearance: none;
  -webkit-appearance: none;
  width: 12px;
  height: 12px;
  cursor: pointer;
}
.postingMode ~ #delform .opContainer input {
  position: relative;
  bottom: 2px;
}
/* Posts */
body > .postingMode ~ #delform br[clear="left"],
#delform center {
  position: fixed;
  bottom: -500px;
}
.deleteform {
  border-spacing: 0 1px;
}
#delform .fileText + br + a[target="_blank"] img,
#qp div.post .fileText + br + a[target="_blank"] img  {
  border: 0;
  float: left;
  margin: 5px 20px 15px;
}
#delform .fileText + br + a[target="_blank"] img + img {
  margin: 0 0 25px;
}
.fileText {
  margin-top: 17px;
}
.fileText span:not([class])::after {
  font-size: 13px;
}
#updater:hover {
  border: 0;
}
/* Fixes text spoilers */
.spoiler:not(:hover),
.spoiler:not(:hover) .quote,
.spoiler:not(:hover) a {
  color: #000;
  text-shadow: none;
}
/* Remove default "inherit" background declaration */
.span.subject,
.subject,
.name,
.postertrip {
  background: transparent;
}
.name {
  font-weight: 700;
}
/* Addons and such */
body > div[style="width: 100%;"] {
  margin-top: 34px;
}
#copyright,
#boardNavDesktop a,
#qr td,
#qr tr[height="73"]:nth-of-type(2),
.recaptcha_input_area,
.menubutton a,
.pages td,
.recaptchatable td.recaptcha_image_cell,
td[style="padding-left: 7px;"],
div[id^="qr"] tr[height="73"]:nth-of-type(2) {
  padding: 0;
}
#navtopr {
  position: fixed;
  right: 60px;
  top: -100px;
  bottom: auto;
  font-size: 0;
  color: transparent;
}
#navtopr a[href="javascript:;"]:hover::after, body:not([class]) a[href="javascript:void(0);"]:hover::after {
  opacity: 1;
}
/* Expand Images div */
#imgControls input {
  width: 10px;
  height: 10px;
  margin: 4px 1px;
  vertical-align: top;
}
#imgControls label {
  font-size: 0;
  color: transparent;
}
#imgControls label:first-of-type {
  position: fixed;
  right: 232px;
  top: 0px;
  bottom: auto;
}
#imgControls label:hover:first-of-type::after { opacity: 1; }
#imageType {
  position: fixed;
  right: 140px;
  top: 1px;
  bottom: auto;
}
#imgControls label:nth-of-type(2)::after {
  font-size: 12px;
  content: "Preload?";
}
#imgControls select { float: right; }
/* Hide UI of the select element */
select > button,
select > input {
  opacity: 0;
}
#imgControls select > option { font-size: 80%; }
/* End of Expand Images div */
/* Reply Previews */
#qp div.post /* 4chan x Quote Preview */ {
  max-width: 70%;
  visibility: visible;
}
#qp div.op { display: table; }
#qp div.post { padding: 2px 6px; }
#qp div.post img {
  max-width: 300px;
  height: auto;
}
.deleteform {
  position: fixed;
  top: -1000px;
}
.deleteform  {
  position: fixed;
  top: -1000px;
  right: 2px;
  bottom: auto;
  width: 248px;
  margin: 0px;
  padding: 0px;
  font-size: 0px;
}
.deleteform:hover::before {
  opacity: 1;
  cursor: pointer;
  bottom: -30px;
  visibility: hidden;
}
.deleteform:hover {
  position: fixed;
  right: 3px;
}
.deleteform {
  height: 18px;
  width: 250px;
}
.deleteform input[value="Delete"], .deleteform input[value="Report"] { float: left; }
.deleteform,
.deleteform { width: 246px; }
.deleteform:hover input[name="pwd"] {
  position: fixed;
  left: 105px;
  right: 3px;
  width: 146px;
  height: 20px;
  text-align: right;
}
div.deleteform input[type="password"] { width: 144px; }
.deleteform:hover input[type="checkbox"] {
  position: fixed;
  right: 130px;
}
.deleteform:hover::after {
  visibility: visible;
  position: fixed;
  right: 80px;
  font-size: 12px;
  content: "File Only";
  width: 50px;
}
.deleteform .field {
  width: 138px;
  margin-right: 1px;
}
div.navLinks {
  font-size: 0;
  visibility: hidden;
}
div.navLinks a {
  position: fixed;
  top: auto;
  right: -192px;
  bottom: -1000px;
  visibility: visible;
  height: 14px;
  width: 58px;
  margin: 0;
  padding: 0;
  font-size: 9px;
  text-transform: uppercase;
  vertical-align: bottom;
  padding-top: 5px;
  border-radius: 0;
  text-align: center;
}
div.navLinks a:first-of-type:hover::after {
  opacity: 1;
}
/* File Clearer support */
.clearbutton {
  position: fixed;
  bottom: 45px;
  right: 55px;
}
/* AutoPager */
#autoPagerBorderPaging {
  position: fixed !important;
  right: 300px !important;
  bottom: 0px;
}
/* 4chan x options */
#options ul { margin: 0; }
#options ul > li { padding: 0; }
#options.reply.dialog, #options .dialog { width: 700px; }
#options ul {
  margin-bottom: 5px;
  padding-bottom: 7px;
}
#options ul:first-of-type { padding-top: 5px; }
#content textarea { width: 99%; }
/* End of 4chan x options */
#stats {
  padding: 3px 0;
  border: 0;
  border-radius: 0;
  font-size: 12px;
  position: fixed;
  top: -1px !important;
  right: 45px !important;
  width: 96px;
  text-align: right;
  bottom: auto !important;
  cursor: default;
}
#updater {
  right: 2px !important;
  top: -4px !important;
  bottom: auto !important;
  width: 58px !important;
  border: 0;
  font-size: 12px;
  overflow: hidden;
  padding-bottom: 2px;
}
#updater { background: none; }
#count.new { background-color: transparent; }
#updater:hover {
  width: 150px;
  right: 2px !important;
}
#updater #count:not(.new) {
  font-size: 0;
  color: transparent;
}
#updater #count:not(.new)::after {
  font-size: 12px;
  content: "+0";
}
#watcher > div {
  max-width: 236px;
  width: 236px;
  overflow: hidden;
}
#watcher .move {
  font-size: 0px;
  height: 0px;
}
.opContainer .favicon {
  position: relative;
  top: 2px;
}
#watcher { padding-left: 0px; }
#watcher:hover::before {
  opacity: 1;
  cursor: pointer;
}
#qp div.post,
div.reply,
div.reply.highlight,
#options { border: 0; }
#watcher {
  border: 0;
  padding: 1px 0;
  border-radius: 0;
}
#watcher .move {
  padding: 2px 3px;
  margin-bottom: 2px;
  text-decoration: none;
}
#watcher .move,
#updater .move,
#options .move,
#stats .move { cursor: default !important; }
/* 4sight */
body > a[style="cursor: pointer; float: right;"] {
  position: fixed;
  top:-119px;
  right: 60px;
  font-size: 0px;
}
body > a[style="cursor: pointer; float: right;"]:hover::after { opacity: 1; }
body > a[style="cursor: pointer; float: right;"] ~ div[style^="width: 100%;"] {
  display: block;
  position: fixed;
  top: 17px;
  bottom: 17px;
  left: 4px;
  right: 252px;
  width: auto;
  margin: 0;
}
body > a[style="cursor: pointer; float: right;"] ~ div[style^="width: 100%;"] > table {
  height: 100%;
  vertical-align: top;
}
body > a[style="cursor: pointer; float: right;"] ~ div[style^="width: 100%;"]{
  height: 95%;
  margin-top: 5px;
  margin-bottom: 5px;
}
#fs_status {
  width: auto;
  height: 100%;
  background: none;
  padding: 10px;
  overflow: scroll;
}
[alt="sticky"] + a::before { content: "Sticky | "; }
[alt="closed"] + a::before { content: "Closed | "; }
[alt="closed"] + a { text-decoration: line-through; }
/* Youtube Link Title */
.chanlinkify.YTLT-link.YTLT-text {
  font-family: monospace;
  font-size: 11px;
}
.prettyprint {
  background-color: rgba(255,255,255,.1);
  white-space: pre-wrap;
  border: 1px solid rgba(0,0,0,0.5);
  border-radius: 2px;
  font-size: 11px;
}
span.pun { color: #8ba446; }
span.com { color: #F42424; }
span.str { color: #15C030; }
span.kwd { color: #2A61E4; }
span.typ { color: #964ACC; }
span.lit { color: #2AA0A0; }
.fileText+br+a[target="_blank"]:hover { background: none; }
.inline, #qp {
  background-color: transparent;
  border: none;
}
/* Adblock Minus */
img[src^="//static.4chan.org/support/"] { display: none; }
input[type="submit"]:hover, input[type="file"] > input[type="button"]:hover { cursor: pointer; }
/* 4chan Sounds */
.ys_playerContainer.reply {
  position: fixed;
  bottom: 252px;
  margin: 0;
  right: 3px;
  padding-right: 0;
  padding-left: 0;
  padding-top: 0;
}
#qr input:focus:-moz-placeholder,
#qr textarea:focus:-moz-placeholder { color: transparent; }
#qr input:focus:-webkit-placeholder,
#qr textarea:focus:-webkit-placeholder { color: transparent; }
img[md5] { image-rendering: optimizeSpeed; }
input,
textarea { text-rendering: geometricPrecision; }
#boardNavDesktop .current {
  font-weight: bold;
  font-size: 13px;
}
#postForm > tbody > tr:nth-last-of-type(2) td,
#postForm input {
  height: 20px;
}
#postForm textarea,
textarea.field {
  height: 88px;
}
#postPassword {
  position: relative;
  bottom: 3px;
}
#recaptcha_table, #recaptcha_table tbody, #recaptcha tbody tr {
  display: block;
  visibility: visible;
}
#postPassword {
  margin-bottom: 0px;
  margin-top: 0px;
}
#postForm label {
  position: absolute;
  bottom: 0px;
  font-size: 0px;
}
#postForm > tbody > tr:nth-of-type(3) > td { font-size: 0px; }
#postForm label input {
  position: absolute;
  bottom: 20px;
  right: 150px;
  max-height: 12px;
  max-width: 12px;
}
#postForm label::after {
  font-size: 12px;
  content: "Spoiler?";
  position: absolute;
  bottom: 7px;
  right: 90px;
}
.postContainer.inline {
  border: none;
  background: none;
  padding-bottom: 2px;
}
div.pagelist {
  background: none;
  border: none;
}
a.forwardlink { border: none; }
.deleteform { border-bottom: 2px solid transparent; }
.exif td { color: #999; }
.callToAction.callToAction-big {
  font-size: 18px;
  color: white;
}
body > table[cellpadding="30"] h1, body > table[cellpadding="30"] h3 { position: static; }
.focused.entry { background-color: transparent; }
#menu.reply.dialog, html .subMenu { padding: 0px; }
#charCount {
  background: none;
  position: absolute;
  right: 2px;
  top: 112px;
  color: black;
  font-size: 10px;
}
#charCount.warning {
  color: red;
  position: absolute;
  right: 2px;
  top: 110px;
}
#postForm input[type="password"] {
  text-align: right;
  border: none;
}
textarea {
  resize: none;
}
/* .move contains the name field of the #qr. Here we"re making it behave like no more than a container. We also hide the "Quick Reply" text with a hack. */
#qr .move {
  color: transparent;
  font-size: 0;
  height: 20px;
  cursor: default;
}
/* Position and Dimensions of the #qr */
#qr, #postForm {
  overflow: visible;
  position: fixed;
  top: auto !important;
  bottom: 20px !important;
  width: 248px;
  margin: 0;
  padding: 0;
  z-index: 5;
}
/* Width and height of all #qr elements (excluding some captcha elements) */
#qr textarea {
  min-height: 0;
}
body > .postingMode ~ #delform .reply a > img[src^="//images"] {
  position: relative;
  z-index: 96;
}
#postForm #recaptcha_widget_div img,
#qr img {
  height: 47px;
  width: 248px;
}
#dump {
  background: none;
  border: none;
  width: 20px;
  height: 17px;
  margin: 0;
  position: absolute;
  bottom: -14px;
  right: 0px;
  font-size: 14px;
  vertical-align: middle;
  outline: none;
}
#dump:hover { background: none; }
#qr .move { height: 0px; }
#qr select {
  position: absolute;
  bottom: -18px;
  right: 65px;
  background: none;
  border: none;
  font-size: 12px;
  width: 128px;
}
#qr > form > label {
  font-size: 0px;
  color: transparent;
}
#qr > form > label::after {
  content: "Spoiler?";
  font-size: 12px;
}
.dump > form > label {
  display: block;
  visibility: hidden;
}
#qr [type="file"] input[type="text"] {
  width: 104px;
  position: relative;
  right: 1px;
}
#spoilerLabel {
  position: absolute;
  bottom: -20px;
  right: 20px;
}
#spoilerLabel input {
  position: relative;
  top: 1px;
  left: 2px;
}
#qr .warning {
  position: absolute;
  bottom: -18px;
  right: 1px;
  height: 20px;
  text-align: right;
  vertical-align: middle;
  padding-top: 2px;
  max-height: 16px;
}
input[type="file"] > input[type="button"] {
  float: left;
}
input[type="file"] input[type="text"] {
  float: right;
  margin-right: -1px;
}
.deleteform:hover {
  top: auto;
  bottom: 0px;
}
.deleteform:hover input[type="checkbox"],
.deleteform:hover::after {
  top: auto;
  bottom: 2px;
}
.deleteform:hover input[name="pwd"] {
  top: auto;
  bottom: 0px;
}
input[title="Verification"], .captchaimg img { margin-top: 1px; }
#qr.autohide .move {
  display: inline-block;
  font-size: 12px;
  visibility: visible;
  height: 20px;
  bottom: 20px;
  text-align: center;
  overflow: visible;
  padding-top: 3px;
  -moz-transition: opacity .3s ease-in-out 3s;
  -webkit-transition: opacity .3s ease-in-out 3s;
  min-width: 0;
  width: 248px;
}
#qr.autohide:not(:hover) .move {
  position: fixed;
  bottom: 0px;
}
#qr.autohide {
  padding-bottom: 0px;
  bottom: -250px!important;
  -moz-transition: bottom .3s ease-in-out 3s, top .3s ease-in-out 3s;
  -webkit-transition: bottom .3s ease-in-out 3s, top .3s ease-in-out 3s;
}
#qr.autohide:hover {
  padding-bottom: 16px;
  -moz-transition: bottom .3s linear, top .3s linear;
  -webkit-transition: bottom .3s linear, top .3s linear;
  bottom: 1px;
}
#qr.autohide:hover .move { padding-bottom: 5px; }
#qr.autohide:hover .move input { display: inline-block; }
#qr.autohide:hover select { display: inline-block; }
#qr.autohide:hover .move { padding-top: 1px; }
#qr textarea.field,
#qr div { min-width: 0; }
'