/**
 * TinyMCE version 6.2.0 (2022-09-08)
 */
!function(){"use strict";var e=tinymce.util.Tools.resolve("tinymce.PluginManager"),t=tinymce.util.Tools.resolve("tinymce.Env"),o=tinymce.util.Tools.resolve("tinymce.util.Tools");const n=e=>t=>t.options.get(e),i=n("content_style"),s=n("content_css_cors"),c=n("body_class"),r=n("body_id");e.add("preview",(e=>{(e=>{e.addCommand("mcePreview",(()=>{(e=>{const n=(e=>{var n;let l="";const a=e.dom.encode,d=null!==(n=i(e))&&void 0!==n?n:"";l+='<base href="'+a(e.documentBaseURI.getURI())+'">';const m=s(e)?' crossorigin="anonymous"':"";o.each(e.contentCSS,(t=>{l+='<link type="text/css" rel="stylesheet" href="'+a(e.documentBaseURI.toAbsolute(t))+'"'+m+">"})),d&&(l+='<style type="text/css">'+d+"</style>");const y=r(e),u=c(e),v='<script>document.addEventListener && document.addEventListener("click", function(e) {for (var elm = e.target; elm; elm = elm.parentNode) {if (elm.nodeName === "A" && !('+(t.os.isMacOS()||t.os.isiOS()?"e.metaKey":"e.ctrlKey && !e.altKey")+")) {e.preventDefault();}}}, false);<\/script> ",p=e.getBody().dir,w=p?' dir="'+a(p)+'"':"";return"<!DOCTYPE html><html><head>"+l+'</head><body id="'+a(y)+'" class="mce-content-body '+a(u)+'"'+w+">"+e.getContent()+v+"</body></html>"})(e);e.windowManager.open({title:"Preview",size:"large",body:{type:"panel",items:[{name:"preview",type:"iframe",sandboxed:!0,transparent:!1}]},buttons:[{type:"cancel",name:"close",text:"Close",primary:!0}],initialData:{preview:n}}).focus("close")})(e)}))})(e),(e=>{const t=()=>e.execCommand("mcePreview");e.ui.registry.addButton("preview",{icon:"preview",tooltip:"Preview",onAction:t}),e.ui.registry.addMenuItem("preview",{icon:"preview",text:"Preview",onAction:t})})(e)}))}();
