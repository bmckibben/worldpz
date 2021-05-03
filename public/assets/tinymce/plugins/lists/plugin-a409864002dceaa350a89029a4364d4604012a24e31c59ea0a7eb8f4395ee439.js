/**
 * Copyright (c) Tiny Technologies, Inc. All rights reserved.
 * Licensed under the LGPL or a commercial license.
 * For LGPL see License.txt in the project root for license information.
 * For commercial licenses see https://www.tiny.cloud/
 *
 * Version: 5.7.1 (2021-03-17)
 */
!function(){"use strict";var e,n,t,r=tinymce.util.Tools.resolve("tinymce.PluginManager"),a=function(){},y=function(e){return function(){return e}},o=function(n){return function(e){return!n(e)}},i=y(!1),u=y(!0),s=function(){return c},c=(e=function(e){return e.isNone()},{fold:function(e,n){return e()},is:i,isSome:i,isNone:u,getOr:t=function(e){return e},getOrThunk:n=function(e){return e()},getOrDie:function(e){throw new Error(e||"error: getOrDie called on none.")},getOrNull:y(null),getOrUndefined:y(undefined),or:t,orThunk:n,map:s,each:a,bind:s,exists:i,forall:u,filter:s,equals:e,equals_:e,toArray:function(){return[]},toString:y("none()")}),f=function(t){var e=y(t),n=function(){return o},r=function(e){return e(t)},o={fold:function(e,n){return n(t)},is:function(e){return t===e},isSome:u,isNone:i,getOr:e,getOrThunk:e,getOrDie:e,getOrNull:e,getOrUndefined:e,or:n,orThunk:n,map:function(e){return f(e(t))},each:function(e){e(t)},bind:r,exists:r,forall:r,filter:function(e){return e(t)?o:c},toArray:function(){return[t]},toString:function(){return"some("+t+")"},equals:function(e){return e.is(t)},equals_:function(e,n){return e.fold(i,function(e){return n(t,e)})}};return o},d={some:f,none:s,from:function(e){return null===e||e===undefined?c:f(e)}},l=function(r){return function(e){return t=typeof(n=e),(null===n?"null":"object"==t&&(Array.prototype.isPrototypeOf(n)||n.constructor&&"Array"===n.constructor.name)?"array":"object"==t&&(String.prototype.isPrototypeOf(n)||n.constructor&&"String"===n.constructor.name)?"string":t)===r;var n,t}},m=function(n){return function(e){return typeof e===n}},p=l("string"),g=l("array"),v=m("boolean"),h=m("function"),S=m("number"),b=Array.prototype.slice,C=Array.prototype.push,O=function(e,n){for(var t=e.length,r=new Array(t),o=0;o<t;o++){var i=e[o];r[o]=n(i,o)}return r},N=function(e,n){for(var t=0,r=e.length;t<r;t++){n(e[t],t)}},L=function(e,n){for(var t=[],r=0,o=e.length;r<o;r++){var i=e[r];n(i,r)&&t.push(i)}return t},T=function(e,n,t){return N(e,function(e){t=n(t,e)}),t},D=function(e,n,t){for(var r=0,o=e.length;r<o;r++){var i=e[r];if(n(i,r))return d.some(i);if(t(i,r))break}return d.none()},k=function(e,n){return D(e,n,i)},w=function(e,n){return function(e){for(var n=[],t=0,r=e.length;t<r;++t){if(!g(e[t]))throw new Error("Arr.flatten item "+t+" was not an array, input: "+e);C.apply(n,e[t])}return n}(O(e,n))},x=function(e){var n=b.call(e,0);return n.reverse(),n},A=function(e,n){return 0<=n&&n<e.length?d.some(e[n]):d.none()},E=function(e){return A(e,0)},P=function(e){return A(e,e.length-1)},B=function(){return(B=Object.assign||function(e){for(var n,t=1,r=arguments.length;t<r;t++)for(var o in n=arguments[t])Object.prototype.hasOwnProperty.call(n,o)&&(e[o]=n[o]);return e}).apply(this,arguments)};var I,R,M,U,_=function(e,n){var t=function(e,n){for(var t=0;t<e.length;t++){var r=e[t];if(r.test(n))return r}return undefined}(e,n);if(!t)return{major:0,minor:0};var r=function(e){return Number(n.replace(t,"$"+e))};return H(r(1),r(2))},F=function(){return H(0,0)},H=function(e,n){return{major:e,minor:n}},$={nu:H,detect:function(e,n){var t=String(n).toLowerCase();return 0===e.length?F():_(e,t)},unknown:F},j=function(e,n){var t=String(n).toLowerCase();return k(e,function(e){return e.search(t)})},q=function(e,t){return j(e,t).map(function(e){var n=$.detect(e.versionRegexes,t);return{current:e.name,version:n}})},K=function(e,t){return j(e,t).map(function(e){var n=$.detect(e.versionRegexes,t);return{current:e.name,version:n}})},V=function(e,n){return-1!==e.indexOf(n)},W=/.*?version\/\ ?([0-9]+)\.([0-9]+).*/,Q=function(n){return function(e){return V(e,n)}},X=[{name:"Edge",versionRegexes:[/.*?edge\/ ?([0-9]+)\.([0-9]+)$/],search:function(e){return V(e,"edge/")&&V(e,"chrome")&&V(e,"safari")&&V(e,"applewebkit")}},{name:"Chrome",versionRegexes:[/.*?chrome\/([0-9]+)\.([0-9]+).*/,W],search:function(e){return V(e,"chrome")&&!V(e,"chromeframe")}},{name:"IE",versionRegexes:[/.*?msie\ ?([0-9]+)\.([0-9]+).*/,/.*?rv:([0-9]+)\.([0-9]+).*/],search:function(e){return V(e,"msie")||V(e,"trident")}},{name:"Opera",versionRegexes:[W,/.*?opera\/([0-9]+)\.([0-9]+).*/],search:Q("opera")},{name:"Firefox",versionRegexes:[/.*?firefox\/\ ?([0-9]+)\.([0-9]+).*/],search:Q("firefox")},{name:"Safari",versionRegexes:[W,/.*?cpu os ([0-9]+)_([0-9]+).*/],search:function(e){return(V(e,"safari")||V(e,"mobile/"))&&V(e,"applewebkit")}}],z=[{name:"Windows",search:Q("win"),versionRegexes:[/.*?windows\ nt\ ?([0-9]+)\.([0-9]+).*/]},{name:"iOS",search:function(e){return V(e,"iphone")||V(e,"ipad")},versionRegexes:[/.*?version\/\ ?([0-9]+)\.([0-9]+).*/,/.*cpu os ([0-9]+)_([0-9]+).*/,/.*cpu iphone os ([0-9]+)_([0-9]+).*/]},{name:"Android",search:Q("android"),versionRegexes:[/.*?android\ ?([0-9]+)\.([0-9]+).*/]},{name:"OSX",search:Q("mac os x"),versionRegexes:[/.*?mac\ os\ x\ ?([0-9]+)_([0-9]+).*/]},{name:"Linux",search:Q("linux"),versionRegexes:[]},{name:"Solaris",search:Q("sunos"),versionRegexes:[]},{name:"FreeBSD",search:Q("freebsd"),versionRegexes:[]},{name:"ChromeOS",search:Q("cros"),versionRegexes:[/.*?chrome\/([0-9]+)\.([0-9]+).*/]}],Y={browsers:y(X),oses:y(z)},G="Firefox",J=function(e){var n=e.current,t=e.version,r=function(e){return function(){return n===e}};return{current:n,version:t,isEdge:r("Edge"),isChrome:r("Chrome"),isIE:r("IE"),isOpera:r("Opera"),isFirefox:r(G),isSafari:r("Safari")}},Z={unknown:function(){return J({current:undefined,version:$.unknown()})},nu:J,edge:y("Edge"),chrome:y("Chrome"),ie:y("IE"),opera:y("Opera"),firefox:y(G),safari:y("Safari")},ee="Windows",ne="Android",te="Solaris",re="FreeBSD",oe="ChromeOS",ie=function(e){var n=e.current,t=e.version,r=function(e){return function(){return n===e}};return{current:n,version:t,isWindows:r(ee),isiOS:r("iOS"),isAndroid:r(ne),isOSX:r("OSX"),isLinux:r("Linux"),isSolaris:r(te),isFreeBSD:r(re),isChromeOS:r(oe)}},ue={unknown:function(){return ie({current:undefined,version:$.unknown()})},nu:ie,windows:y(ee),ios:y("iOS"),android:y(ne),linux:y("Linux"),osx:y("OSX"),solaris:y(te),freebsd:y(re),chromeos:y(oe)},ae=function(e,n){var t,r,o,i,u,a,s,c,f,d,l,m,p=Y.browsers(),g=Y.oses(),v=q(p,e).fold(Z.unknown,Z.nu),h=K(g,e).fold(ue.unknown,ue.nu);return{browser:v,os:h,deviceType:(r=v,o=e,i=n,u=(t=h).isiOS()&&!0===/ipad/i.test(o),a=t.isiOS()&&!u,s=t.isiOS()||t.isAndroid(),c=s||i("(pointer:coarse)"),f=u||!a&&s&&i("(min-device-width:768px)"),d=a||s&&!f,l=r.isSafari()&&t.isiOS()&&!1===/safari/i.test(o),m=!d&&!f&&!l,{isiPad:y(u),isiPhone:y(a),isTablet:y(f),isPhone:y(d),isTouch:y(c),isAndroid:t.isAndroid,isiOS:t.isiOS,isWebView:y(l),isDesktop:y(m)})}},se=function(e){return window.matchMedia(e).matches},ce=(M=!(I=function(){return ae(navigator.userAgent,se)}),function(){for(var e=[],n=0;n<arguments.length;n++)e[n]=arguments[n];return M||(M=!0,R=I.apply(null,e)),R}),fe=function(e){if(null===e||e===undefined)throw new Error("Node cannot be null or undefined");return{dom:e}},de={fromHtml:function(e,n){var t=(n||document).createElement("div");if(t.innerHTML=e,!t.hasChildNodes()||1<t.childNodes.length)throw console.error("HTML does not have a single root node",e),new Error("HTML must have a single root node");return fe(t.childNodes[0])},fromTag:function(e,n){var t=(n||document).createElement(e);return fe(t)},fromText:function(e,n){var t=(n||document).createTextNode(e);return fe(t)},fromDom:fe,fromPoint:function(e,n,t){return d.from(e.dom.elementFromPoint(n,t)).map(fe)}},le=function(e,n){return e.dom===n.dom},me=function(e,n){return t=e.dom,r=n.dom,o=t,i=r,u=Node.DOCUMENT_POSITION_CONTAINED_BY,0!=(o.compareDocumentPosition(i)&u);var t,r,o,i,u},pe=function(e,n){return ce().browser.isIE()?me(e,n):(t=n,r=e.dom,o=t.dom,r!==o&&r.contains(o));var t,r,o},ge=function(e,n){var t=e.dom;if(1!==t.nodeType)return!1;var r=t;if(r.matches!==undefined)return r.matches(n);if(r.msMatchesSelector!==undefined)return r.msMatchesSelector(n);if(r.webkitMatchesSelector!==undefined)return r.webkitMatchesSelector(n);if(r.mozMatchesSelector!==undefined)return r.mozMatchesSelector(n);throw new Error("Browser lacks native selectors")},ve=tinymce.util.Tools.resolve("tinymce.dom.RangeUtils"),he=tinymce.util.Tools.resolve("tinymce.dom.TreeWalker"),ye=tinymce.util.Tools.resolve("tinymce.util.VK"),Se=Object.keys,be=function(e,n){for(var t=Se(e),r=0,o=t.length;r<o;r++){var i=t[r];n(e[i],i)}},Ce=function(e,n){var t,r,o,i,u={};return t=n,i=u,r=function(e,n){i[n]=e},o=a,be(e,function(e,n){(t(e,n)?r:o)(e,n)}),u},Oe=("undefined"!=typeof window||Function("return this;")(),function(e){return e.dom.nodeName.toLowerCase()}),Ne=(U=1,function(e){return e.dom.nodeType===U}),Le=function(e,n){var t=e.dom;be(n,function(e,n){!function(e,n,t){if(!(p(t)||v(t)||S(t)))throw console.error("Invalid call to Attribute.set. Key ",n,":: Value ",t,":: Element ",e),new Error("Attribute value was not simple");e.setAttribute(n,t+"")}(t,n,e)})},Te=function(e){return T(e.dom.attributes,function(e,n){return e[n.name]=n.value,e},{})},De=function(e){return d.from(e.dom.parentNode).map(de.fromDom)},ke=function(e){return O(e.dom.childNodes,de.fromDom)},we=function(e,n){var t=e.dom.childNodes;return d.from(t[n]).map(de.fromDom)},xe=function(e){return we(e,0)},Ae=function(e){return we(e,e.dom.childNodes.length-1)},Ee=function(n,t){De(n).each(function(e){e.dom.insertBefore(t.dom,n.dom)})},Pe=function(e,n){e.dom.appendChild(n.dom)},Be=function(n,e){N(e,function(e){Pe(n,e)})},Ie=function(e){var n=e.dom;null!==n.parentNode&&n.parentNode.removeChild(n)},Re=function(e){return n=e,t=!0,de.fromDom(n.dom.cloneNode(t));var n,t},Me=function(e,n){var t,r,o,i,u=(t=e,r=n,o=de.fromTag(r),i=Te(t),Le(o,i),o);Ee(e,u);var a=ke(e);return Be(u,a),Ie(e),u},Ue=tinymce.util.Tools.resolve("tinymce.dom.DOMUtils"),_e=tinymce.util.Tools.resolve("tinymce.util.Tools"),Fe=function(n){return function(e){return e&&e.nodeName.toLowerCase()===n}},He=function(n){return function(e){return e&&n.test(e.nodeName)}},$e=function(e){return e&&3===e.nodeType},je=He(/^(OL|UL|DL)$/),qe=He(/^(OL|UL)$/),Ke=Fe("ol"),Ve=He(/^(LI|DT|DD)$/),We=He(/^(DT|DD)$/),Qe=He(/^(TH|TD)$/),Xe=Fe("br"),ze=function(e,n){return n&&!!e.schema.getTextBlockElements()[n.nodeName]},Ye=function(e,n){return e&&e.nodeName in n},Ge=function(e,n,t){var r=e.isEmpty(n);return!(t&&0<e.select("span[data-mce-type=bookmark]",n).length)&&r},Je=function(e,n){return e.isChildOf(n,e.getRoot())},Ze=function(e,n){var t,r,o,i,u=e.dom,a=e.schema.getBlockElements(),s=u.createFragment(),c=!1===(t=e.getParam("forced_root_block","p"))?"":!0===t?"p":t;if(c&&((o=u.create(c)).tagName===c.toUpperCase()&&u.setAttribs(o,e.getParam("forced_root_block_attrs",{})),Ye(n.firstChild,a)||s.appendChild(o)),n)for(;r=n.firstChild;){var f=r.nodeName;i||"SPAN"===f&&"bookmark"===r.getAttribute("data-mce-type")||(i=!0),Ye(r,a)?(s.appendChild(r),o=null):c?(o||(o=u.create(c),s.appendChild(o)),o.appendChild(r)):s.appendChild(r)}return c?i||o.appendChild(u.create("br",{"data-mce-bogus":"1"})):s.appendChild(u.create("br")),s},en=Ue.DOM,nn=function(n,t){ge(t,"dd")?Me(t,"dt"):ge(t,"dt")&&De(t).each(function(e){return function(e,n,t){var r=en.select('span[data-mce-type="bookmark"]',n),o=Ze(e,t),i=en.createRng();i.setStartAfter(t),i.setEndAfter(n);for(var u,a=i.extractContents(),s=a.firstChild;s;s=s.firstChild)if("LI"===s.nodeName&&e.dom.isEmpty(s)){en.remove(s);break}e.dom.isEmpty(a)||en.insertAfter(a,n),en.insertAfter(o,n),Ge(e.dom,t.parentNode)&&(u=t.parentNode,_e.each(r,function(e){u.parentNode.insertBefore(e,t.parentNode)}),en.remove(u)),en.remove(t),Ge(e.dom,n)&&en.remove(n)}(n,e.dom,t.dom)})},tn=function(e){ge(e,"dt")&&Me(e,"dd")},rn=function(e,n){if($e(e))return{container:e,offset:n};var t=ve.getNode(e,n);return $e(t)?{container:t,offset:n>=e.childNodes.length?t.data.length:0}:t.previousSibling&&$e(t.previousSibling)?{container:t.previousSibling,offset:t.previousSibling.data.length}:t.nextSibling&&$e(t.nextSibling)?{container:t.nextSibling,offset:0}:{container:e,offset:n}},on=function(e){var n=e.cloneRange(),t=rn(e.startContainer,e.startOffset);n.setStart(t.container,t.offset);var r=rn(e.endContainer,e.endOffset);return n.setEnd(r.container,r.offset),n},un=tinymce.util.Tools.resolve("tinymce.dom.DomQuery"),an=function(e,n){var t=n||e.selection.getStart(!0);return e.dom.getParent(t,"OL,UL,DL",fn(e,t))},sn=function(e){var n,t,r,o=an(e),i=e.selection.getSelectedBlocks();return r=i,(t=o)&&1===r.length&&r[0]===t?(n=o,_e.grep(n.querySelectorAll("ol,ul,dl"),function(e){return je(e)})):_e.grep(i,function(e){return je(e)&&o!==e})},cn=function(e){var t,n,r,o=e.selection.getSelectedBlocks();return _e.grep((t=e,n=o,r=_e.map(n,function(e){var n=t.dom.getParent(e,"li,dd,dt",fn(t,e));return n||e}),un.unique(r)),function(e){return Ve(e)})},fn=function(e,n){var t=e.dom.getParents(n,"TD,TH");return 0<t.length?t[0]:e.getBody()},dn=function(e,n){var t=e.dom.getParents(n,"ol,ul",fn(e,n));return P(t)},ln=function(e){var n,t,r,o=(t=dn(n=e,n.selection.getStart()),r=L(n.selection.getSelectedBlocks(),qe),t.toArray().concat(r));return mn(e,o)},mn=function(n,e){var t=O(e,function(e){return dn(n,e).getOr(e)});return un.unique(t)},pn=function(e,n,t){return e.isSome()&&n.isSome()?d.some(t(e.getOrDie(),n.getOrDie())):d.none()},gn=function(e,n,t){return e.fire("ListMutation",{action:n,element:t})},vn=function(e,n,t){if(!p(t))throw console.error("Invalid call to CSS.set. Property ",n,":: Value ",t,":: Element ",e),new Error("CSS value must be a string: "+t);var r;(r=e).style!==undefined&&h(r.style.getPropertyValue)&&e.style.setProperty(n,t)},hn=function(e,n){Pe(e.item,n.list)},yn=function(e,n,t){for(var r,o,i,u=[],a=0;a<t;a++)u.push((r=e,o=n.listType,i={list:de.fromTag(o,r),item:de.fromTag("li",r)},Pe(i.list,i.item),i));return u},Sn=function(e,n){for(var t,r,o,i,u=0;u<e.length-1;u++)t=e[u].item,r="list-style-type",o="none",i=t.dom,vn(i,r,o);P(e).each(function(e){Le(e.list,n.listAttributes),Le(e.item,n.itemAttributes),Be(e.item,n.content)})},bn=function(f,e,d){var n=e.slice(0,d.depth);return P(n).each(function(e){var n,t,r,o,i,u,a,s,c=(n=f,t=d.itemAttributes,r=d.content,o=de.fromTag("li",n),Le(o,t),Be(o,r),o);u=c,Pe((i=e).list,u),i.item=u,s=d,Oe((a=e).list)!==s.listType&&(a.list=Me(a.list,s.listType)),Le(a.list,s.listAttributes)}),n},Cn=function(e,n,t){var r,o=yn(e,t,t.depth-n.length);return function(e){for(var n=1;n<e.length;n++)hn(e[n-1],e[n])}(o),Sn(o,t),r=o,pn(P(n),E(r),hn),n.concat(o)},On=function(e){return ge(e,"OL,UL")},Nn=function(e){return xe(e).map(On).getOr(!1)},Ln=function(e){return 0<e.depth},Tn=function(e){return e.isSelected},Dn=function(e){var n=ke(e),t=Ae(e).map(On).getOr(!1)?n.slice(0,-1):n;return O(t,Re)},kn=function(a){return N(a,function(r,e){var n,t,o,i,u;o=(n=a)[t=e].depth,i=function(e){return e.depth===o&&!e.dirty},u=function(e){return e.depth<o},D(x(n.slice(0,t)),i,u).orThunk(function(){return D(n.slice(t+1),i,u)}).fold(function(){var e;r.dirty&&((e=r).listAttributes=Ce(e.listAttributes,function(e,n){return"start"!==n}))},function(e){return t=e,(n=r).listType=t.listType,void(n.listAttributes=B({},t.listAttributes));var n,t})}),a},wn=function(i,u,a,s){return xe(s).filter(On).fold(function(){u.each(function(e){le(e.start,s)&&a.set(!0)});var n,t,r,e=(n=s,t=i,r=a.get(),De(n).filter(Ne).map(function(e){return{depth:t,dirty:!1,isSelected:r,content:Dn(n),itemAttributes:Te(n),listAttributes:Te(e),listType:Oe(e)}}));u.each(function(e){le(e.end,s)&&a.set(!1)});var o=Ae(s).filter(On).map(function(e){return xn(i,u,a,e)}).getOr([]);return e.toArray().concat(o)},function(e){return xn(i,u,a,e)})},xn=function(n,t,r,e){return w(ke(e),function(e){return(On(e)?xn:wn)(n+1,t,r,e)})},An=function(e,n){var t,r=(t=!1,{get:function(){return t},set:function(e){t=e}});return O(e,function(e){return{sourceList:e,entries:xn(0,n,r,e)}})},En=function(i,e){var n=kn(e);return O(n,function(e){var n,t,r,o=(n=e.content,r=(t||document).createDocumentFragment(),N(n,function(e){r.appendChild(e.dom)}),de.fromDom(r));return de.fromDom(Ze(i,o.dom))})},Pn=function(e,n){var t,r,o=kn(n);return t=e.contentDocument,r=T(o,function(e,n){return(n.depth>e.length?Cn:bn)(t,e,n)},[]),E(r).map(function(e){return e.list}).toArray()},Bn=function(a,e,s){var n,t=An(e,(n=O(cn(a),de.fromDom),pn(k(n,o(Nn)),k(x(n),o(Nn)),function(e,n){return{start:e,end:n}})));N(t,function(e){var n,t;n=e.entries,t=s,N(L(n,Tn),function(e){return function(e,n){switch(e){case"Indent":n.depth++;break;case"Outdent":n.depth--;break;case"Flatten":n.depth=0}n.dirty=!0}(t,e),0});var r,o,i,u=(r=a,o=e.entries,w(function(e,n){if(0===e.length)return[];for(var t=n(e[0]),r=[],o=[],i=0,u=e.length;i<u;i++){var a=e[i],s=n(a);s!==t&&(r.push(o),o=[]),t=s,o.push(a)}return 0!==o.length&&r.push(o),r}(o,Ln),function(e){return(E(e).map(Ln).getOr(!1)?Pn:En)(r,e)}));N(u,function(e){gn(a,"Indent"===s?"IndentList":"OutdentList",e.dom)}),i=e.sourceList,N(u,function(e){Ee(i,e)}),Ie(e.sourceList)})},In=function(e,n){var t,r,o=O(ln(e),de.fromDom),i=O(L(cn(e),We),de.fromDom),u=!1;return(o.length||i.length)&&(t=e.selection.getBookmark(),Bn(e,o,n),r=e,N(i,"Indent"===n?tn:function(e){return nn(r,e),0}),e.selection.moveToBookmark(t),e.selection.setRng(on(e.selection.getRng())),e.nodeChanged(),u=!0),u},Rn=function(e){return In(e,"Indent")},Mn=function(e){return In(e,"Outdent")},Un=function(e){return In(e,"Flatten")},_n=tinymce.util.Tools.resolve("tinymce.dom.BookmarkManager"),Fn=Ue.DOM,Hn=function(o){var i={},e=function(e){var n,t=o[e?"startContainer":"endContainer"],r=o[e?"startOffset":"endOffset"];1===t.nodeType&&(n=Fn.create("span",{"data-mce-type":"bookmark"}),t.hasChildNodes()?(r=Math.min(r,t.childNodes.length-1),e?t.insertBefore(n,t.childNodes[r]):Fn.insertAfter(n,t.childNodes[r])):t.appendChild(n),t=n,r=0),i[e?"startContainer":"endContainer"]=t,i[e?"startOffset":"endOffset"]=r};return e(!0),o.collapsed||e(),i},$n=function(o){var e=function(e){var n,t=n=o[e?"startContainer":"endContainer"],r=o[e?"startOffset":"endOffset"];t&&(1===t.nodeType&&(r=function(e){for(var n=e.parentNode.firstChild,t=0;n;){if(n===e)return t;1===n.nodeType&&"bookmark"===n.getAttribute("data-mce-type")||t++,n=n.nextSibling}return-1}(t),t=t.parentNode,Fn.remove(n),!t.hasChildNodes()&&Fn.isBlock(t)&&t.appendChild(Fn.create("br"))),o[e?"startContainer":"endContainer"]=t,o[e?"startOffset":"endOffset"]=r)};e(!0),e();var n=Fn.createRng();return n.setStart(o.startContainer,o.startOffset),o.endContainer&&n.setEnd(o.endContainer,o.endOffset),on(n)},jn=function(e){switch(e){case"UL":return"ToggleUlList";case"OL":return"ToggleOlList";case"DL":return"ToggleDLList"}},qn=function(e){return/\btox\-/.test(e.className)},Kn=function(e,t,r){var n=function(e){var n=D(e.parents,je,Qe).filter(function(e){return e.nodeName===t&&!qn(e)}).isSome();r(n)},o=e.dom.getParents(e.selection.getNode());return n({parents:o}),e.on("NodeChange",n),function(){return e.off("NodeChange",n)}},Vn=function(t,e){_e.each(e,function(e,n){t.setAttribute(n,e)})},Wn=function(e,n,t){var r,o,i,u,a,s,c;r=e,o=n,u=(i=t)["list-style-type"]?i["list-style-type"]:null,r.setStyle(o,"list-style-type",u),a=e,Vn(s=n,(c=t)["list-attributes"]),_e.each(a.select("li",s),function(e){Vn(e,c["list-item-attributes"])})},Qn=function(e,n,t,r){var o=n[t?"startContainer":"endContainer"],i=n[t?"startOffset":"endOffset"];for(1===o.nodeType&&(o=o.childNodes[Math.min(i,o.childNodes.length-1)]||o),!t&&Xe(o.nextSibling)&&(o=o.nextSibling);o.parentNode!==r;){if(ze(e,o))return o;if(/^(TD|TH)$/.test(o.parentNode.nodeName))return o;o=o.parentNode}return o},Xn=function(d,l,m){void 0===m&&(m={});var e,n,t=d.selection.getRng(),p="LI",r=fn(d,d.selection.getStart(!0)),g=d.dom;"false"!==g.getContentEditable(d.selection.getNode())&&("DL"===(l=l.toUpperCase())&&(p="DT"),e=Hn(t),n=function(t,e,r){for(var o,i=[],u=t.dom,n=Qn(t,e,!0,r),a=Qn(t,e,!1,r),s=[],c=n;c&&(s.push(c),c!==a);c=c.nextSibling);return _e.each(s,function(e){if(ze(t,e))return i.push(e),void(o=null);if(u.isBlock(e)||Xe(e))return Xe(e)&&u.remove(e),void(o=null);var n=e.nextSibling;_n.isBookmarkNode(e)&&(je(n)||ze(t,n)||!n&&e.parentNode===r)?o=null:(o||(o=u.create("p"),e.parentNode.insertBefore(o,e),i.push(o)),o.appendChild(e))}),i}(d,t,r),_e.each(n,function(e){var n,t,r,o,i,u,a,s,c=e.previousSibling,f=e.parentNode;Ve(f)||(c&&je(c)&&c.nodeName===l&&(i=c,u=m,a=g.getStyle(i,"list-style-type"),s=u?u["list-style-type"]:"",a===(s=null===s?"":s))?(n=c,e=g.rename(e,p),c.appendChild(e)):(n=g.create(l),e.parentNode.insertBefore(n,e),n.appendChild(e),e=g.rename(e,p)),t=g,r=e,o=["margin","margin-right","margin-bottom","margin-left","margin-top","padding","padding-right","padding-bottom","padding-left","padding-top"],_e.each(o,function(e){var n;return t.setStyle(r,((n={})[e]="",n))}),Wn(g,n,m),Yn(d.dom,n))}),d.selection.setRng($n(e)))},zn=function(e,n,t){return s=t,(a=n)&&s&&je(a)&&a.nodeName===s.nodeName&&(i=n,u=t,(o=e).getStyle(i,"list-style-type",!0)===o.getStyle(u,"list-style-type",!0))&&(r=t,n.className===r.className);var r,o,i,u,a,s},Yn=function(e,n){var t,r=n.nextSibling;if(zn(e,n,r)){for(;t=r.firstChild;)n.appendChild(t);e.remove(r)}if(r=n.previousSibling,zn(e,n,r)){for(;t=r.lastChild;)n.insertBefore(t,n.firstChild);e.remove(r)}},Gn=function(u,e,n,a,s){var t,r,o=je(e);o&&e.nodeName===a&&!Jn(s)?Un(u):(Xn(u,a,s),t=Hn(u.selection.getRng(!0)),r=o?function(){for(var e=0,n=0,t=arguments.length;n<t;n++)e+=arguments[n].length;for(var r=Array(e),o=0,n=0;n<t;n++)for(var i=arguments[n],u=0,a=i.length;u<a;u++,o++)r[o]=i[u];return r}([e],n):n,_e.each(r,function(e){var n,t,r,o,i;n=u,r=a,o=s,(t=e).nodeName!==r?(i=n.dom.rename(t,r),Wn(n.dom,i,o),gn(n,jn(r),i)):(Wn(n.dom,t,o),gn(n,jn(r),t))}),u.selection.setRng($n(t)))},Jn=function(e){return"list-style-type"in e},Zn=function(e,n,t){var r,o,i,u,a,s,c=an(e),f=sn(e);t=t||{},0<f.length?Gn(e,c,f,n,t):(i=n,u=t,(o=c)!==(r=e).getBody()&&(o?o.nodeName!==i||Jn(u)||qn(o)?(a=Hn(r.selection.getRng(!0)),Wn(r.dom,o,u),s=r.dom.rename(o,i),Yn(r.dom,s),r.selection.setRng($n(a)),Xn(r,i,u),gn(r,jn(i),s)):Un(r):(Xn(r,i,u),gn(r,jn(i),o))))},et=Ue.DOM,nt=function(i,e){_e.each(_e.grep(i.select("ol,ul",e)),function(e){var n,t,r,o;n=i,"LI"===(o=(t=e).parentNode).nodeName&&o.firstChild===t&&((r=o.previousSibling)&&"LI"===r.nodeName?(r.appendChild(t),Ge(n,o)&&et.remove(o)):et.setStyle(o,"listStyleType","none")),je(o)&&(r=o.previousSibling)&&"LI"===r.nodeName&&r.appendChild(t)})},tt=function(e,n,t,r){var o=n.startContainer,i=n.startOffset;if($e(o)&&(t?i<o.data.length:0<i))return o;var u=e.schema.getNonEmptyElements();1===o.nodeType&&(o=ve.getNode(o,i));var a,s,c=new he(o,r);for(t&&(a=e.dom,Xe(s=o)&&a.isBlock(s.nextSibling)&&!Xe(s.previousSibling)&&c.next());o=c[t?"next":"prev2"]();){if("LI"===o.nodeName&&!o.hasChildNodes())return o;if(u[o.nodeName])return o;if($e(o)&&0<o.data.length)return o}},rt=function(e,n){var t=n.childNodes;return 1===t.length&&!je(t[0])&&e.isBlock(t[0])},ot=function(e,n,t){var r,o,i,u=rt(e,t)?t.firstChild:t;if(rt(o=e,i=n)&&o.remove(i.firstChild,!0),!Ge(e,n,!0))for(;r=n.firstChild;)u.appendChild(r)},it=function(n,e,t){var r,o,i,u=e.parentNode;Je(n,e)&&Je(n,t)&&(je(t.lastChild)&&(r=t.lastChild),u===t.lastChild&&Xe(u.previousSibling)&&n.remove(u.previousSibling),(o=t.lastChild)&&Xe(o)&&e.hasChildNodes()&&n.remove(o),Ge(n,t,!0)&&n.$(t).empty(),ot(n,e,t),r&&t.appendChild(r),i=pe(de.fromDom(t),de.fromDom(e))?n.getParents(e,je,t):[],n.remove(e),N(i,function(e){Ge(n,e)&&e!==n.getRoot()&&n.remove(e)}))},ut=function(e,n,t,r){var o,i,u,a,s=e.dom;s.isEmpty(r)?(u=t,a=r,(i=e).dom.$(a).empty(),it(i.dom,u,a),i.selection.setCursorLocation(a,0)):(o=Hn(n),it(s,t,r),e.selection.setRng($n(o)))},at=function(n,t){var e=n.dom,r=n.selection,o=r.getStart(),i=fn(n,o),u=e.getParent(r.getStart(),"LI",i);if(u){var a=u.parentNode;if(a===n.getBody()&&Ge(e,a))return!0;var s=on(r.getRng()),c=e.getParent(tt(n,s,t,i),"LI",i);if(c&&c!==u)return n.undoManager.transact(function(){var e;t?ut(n,s,c,u):(e=u).parentNode.firstChild===e?Mn(n):function(e,n,t,r){var o=Hn(n);it(e.dom,t,r);var i=$n(o);e.selection.setRng(i)}(n,s,u,c)}),!0;if(!c&&!t&&0===s.startOffset&&0===s.endOffset)return n.undoManager.transact(function(){Un(n)}),!0}return!1},st=function(o,i){var u=o.dom,e=o.selection.getStart(),a=fn(o,e),s=u.getParent(e,u.isBlock,a);if(s&&u.isEmpty(s)){var n=on(o.selection.getRng()),c=u.getParent(tt(o,n,i,a),"LI",a);if(c)return o.undoManager.transact(function(){var e,n,t,r;n=s,t=a,r=(e=u).getParent(n.parentNode,e.isBlock,t),e.remove(n),r&&e.isEmpty(r)&&e.remove(r),Yn(u,c.parentNode),o.selection.select(c,!0),o.selection.collapse(i)}),!0}return!1},ct=function(e,n){return e.selection.isCollapsed()?at(i=e,u=n)||st(i,u):(r=(t=e).selection.getStart(),o=fn(t,r),!!(t.dom.getParent(r,"LI,DT,DD",o)||0<cn(t).length)&&(t.undoManager.transact(function(){t.execCommand("Delete"),nt(t.dom,t.getBody())}),!0));var t,r,o,i,u},ft=function(t){var r=t.dom,e=an(t);Ke(e)&&t.windowManager.open({title:"List Properties",body:{type:"panel",items:[{type:"input",name:"start",label:"Start list at number",inputMode:"numeric"}]},initialData:{start:r.getAttrib(e,"start")||"1"},buttons:[{type:"cancel",name:"cancel",text:"Cancel"},{type:"submit",name:"save",text:"Save",primary:!0}],onSubmit:function(e){var n=e.getData();t.undoManager.transact(function(){r.setAttrib(an(t),"start","1"===n.start?"":n.start)}),e.close()}})},dt=function(n,t){return function(){var e=n.dom.getParent(n.selection.getStart(),"UL,OL,DL");return e&&e.nodeName===t}},lt=function(e){var n,t;e.getParam("lists_indent_on_tab",!0)&&(n=e).on("keydown",function(e){e.keyCode!==ye.TAB||ye.metaKeyPressed(e)||n.undoManager.transact(function(){(e.shiftKey?Mn:Rn)(n)&&e.preventDefault()})}),(t=e).on("keydown",function(e){e.keyCode===ye.BACKSPACE?ct(t,!1)&&e.preventDefault():e.keyCode===ye.DELETE&&ct(t,!0)&&e.preventDefault()})};r.add("lists",function(e){var t,n,r,o,i,u;return!1===e.hasPlugin("rtc",!0)&&(lt(e),(t=e).on("BeforeExecCommand",function(e){var n=e.command.toLowerCase();"indent"===n?Rn(t):"outdent"===n&&Mn(t)}),t.addCommand("InsertUnorderedList",function(e,n){Zn(t,"UL",n)}),t.addCommand("InsertOrderedList",function(e,n){Zn(t,"OL",n)}),t.addCommand("InsertDefinitionList",function(e,n){Zn(t,"DL",n)}),t.addCommand("RemoveList",function(){Un(t)}),t.addCommand("mceListProps",function(){ft(t)}),t.addQueryStateHandler("InsertUnorderedList",dt(t,"UL")),t.addQueryStateHandler("InsertOrderedList",dt(t,"OL")),t.addQueryStateHandler("InsertDefinitionList",dt(t,"DL"))),r=function(e){return function(){return n.execCommand(e)}},(n=e).hasPlugin("advlist")||(n.ui.registry.addToggleButton("numlist",{icon:"ordered-list",active:!1,tooltip:"Numbered list",onAction:r("InsertOrderedList"),onSetup:function(e){return Kn(n,"OL",e.setActive)}}),n.ui.registry.addToggleButton("bullist",{icon:"unordered-list",active:!1,tooltip:"Bullet list",onAction:r("InsertUnorderedList"),onSetup:function(e){return Kn(n,"UL",e.setActive)}})),i={text:"List properties...",icon:"ordered-list",onAction:function(){return ft(o)},onSetup:function(n){return Kn(o,"OL",function(e){return n.setDisabled(!e)})}},(o=e).ui.registry.addMenuItem("listprops",i),o.ui.registry.addContextMenu("lists",{update:function(e){var n=an(o,e);return Ke(n)?["listprops"]:[]}}),u=e,{backspaceDelete:function(e){ct(u,e)}}})}();
