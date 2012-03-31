/*** LAYOUT ***/

/* Base font.  This is a load of crap.  Why can't everyone have a default
 * browser font they actually want to see?  Fuck fuck fuckity fuck IE. */
body { font-family: DejaVu Sans, Verdana, sans-serif; font-size: 12px; }

/* General feel */
body { color: black; background: #8bb88a url(${h.static_uri('local', 'images/layout/background-treekun.png')}) repeat; }

/* Core layout */

/* +----------+
 * |  HEADER  |  -- top, left, right
 * |   BODY   |  -- left, right
 * |  FOOTER  |  -- bottom, left, right
 * +----------+
 */
#header, #ie-warning, #flash, #body, #footer { margin: 4em; border: 2px solid black; background: white; }
#header { margin-top: 8em; -moz-border-radius-topright: 4em; -webkit-border-top-right-radius: 4em; }
#header, #ie-warning, #flash, #body { margin-bottom: 0; border-bottom: none; }
#ie-warning, #flash, #body, #footer { margin-top: 0; border-top: none; }

#header { position: relative; height: 8em; color: white; background: #aa7747 url(${h.static_uri('local', 'images/layout/header-background-treekun.png')}) center bottom repeat-x; }
#header #logo { position: absolute; top: -88px; left: -28px; /* arbitrary */ }
#header #title { overflow: hidden; position: absolute; top: -0.87em; height: 0.87em; /* very approximately puts baseline on the top border */ right: 0; left: 0; text-align: center; font-size: 4em; line-height: 1em; color: black; font-weight: bold; text-transform: lowercase; }
#header #title a { color: black; }
#header a { color: #325d32; }
#header a:hover { color: #5e3d32; }

#header #page-name { z-index: 1; font-size: 2em; position: absolute; bottom: 1.33em; left: 160px /* beside the logo */; }
#header #page-name ul#breadcrumbs { font-size: 0.5em; }
#header #page-name ul#breadcrumbs li { display: inline-block; }
#header #page-name ul#breadcrumbs li:after { content: ' » '; }
#header #page-name ul#breadcrumbs li:last-child:after { content: ''; }
#header #page-name ul#breadcrumbs li:last-child { font-size: 2em; display: block; margin-top: 0.25em; }

#header #pokedex-lookup { position: absolute; right: 1em; bottom: 1em; padding-top: 160px; min-width: 194px; /* make sure pokedex image fits */ padding-right: 1em; padding-bottom: 1em; background: url(${h.static_uri('local', 'images/layout/pokedex.png')}) right bottom no-repeat; }
#header #pokedex-lookup p { margin: 0; line-height: 1; white-space: nowrap; }
#header #pokedex-lookup label { font-size: 1.5em; }
#header #pokedex-lookup input[type="text"] { width: 12em; }

#header #user { position: absolute; top: -8em; right: 0; left: 0; text-align: center; }

#menu { position: absolute; margin-top: -2.33em; margin-left: 4em; left: 140px; /* avoid eevee logo */ }
#menu > ul > li { float: left; padding: 0.33em; }
#menu > ul > li > a { background: #cff0cf; -moz-border-radius-topright: 0.5em; -moz-border-radius-topleft: 0.5em; -webkit-border-top-right-radius: 0.5em; -webkit-border-top-left-radius: 0.5em; }
#menu li a { display: block; padding: 0.5em; }
/* Positioning of submenu */
#menu li { position: relative; }
#menu > ul > li > ul { z-index: 100; position: absolute; width: 16em; margin-top: -1px; border: 1px solid #35cd32; background: #cff0cf; -moz-box-shadow: rgba(0, 0, 0, 0.5) 0.25em 0.25em 0.5em; -webkit-box-shadow: rgba(0, 0, 0, 0.5) 0.25em 0.25em 0.5em; box-shadow: rgba(0, 0, 0, 0.5) 0.25em 0.25em 0.5em; }
/* Show submenus on hover */
#menu > ul > li > ul { display: none; }
#menu > ul > li:hover { border-color: #35cd32; border-bottom-color: transparent; }
#menu > ul > li:hover > a { background: #35cd32; color: white; }
#menu > ul > li:hover > ul { display: block; }
/* General link stylin' */
#menu > ul > li > ul > li a:link { color: black; }
#menu > ul > li > ul > li a:visited { color: #404040; }
#menu > ul > li > ul > li a:hover { color: black; }
#menu > ul > li > ul > li a { padding: 0.33em; }
#menu > ul > li > ul > li a:link:hover,
#menu > ul > li > ul > li a:visited:hover { background: #b4e6b3; }
/* Submenu headers */
#menu > ul > li > ul > li > a { font-weight: bold; }
/* Sub-submenu items, or regular things */
#menu > ul > li > ul > li > ul > li > a { padding-left: 1.33em; font-weight: normal; }
/* Below even that */
#menu > ul > li > ul > li > ul > li li > a { font-size: 0.9em; line-height: 1.11em; padding-left: 2.59em /* 2.33 / 0.8 */; font-weight: normal; font-style: italic; }

#ie-warning { padding: 0.25em 0.25em 0.25em 2em; background: #f4af70 url(${h.static_uri('spline', "icons/disk.png")}) 0.5em 0.5em no-repeat; }
#ie-warning p { margin: 0; padding: 0.25em; }

#flash { padding: 0.5em; }
#flash li { padding: 0.5em; padding-left: 2.5em; line-height: 1.33; border: 1px solid #d8bc8d; background: #e5d2b2; }
#flash li:first-child { -moz-border-radius-topright: 0.33em; -moz-border-radius-topleft: 0.33em; -webkit-border-top-right-radius: 0.33em; -webkit-border-top-left-radius: 0.33em; }
#flash li:last-child { -moz-border-radius-bottomright: 0.33em; -moz-border-radius-bottomleft: 0.33em; -webkit-border-bottom-right-radius: 0.33em; -webkit-border-bottom-left-radius: 0.33em; }
#flash li + li { border-top: none; }
#flash li img { display: block; float: left; margin-left: -2em;  /* let icon sit in the padding */ }

#footer { padding: 0.33em; background: #ececec; color: #606060; }
#footer p { font-size: 0.8em; margin: 0.25em 0.5em; }
#footer #footer-timer { float: right; width: 20em; margin: 0.33em; line-height: 16px; text-align: right; }
#footer #footer-timer #footer-timer-pokemon { float: right; margin-left: 0.33em; }
#footer table#footer-query-log { margin: 0.33em -0.33em -0.33em; line-height: 1.2; background: #e8f0e8; }
#footer table#footer-query-log th { font-family: monospace; text-align: left; color: #004000; }

#body { padding: 1em; }

h1 { margin-top: 1em; margin-bottom: 0.5em; padding-left: 36px; border: 1px solid #b44b4b; border-left: none; font-size: 1.6em; line-height: 1.5em; font-weight: bold; color: black; background: #d37878 url(${h.static_uri('local', 'images/layout/h1-background-treekun.png')}) left center no-repeat; -webkit-border-top-right-radius: 1em; -webkit-border-bottom-right-radius: 1em; -moz-border-radius-topright: 1em; -moz-border-radius-bottomright: 1em; }
h2 { margin-top: 1em; margin-bottom: 0.5em; font-size: 1.5em; font-weight: bold; color: #202020; border-bottom: 1px solid #808080; }
h2:before, h2:after { content: '_'; visibility: hidden; /* extend underline */ }
h3 { margin-top: 0.5em; margin-bottom: 0.25em; font-size: 1.2em; font-weight: bold; color: #202020; border-bottom: 1px dotted #808080; }
h1, h2, h3 { overflow: hidden /* clean up cruft and ensure bg/border don't encroach on floats */; }
h1:first-child, h2:first-child { margin-top: 0; }

#error-illustration { text-align: center; }

/*** USEFUL CLASSES ***/

.faded { opacity: 0.25; }
.disabled { color: #c0c0c0; text-decoration: line-through; }
.vertical-text { -moz-transform: rotate(-90deg); }
.annotation { border-bottom: 1px dotted black; }

/* Links durp */
a:link { font-weight: bold; text-decoration: none; color: #35cd32; }
a:visited { font-weight: bold; text-decoration: none; color: #437b42; }
a:hover { color: #cd3232; }
a.subtle { color: black; }
a.subtle:hover { text-decoration: underline; }

/* Tag defaults; careful what goes here! */
p { margin-bottom: 0.75em; line-height: 1.5; }
img { vertical-align: middle; }
abbr { border-bottom: 1px dotted black; }
small { font-size: 0.8em; }

pre { overflow: auto; margin: 0.5em 0; padding: 0.25em 0.5em; line-height: 1.5; background: #ece7df; }
code { padding: 0 0.17em; background: #ece7df; }
var { font-style: italic; font-family: monospace; }

/* Forms */
form {}
input, button, select { vertical-align: middle; }
input[type='button'], input[type='submit'], input[type='reset'], button { cursor: pointer; }
input[type='text'].error { background-color: #f2c6d8; }
input[type='reset'], button[type='reset'] { font-size: 0.8em; }
dd.error { padding-left: 13em; background: url(${h.static_uri('spline', 'icons/exclamation-small-red.png')}) 12em center no-repeat; color: #a02424; }
p.error { padding-left: 16px; background: url(${h.static_uri('spline', 'icons/exclamation-small-red.png')}) left center no-repeat; color: #a02424; }
p + p.error { margin-top: -0.75em; }

/* Tables */
table { border-color: #b4e6b3; }

table tbody + tbody,
table tbody + tfoot { border-top: 1px solid; border-color: inherit; }
table colgroup + colgroup { border-left: 1px solid; border-color: inherit; }

table th, table td { padding: 0.25em; }
table th { font-weight: normal; color: #a02424; vertical-align: middle; }
table tr.subheader-row th { border-bottom: 1px solid #b4e6b3; background: #b4e6b3; color: black; }
table tr.header-row th { padding: 0.33em; vertical-align: bottom; border-bottom: 1px solid #b4e6b3; background: #e6fae5 url(${h.static_uri('local', 'images/layout/th-background-treekun.png')}) bottom left repeat-x; color: black; }
table tr + tr.header-row th { border-top: 2px solid #cc6666; }

table.stretch { width: 100%; }
table.compact td { padding: 0.17em; }

table tr.color1,
table.striped-rows tr:nth-child(2n+1),
table.striped-row-groups tbody:nth-child(2n+1) { background: white; }
table tr.color2,
table.striped-rows tr:nth-child(2n),
table.striped-row-groups tbody:nth-child(2n) { background: #f0f0f0; }
table tr.color1:hover,
table tr.color2:hover,
table.striped-rows tr:hover,
table.striped-rows tr td.js-hover,
table.striped-row-groups tbody:hover { background: #eae1d5; }

table tr.horizontal-line { height: 0 !important; padding: 0 !important; border-bottom: 1px solid #b4e6b3; }
table td.vertical-line { width: 0 !important; padding: 0 !important; border-right: 1px solid #b4e6b3; }
table td.number-cell { text-align: right; }


/* Lists */
ul.classic-list { margin: 0.5em 0; margin-left: 3em; list-style-type: disc; }
ul.classic-list li { line-height: 1.5; }

ul.inline { overflow: hidden /* new float context */; }
ul.inline li { float: left; }

ul.inline-block { }
ul.inline-block li { display: inline-block; }

ul.inline-commas { display: inline; }
ul.inline-commas > li { display: inline; }
ul.inline-commas > li:after { content: ','; }
ul.inline-commas > li:last-child:after { content: ''; content: none; }  /* '' is a hack for Webkit and Opera, which don't grok none */

ol { margin: 0.5em 0; margin-left: 3em; list-style: lower-roman; }
ol li { line-height: 1.5; }

ol.pager { overflow: hidden; margin: 0.5em; list-style: none; text-align: right; }
ol.pager li { float: left; }
ol.pager li a { display: block; }
ol.pager li a,
ol.pager li.dotdotdot,
ol.pager li.youarehere { padding: 0 0.5em; line-height: 1.5; font-weight: normal; border: 1px solid #e8e8e8; background: #f8f8f8; }
ol.pager li.dotdotdot { color: gray; border-color: transparent; background: none; }
ol.pager li.youarehere { font-weight: bold; background: #e8e8e8; }
ol.pager li a:hover { border: 1px solid #bfd3f1; background: #e6eefa; }

/* Definition lists via floats */
dl { overflow: hidden /* new float context */; margin-bottom: 0.75em; }
dt { float: left; clear: left; width: 11.5em; margin-right: 0.5em; text-align: right; color: #a02424; }
dt:after { content: ':'; }
dd { padding-left: 12em /* float width, so hover highlight includes dt but lines wrap correctly */; }
dd:after { content: 'float clear'; display: block; clear: both; height: 0; visibility: hidden; }
dt, dd { line-height: 1.5; }


/* Markdown default formatting -- Pokédex effects, forum posts, etc. */
/* TODO: Merge this and the pokedex support into spline core, when forum needs it. */
.markdown a { font-weight: normal; }

.markdown table { margin-bottom: 0.75em; line-height: 1.33em; }

.markdown table thead tr th { padding: 0.33em; vertical-align: bottom; border-bottom: 1px solid #b4e6b3; background: #c6d8f2 url(${h.static_uri('local', 'images/layout/th-background-treekun.png')}) bottom left repeat-x; color: black; }

.markdown table tbody tr:nth-child(2n) { background: #f0f0f0; }
.markdown table tbody tr:nth-child(2n):hover { background: #e9dbc9; }
.markdown table tbody tr:nth-child(2n+1):hover { background: #f0e7db; }

.markdown ul { margin: 0.5em 0; margin-left: 3em; list-style-type: disc; }
.markdown ul li { line-height: 1.5; }
