// ###############################################
// configuration
// ###############################################
S.cfga({
  "defaultToCurrentScreen" : true,
  "windowHintsShowIcons" : true,
  "windowHintsIgnoreHiddenWindows" : false,
  // "windowHintsDuration" : 3,
  "windowHintsSpread" : true,
  "windowHintsOrder" : "persist",
  // "windowHintsBackgroundColor" : "50;53;58;0.9",
  "windowHintsFontColor" : "255;0;0;1.0"
});

// ###############################################
// operations
// ###############################################
var center = S.op("move", {
  "x" : "screenOriginX+screenSizeX*0.2", // padding left 20%
  "y" : "screenOriginY+screenSizeY*0.1", // padding top 10%
  "width" : "screenSizeX*0.6", // window width 60%
  "height" : "screenSizeY*0.8" // window height 80%
});

var maximize = S.op("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY"
});

var left = S.op("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX*0.5", // window width 50%
  "height" : "screenSizeY"
});

var right = S.op("move", {
  "x" : "screenOriginX+screenSizeX*0.5", // padding left 20%
  "y" : "screenOriginY",
  "width" : "screenSizeX*0.5", // window width 50%
  "height" : "screenSizeY"
});

var chrome720p = slate.operation("move", {
  "x" : "windowTopLeftX",
  "y" : "windowTopLeftY",
  "width" : "1280",
  "height" : "815"
});

var markdownEditLayout = slate.layout("markdownEditLayout", {
  "_after_" : { "operations" : [ S.op("focus", {app : "Marked 2"}), S.op("focus", {app : "Sublime Text"}) ] },
  "Sublime Text" : {
    "operations" : [left],
    "ignore-fail" : true
  },
  "Marked 2" : {
    "operations" : [right],
    "ignore-fail" : true
  },
});

// ###############################################
// bindings
// ###############################################
S.bnda({
  "down:ctrl,alt" : center,
  "left:ctrl,alt" : left,
  "right:ctrl,alt" : right,
  "up:ctrl,alt" : maximize,
  "z:ctrl,alt" : S.op("undo"),
  "c:ctrl,alt" : S.op("focus", {app : "Google Chrome"}),
  "s:ctrl,alt" : S.op("focus", {app : "Sublime Text"}),
  "t:ctrl,alt" : S.op("focus", {app : "iTerm2"}),
  "e:ctrl,alt" : S.op("focus", {app : "Spring Tool Suite"}),
  "i:ctrl,alt" : S.op("focus", {app : "IntelliJ IDEA"}),
  "c:ctrl,alt,shift" : chrome720p,
  "m:ctrl,alt,shift" : S.op("layout", { "name" : markdownEditLayout })
});
