/**
 * Copyright (c) Tiny Technologies, Inc. All rights reserved.
 * Licensed under the LGPL or a commercial license.
 * For LGPL see License.txt in the project root for license information.
 * For commercial licenses see https://www.tiny.cloud/
 *
 * Version: 5.7.1 (2021-03-17)
 */
!function(){"use strict";var e=tinymce.util.Tools.resolve("tinymce.PluginManager"),t=tinymce.util.Tools.resolve("tinymce.dom.RangeUtils"),o=tinymce.util.Tools.resolve("tinymce.util.Tools"),a="a:not([href])",n=function(e){return e.getAttribute("id")||e.getAttribute("name")||""},r=function(e){return(t=e)&&"a"===t.nodeName.toLowerCase()&&!e.getAttribute("href")&&""!==n(e);var t},c=function(e){var n=e.dom;t(n).walk(e.selection.getRng(),function(e){o.each(e,function(e){var t;r(t=e)&&!t.firstChild&&n.remove(e,!1)})})},u=function(e){return e.dom.getParent(e.selection.getStart(),a)},i=function(e,t){var n,o,a,r,i,l=u(e);l?(a=e,r=t,(i=l).removeAttribute("name"),i.id=r,a.addVisual(),a.undoManager.add()):(o=t,(n=e).undoManager.transact(function(){n.getParam("allow_html_in_named_anchor",!1,"boolean")||n.selection.collapse(!0),n.selection.isCollapsed()?n.insertContent(n.dom.createHTML("a",{id:o})):(c(n),n.formatter.remove("namedAnchor",null,null,!0),n.formatter.apply("namedAnchor",{value:o}),n.addVisual())})),e.focus()},l=function(o){var e,t=(e=u(o))?n(e):"";o.windowManager.open({title:"Anchor",size:"normal",body:{type:"panel",items:[{name:"id",type:"input",label:"ID",placeholder:"example"}]},buttons:[{type:"cancel",name:"cancel",text:"Cancel"},{type:"submit",name:"save",text:"Save",primary:!0}],initialData:{id:t},onSubmit:function(e){var t,n;t=o,n=e.getData().id,(/^[A-Za-z][A-Za-z0-9\-:._]*$/.test(n)?(i(t,n),1):(t.windowManager.alert("Id should start with a letter, followed only by letters, numbers, dashes, dots, colons or underscores."),0))&&e.close()}})},d=function(r){return function(e){for(var t,n,o=0;o<e.length;o++){var a=e[o];n=void 0,!(n=t=a)||n.attr("href")||!n.attr("id")&&!n.attr("name")||t.firstChild||a.attr("contenteditable",r)}}};e.add("anchor",function(e){var t,n,o;(t=e).on("PreInit",function(){t.parser.addNodeFilter("a",d("false")),t.serializer.addNodeFilter("a",d(null))}),(n=e).addCommand("mceAnchor",function(){l(n)}),(o=e).ui.registry.addToggleButton("anchor",{icon:"bookmark",tooltip:"Anchor",onAction:function(){return o.execCommand("mceAnchor")},onSetup:function(e){return o.selection.selectorChangedWithUnbind("a:not([href])",e.setActive).unbind}}),o.ui.registry.addMenuItem("anchor",{icon:"bookmark",text:"Anchor...",onAction:function(){return o.execCommand("mceAnchor")}}),e.on("PreInit",function(){e.formatter.register("namedAnchor",{inline:"a",selector:a,remove:"all",split:!0,deep:!0,attributes:{id:"%value"},onmatch:function(e,t,n){return r(e)}})})})}();
