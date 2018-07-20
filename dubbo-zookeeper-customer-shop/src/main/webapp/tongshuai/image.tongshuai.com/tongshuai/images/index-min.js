/*! jQuery v1.8.3 jquery.com | jquery.org/license */
(function(e,t){function _(e){var t=M[e]={};return v.each(e.split(y),function(e,n){t[n]=!0}),t}function H(e,n,r){if(r===t&&e.nodeType===1){var i="data-"+n.replace(P,"-$1").toLowerCase();r=e.getAttribute(i);if(typeof r=="string"){try{r=r==="true"?!0:r==="false"?!1:r==="null"?null:+r+""===r?+r:D.test(r)?v.parseJSON(r):r}catch(s){}v.data(e,n,r)}else r=t}return r}function B(e){var t;for(t in e){if(t==="data"&&v.isEmptyObject(e[t]))continue;if(t!=="toJSON")return!1}return!0}function et(){return!1}function tt(){return!0}function ut(e){return!e||!e.parentNode||e.parentNode.nodeType===11}function at(e,t){do e=e[t];while(e&&e.nodeType!==1);return e}function ft(e,t,n){t=t||0;if(v.isFunction(t))return v.grep(e,function(e,r){var i=!!t.call(e,r,e);return i===n});if(t.nodeType)return v.grep(e,function(e,r){return e===t===n});if(typeof t=="string"){var r=v.grep(e,function(e){return e.nodeType===1});if(it.test(t))return v.filter(t,r,!n);t=v.filter(t,r)}return v.grep(e,function(e,r){return v.inArray(e,t)>=0===n})}function lt(e){var t=ct.split("|"),n=e.createDocumentFragment();if(n.createElement)while(t.length)n.createElement(t.pop());return n}function Lt(e,t){return e.getElementsByTagName(t)[0]||e.appendChild(e.ownerDocument.createElement(t))}function At(e,t){if(t.nodeType!==1||!v.hasData(e))return;var n,r,i,s=v._data(e),o=v._data(t,s),u=s.events;if(u){delete o.handle,o.events={};for(n in u)for(r=0,i=u[n].length;r<i;r++)v.event.add(t,n,u[n][r])}o.data&&(o.data=v.extend({},o.data))}function Ot(e,t){var n;if(t.nodeType!==1)return;t.clearAttributes&&t.clearAttributes(),t.mergeAttributes&&t.mergeAttributes(e),n=t.nodeName.toLowerCase(),n==="object"?(t.parentNode&&(t.outerHTML=e.outerHTML),v.support.html5Clone&&e.innerHTML&&!v.trim(t.innerHTML)&&(t.innerHTML=e.innerHTML)):n==="input"&&Et.test(e.type)?(t.defaultChecked=t.checked=e.checked,t.value!==e.value&&(t.value=e.value)):n==="option"?t.selected=e.defaultSelected:n==="input"||n==="textarea"?t.defaultValue=e.defaultValue:n==="script"&&t.text!==e.text&&(t.text=e.text),t.removeAttribute(v.expando)}function Mt(e){return typeof e.getElementsByTagName!="undefined"?e.getElementsByTagName("*"):typeof e.querySelectorAll!="undefined"?e.querySelectorAll("*"):[]}function _t(e){Et.test(e.type)&&(e.defaultChecked=e.checked)}function Qt(e,t){if(t in e)return t;var n=t.charAt(0).toUpperCase()+t.slice(1),r=t,i=Jt.length;while(i--){t=Jt[i]+n;if(t in e)return t}return r}function Gt(e,t){return e=t||e,v.css(e,"display")==="none"||!v.contains(e.ownerDocument,e)}function Yt(e,t){var n,r,i=[],s=0,o=e.length;for(;s<o;s++){n=e[s];if(!n.style)continue;i[s]=v._data(n,"olddisplay"),t?(!i[s]&&n.style.display==="none"&&(n.style.display=""),n.style.display===""&&Gt(n)&&(i[s]=v._data(n,"olddisplay",nn(n.nodeName)))):(r=Dt(n,"display"),!i[s]&&r!=="none"&&v._data(n,"olddisplay",r))}for(s=0;s<o;s++){n=e[s];if(!n.style)continue;if(!t||n.style.display==="none"||n.style.display==="")n.style.display=t?i[s]||"":"none"}return e}function Zt(e,t,n){var r=Rt.exec(t);return r?Math.max(0,r[1]-(n||0))+(r[2]||"px"):t}function en(e,t,n,r){var i=n===(r?"border":"content")?4:t==="width"?1:0,s=0;for(;i<4;i+=2)n==="margin"&&(s+=v.css(e,n+$t[i],!0)),r?(n==="content"&&(s-=parseFloat(Dt(e,"padding"+$t[i]))||0),n!=="margin"&&(s-=parseFloat(Dt(e,"border"+$t[i]+"Width"))||0)):(s+=parseFloat(Dt(e,"padding"+$t[i]))||0,n!=="padding"&&(s+=parseFloat(Dt(e,"border"+$t[i]+"Width"))||0));return s}function tn(e,t,n){var r=t==="width"?e.offsetWidth:e.offsetHeight,i=!0,s=v.support.boxSizing&&v.css(e,"boxSizing")==="border-box";if(r<=0||r==null){r=Dt(e,t);if(r<0||r==null)r=e.style[t];if(Ut.test(r))return r;i=s&&(v.support.boxSizingReliable||r===e.style[t]),r=parseFloat(r)||0}return r+en(e,t,n||(s?"border":"content"),i)+"px"}function nn(e){if(Wt[e])return Wt[e];var t=v("<"+e+">").appendTo(i.body),n=t.css("display");t.remove();if(n==="none"||n===""){Pt=i.body.appendChild(Pt||v.extend(i.createElement("iframe"),{frameBorder:0,width:0,height:0}));if(!Ht||!Pt.createElement)Ht=(Pt.contentWindow||Pt.contentDocument).document,Ht.write("<!doctype html><html><body>"),Ht.close();t=Ht.body.appendChild(Ht.createElement(e)),n=Dt(t,"display"),i.body.removeChild(Pt)}return Wt[e]=n,n}function fn(e,t,n,r){var i;if(v.isArray(t))v.each(t,function(t,i){n||sn.test(e)?r(e,i):fn(e+"["+(typeof i=="object"?t:"")+"]",i,n,r)});else if(!n&&v.type(t)==="object")for(i in t)fn(e+"["+i+"]",t[i],n,r);else r(e,t)}function Cn(e){return function(t,n){typeof t!="string"&&(n=t,t="*");var r,i,s,o=t.toLowerCase().split(y),u=0,a=o.length;if(v.isFunction(n))for(;u<a;u++)r=o[u],s=/^\+/.test(r),s&&(r=r.substr(1)||"*"),i=e[r]=e[r]||[],i[s?"unshift":"push"](n)}}function kn(e,n,r,i,s,o){s=s||n.dataTypes[0],o=o||{},o[s]=!0;var u,a=e[s],f=0,l=a?a.length:0,c=e===Sn;for(;f<l&&(c||!u);f++)u=a[f](n,r,i),typeof u=="string"&&(!c||o[u]?u=t:(n.dataTypes.unshift(u),u=kn(e,n,r,i,u,o)));return(c||!u)&&!o["*"]&&(u=kn(e,n,r,i,"*",o)),u}function Ln(e,n){var r,i,s=v.ajaxSettings.flatOptions||{};for(r in n)n[r]!==t&&((s[r]?e:i||(i={}))[r]=n[r]);i&&v.extend(!0,e,i)}function An(e,n,r){var i,s,o,u,a=e.contents,f=e.dataTypes,l=e.responseFields;for(s in l)s in r&&(n[l[s]]=r[s]);while(f[0]==="*")f.shift(),i===t&&(i=e.mimeType||n.getResponseHeader("content-type"));if(i)for(s in a)if(a[s]&&a[s].test(i)){f.unshift(s);break}if(f[0]in r)o=f[0];else{for(s in r){if(!f[0]||e.converters[s+" "+f[0]]){o=s;break}u||(u=s)}o=o||u}if(o)return o!==f[0]&&f.unshift(o),r[o]}function On(e,t){var n,r,i,s,o=e.dataTypes.slice(),u=o[0],a={},f=0;e.dataFilter&&(t=e.dataFilter(t,e.dataType));if(o[1])for(n in e.converters)a[n.toLowerCase()]=e.converters[n];for(;i=o[++f];)if(i!=="*"){if(u!=="*"&&u!==i){n=a[u+" "+i]||a["* "+i];if(!n)for(r in a){s=r.split(" ");if(s[1]===i){n=a[u+" "+s[0]]||a["* "+s[0]];if(n){n===!0?n=a[r]:a[r]!==!0&&(i=s[0],o.splice(f--,0,i));break}}}if(n!==!0)if(n&&e["throws"])t=n(t);else try{t=n(t)}catch(l){return{state:"parsererror",error:n?l:"No conversion from "+u+" to "+i}}}u=i}return{state:"success",data:t}}function Fn(){try{return new e.XMLHttpRequest}catch(t){}}function In(){try{return new e.ActiveXObject("Microsoft.XMLHTTP")}catch(t){}}function $n(){return setTimeout(function(){qn=t},0),qn=v.now()}function Jn(e,t){v.each(t,function(t,n){var r=(Vn[t]||[]).concat(Vn["*"]),i=0,s=r.length;for(;i<s;i++)if(r[i].call(e,t,n))return})}function Kn(e,t,n){var r,i=0,s=0,o=Xn.length,u=v.Deferred().always(function(){delete a.elem}),a=function(){var t=qn||$n(),n=Math.max(0,f.startTime+f.duration-t),r=n/f.duration||0,i=1-r,s=0,o=f.tweens.length;for(;s<o;s++)f.tweens[s].run(i);return u.notifyWith(e,[f,i,n]),i<1&&o?n:(u.resolveWith(e,[f]),!1)},f=u.promise({elem:e,props:v.extend({},t),opts:v.extend(!0,{specialEasing:{}},n),originalProperties:t,originalOptions:n,startTime:qn||$n(),duration:n.duration,tweens:[],createTween:function(t,n,r){var i=v.Tween(e,f.opts,t,n,f.opts.specialEasing[t]||f.opts.easing);return f.tweens.push(i),i},stop:function(t){var n=0,r=t?f.tweens.length:0;for(;n<r;n++)f.tweens[n].run(1);return t?u.resolveWith(e,[f,t]):u.rejectWith(e,[f,t]),this}}),l=f.props;Qn(l,f.opts.specialEasing);for(;i<o;i++){r=Xn[i].call(f,e,l,f.opts);if(r)return r}return Jn(f,l),v.isFunction(f.opts.start)&&f.opts.start.call(e,f),v.fx.timer(v.extend(a,{anim:f,queue:f.opts.queue,elem:e})),f.progress(f.opts.progress).done(f.opts.done,f.opts.complete).fail(f.opts.fail).always(f.opts.always)}function Qn(e,t){var n,r,i,s,o;for(n in e){r=v.camelCase(n),i=t[r],s=e[n],v.isArray(s)&&(i=s[1],s=e[n]=s[0]),n!==r&&(e[r]=s,delete e[n]),o=v.cssHooks[r];if(o&&"expand"in o){s=o.expand(s),delete e[r];for(n in s)n in e||(e[n]=s[n],t[n]=i)}else t[r]=i}}function Gn(e,t,n){var r,i,s,o,u,a,f,l,c,h=this,p=e.style,d={},m=[],g=e.nodeType&&Gt(e);n.queue||(l=v._queueHooks(e,"fx"),l.unqueued==null&&(l.unqueued=0,c=l.empty.fire,l.empty.fire=function(){l.unqueued||c()}),l.unqueued++,h.always(function(){h.always(function(){l.unqueued--,v.queue(e,"fx").length||l.empty.fire()})})),e.nodeType===1&&("height"in t||"width"in t)&&(n.overflow=[p.overflow,p.overflowX,p.overflowY],v.css(e,"display")==="inline"&&v.css(e,"float")==="none"&&(!v.support.inlineBlockNeedsLayout||nn(e.nodeName)==="inline"?p.display="inline-block":p.zoom=1)),n.overflow&&(p.overflow="hidden",v.support.shrinkWrapBlocks||h.done(function(){p.overflow=n.overflow[0],p.overflowX=n.overflow[1],p.overflowY=n.overflow[2]}));for(r in t){s=t[r];if(Un.exec(s)){delete t[r],a=a||s==="toggle";if(s===(g?"hide":"show"))continue;m.push(r)}}o=m.length;if(o){u=v._data(e,"fxshow")||v._data(e,"fxshow",{}),"hidden"in u&&(g=u.hidden),a&&(u.hidden=!g),g?v(e).show():h.done(function(){v(e).hide()}),h.done(function(){var t;v.removeData(e,"fxshow",!0);for(t in d)v.style(e,t,d[t])});for(r=0;r<o;r++)i=m[r],f=h.createTween(i,g?u[i]:0),d[i]=u[i]||v.style(e,i),i in u||(u[i]=f.start,g&&(f.end=f.start,f.start=i==="width"||i==="height"?1:0))}}function Yn(e,t,n,r,i){return new Yn.prototype.init(e,t,n,r,i)}function Zn(e,t){var n,r={height:e},i=0;t=t?1:0;for(;i<4;i+=2-t)n=$t[i],r["margin"+n]=r["padding"+n]=e;return t&&(r.opacity=r.width=e),r}function tr(e){return v.isWindow(e)?e:e.nodeType===9?e.defaultView||e.parentWindow:!1}var n,r,i=e.document,s=e.location,o=e.navigator,u=e.jQuery,a=e.$,f=Array.prototype.push,l=Array.prototype.slice,c=Array.prototype.indexOf,h=Object.prototype.toString,p=Object.prototype.hasOwnProperty,d=String.prototype.trim,v=function(e,t){return new v.fn.init(e,t,n)},m=/[\-+]?(?:\d*\.|)\d+(?:[eE][\-+]?\d+|)/.source,g=/\S/,y=/\s+/,b=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,w=/^(?:[^#<]*(<[\w\W]+>)[^>]*$|#([\w\-]*)$)/,E=/^<(\w+)\s*\/?>(?:<\/\1>|)$/,S=/^[\],:{}\s]*$/,x=/(?:^|:|,)(?:\s*\[)+/g,T=/\\(?:["\\\/bfnrt]|u[\da-fA-F]{4})/g,N=/"[^"\\\r\n]*"|true|false|null|-?(?:\d\d*\.|)\d+(?:[eE][\-+]?\d+|)/g,C=/^-ms-/,k=/-([\da-z])/gi,L=function(e,t){return(t+"").toUpperCase()},A=function(){i.addEventListener?(i.removeEventListener("DOMContentLoaded",A,!1),v.ready()):i.readyState==="complete"&&(i.detachEvent("onreadystatechange",A),v.ready())},O={};v.fn=v.prototype={constructor:v,init:function(e,n,r){var s,o,u,a;if(!e)return this;if(e.nodeType)return this.context=this[0]=e,this.length=1,this;if(typeof e=="string"){e.charAt(0)==="<"&&e.charAt(e.length-1)===">"&&e.length>=3?s=[null,e,null]:s=w.exec(e);if(s&&(s[1]||!n)){if(s[1])return n=n instanceof v?n[0]:n,a=n&&n.nodeType?n.ownerDocument||n:i,e=v.parseHTML(s[1],a,!0),E.test(s[1])&&v.isPlainObject(n)&&this.attr.call(e,n,!0),v.merge(this,e);o=i.getElementById(s[2]);if(o&&o.parentNode){if(o.id!==s[2])return r.find(e);this.length=1,this[0]=o}return this.context=i,this.selector=e,this}return!n||n.jquery?(n||r).find(e):this.constructor(n).find(e)}return v.isFunction(e)?r.ready(e):(e.selector!==t&&(this.selector=e.selector,this.context=e.context),v.makeArray(e,this))},selector:"",jquery:"1.8.3",length:0,size:function(){return this.length},toArray:function(){return l.call(this)},get:function(e){return e==null?this.toArray():e<0?this[this.length+e]:this[e]},pushStack:function(e,t,n){var r=v.merge(this.constructor(),e);return r.prevObject=this,r.context=this.context,t==="find"?r.selector=this.selector+(this.selector?" ":"")+n:t&&(r.selector=this.selector+"."+t+"("+n+")"),r},each:function(e,t){return v.each(this,e,t)},ready:function(e){return v.ready.promise().done(e),this},eq:function(e){return e=+e,e===-1?this.slice(e):this.slice(e,e+1)},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},slice:function(){return this.pushStack(l.apply(this,arguments),"slice",l.call(arguments).join(","))},map:function(e){return this.pushStack(v.map(this,function(t,n){return e.call(t,n,t)}))},end:function(){return this.prevObject||this.constructor(null)},push:f,sort:[].sort,splice:[].splice},v.fn.init.prototype=v.fn,v.extend=v.fn.extend=function(){var e,n,r,i,s,o,u=arguments[0]||{},a=1,f=arguments.length,l=!1;typeof u=="boolean"&&(l=u,u=arguments[1]||{},a=2),typeof u!="object"&&!v.isFunction(u)&&(u={}),f===a&&(u=this,--a);for(;a<f;a++)if((e=arguments[a])!=null)for(n in e){r=u[n],i=e[n];if(u===i)continue;l&&i&&(v.isPlainObject(i)||(s=v.isArray(i)))?(s?(s=!1,o=r&&v.isArray(r)?r:[]):o=r&&v.isPlainObject(r)?r:{},u[n]=v.extend(l,o,i)):i!==t&&(u[n]=i)}return u},v.extend({noConflict:function(t){return e.$===v&&(e.$=a),t&&e.jQuery===v&&(e.jQuery=u),v},isReady:!1,readyWait:1,holdReady:function(e){e?v.readyWait++:v.ready(!0)},ready:function(e){if(e===!0?--v.readyWait:v.isReady)return;if(!i.body)return setTimeout(v.ready,1);v.isReady=!0;if(e!==!0&&--v.readyWait>0)return;r.resolveWith(i,[v]),v.fn.trigger&&v(i).trigger("ready").off("ready")},isFunction:function(e){return v.type(e)==="function"},isArray:Array.isArray||function(e){return v.type(e)==="array"},isWindow:function(e){return e!=null&&e==e.window},isNumeric:function(e){return!isNaN(parseFloat(e))&&isFinite(e)},type:function(e){return e==null?String(e):O[h.call(e)]||"object"},isPlainObject:function(e){if(!e||v.type(e)!=="object"||e.nodeType||v.isWindow(e))return!1;try{if(e.constructor&&!p.call(e,"constructor")&&!p.call(e.constructor.prototype,"isPrototypeOf"))return!1}catch(n){return!1}var r;for(r in e);return r===t||p.call(e,r)},isEmptyObject:function(e){var t;for(t in e)return!1;return!0},error:function(e){throw new Error(e)},parseHTML:function(e,t,n){var r;return!e||typeof e!="string"?null:(typeof t=="boolean"&&(n=t,t=0),t=t||i,(r=E.exec(e))?[t.createElement(r[1])]:(r=v.buildFragment([e],t,n?null:[]),v.merge([],(r.cacheable?v.clone(r.fragment):r.fragment).childNodes)))},parseJSON:function(t){if(!t||typeof t!="string")return null;t=v.trim(t);if(e.JSON&&e.JSON.parse)return e.JSON.parse(t);if(S.test(t.replace(T,"@").replace(N,"]").replace(x,"")))return(new Function("return "+t))();v.error("Invalid JSON: "+t)},parseXML:function(n){var r,i;if(!n||typeof n!="string")return null;try{e.DOMParser?(i=new DOMParser,r=i.parseFromString(n,"text/xml")):(r=new ActiveXObject("Microsoft.XMLDOM"),r.async="false",r.loadXML(n))}catch(s){r=t}return(!r||!r.documentElement||r.getElementsByTagName("parsererror").length)&&v.error("Invalid XML: "+n),r},noop:function(){},globalEval:function(t){t&&g.test(t)&&(e.execScript||function(t){e.eval.call(e,t)})(t)},camelCase:function(e){return e.replace(C,"ms-").replace(k,L)},nodeName:function(e,t){return e.nodeName&&e.nodeName.toLowerCase()===t.toLowerCase()},each:function(e,n,r){var i,s=0,o=e.length,u=o===t||v.isFunction(e);if(r){if(u){for(i in e)if(n.apply(e[i],r)===!1)break}else for(;s<o;)if(n.apply(e[s++],r)===!1)break}else if(u){for(i in e)if(n.call(e[i],i,e[i])===!1)break}else for(;s<o;)if(n.call(e[s],s,e[s++])===!1)break;return e},trim:d&&!d.call("\ufeff\u00a0")?function(e){return e==null?"":d.call(e)}:function(e){return e==null?"":(e+"").replace(b,"")},makeArray:function(e,t){var n,r=t||[];return e!=null&&(n=v.type(e),e.length==null||n==="string"||n==="function"||n==="regexp"||v.isWindow(e)?f.call(r,e):v.merge(r,e)),r},inArray:function(e,t,n){var r;if(t){if(c)return c.call(t,e,n);r=t.length,n=n?n<0?Math.max(0,r+n):n:0;for(;n<r;n++)if(n in t&&t[n]===e)return n}return-1},merge:function(e,n){var r=n.length,i=e.length,s=0;if(typeof r=="number")for(;s<r;s++)e[i++]=n[s];else while(n[s]!==t)e[i++]=n[s++];return e.length=i,e},grep:function(e,t,n){var r,i=[],s=0,o=e.length;n=!!n;for(;s<o;s++)r=!!t(e[s],s),n!==r&&i.push(e[s]);return i},map:function(e,n,r){var i,s,o=[],u=0,a=e.length,f=e instanceof v||a!==t&&typeof a=="number"&&(a>0&&e[0]&&e[a-1]||a===0||v.isArray(e));if(f)for(;u<a;u++)i=n(e[u],u,r),i!=null&&(o[o.length]=i);else for(s in e)i=n(e[s],s,r),i!=null&&(o[o.length]=i);return o.concat.apply([],o)},guid:1,proxy:function(e,n){var r,i,s;return typeof n=="string"&&(r=e[n],n=e,e=r),v.isFunction(e)?(i=l.call(arguments,2),s=function(){return e.apply(n,i.concat(l.call(arguments)))},s.guid=e.guid=e.guid||v.guid++,s):t},access:function(e,n,r,i,s,o,u){var a,f=r==null,l=0,c=e.length;if(r&&typeof r=="object"){for(l in r)v.access(e,n,l,r[l],1,o,i);s=1}else if(i!==t){a=u===t&&v.isFunction(i),f&&(a?(a=n,n=function(e,t,n){return a.call(v(e),n)}):(n.call(e,i),n=null));if(n)for(;l<c;l++)n(e[l],r,a?i.call(e[l],l,n(e[l],r)):i,u);s=1}return s?e:f?n.call(e):c?n(e[0],r):o},now:function(){return(new Date).getTime()}}),v.ready.promise=function(t){if(!r){r=v.Deferred();if(i.readyState==="complete")setTimeout(v.ready,1);else if(i.addEventListener)i.addEventListener("DOMContentLoaded",A,!1),e.addEventListener("load",v.ready,!1);else{i.attachEvent("onreadystatechange",A),e.attachEvent("onload",v.ready);var n=!1;try{n=e.frameElement==null&&i.documentElement}catch(s){}n&&n.doScroll&&function o(){if(!v.isReady){try{n.doScroll("left")}catch(e){return setTimeout(o,50)}v.ready()}}()}}return r.promise(t)},v.each("Boolean Number String Function Array Date RegExp Object".split(" "),function(e,t){O["[object "+t+"]"]=t.toLowerCase()}),n=v(i);var M={};v.Callbacks=function(e){e=typeof e=="string"?M[e]||_(e):v.extend({},e);var n,r,i,s,o,u,a=[],f=!e.once&&[],l=function(t){n=e.memory&&t,r=!0,u=s||0,s=0,o=a.length,i=!0;for(;a&&u<o;u++)if(a[u].apply(t[0],t[1])===!1&&e.stopOnFalse){n=!1;break}i=!1,a&&(f?f.length&&l(f.shift()):n?a=[]:c.disable())},c={add:function(){if(a){var t=a.length;(function r(t){v.each(t,function(t,n){var i=v.type(n);i==="function"?(!e.unique||!c.has(n))&&a.push(n):n&&n.length&&i!=="string"&&r(n)})})(arguments),i?o=a.length:n&&(s=t,l(n))}return this},remove:function(){return a&&v.each(arguments,function(e,t){var n;while((n=v.inArray(t,a,n))>-1)a.splice(n,1),i&&(n<=o&&o--,n<=u&&u--)}),this},has:function(e){return v.inArray(e,a)>-1},empty:function(){return a=[],this},disable:function(){return a=f=n=t,this},disabled:function(){return!a},lock:function(){return f=t,n||c.disable(),this},locked:function(){return!f},fireWith:function(e,t){return t=t||[],t=[e,t.slice?t.slice():t],a&&(!r||f)&&(i?f.push(t):l(t)),this},fire:function(){return c.fireWith(this,arguments),this},fired:function(){return!!r}};return c},v.extend({Deferred:function(e){var t=[["resolve","done",v.Callbacks("once memory"),"resolved"],["reject","fail",v.Callbacks("once memory"),"rejected"],["notify","progress",v.Callbacks("memory")]],n="pending",r={state:function(){return n},always:function(){return i.done(arguments).fail(arguments),this},then:function(){var e=arguments;return v.Deferred(function(n){v.each(t,function(t,r){var s=r[0],o=e[t];i[r[1]](v.isFunction(o)?function(){var e=o.apply(this,arguments);e&&v.isFunction(e.promise)?e.promise().done(n.resolve).fail(n.reject).progress(n.notify):n[s+"With"](this===i?n:this,[e])}:n[s])}),e=null}).promise()},promise:function(e){return e!=null?v.extend(e,r):r}},i={};return r.pipe=r.then,v.each(t,function(e,s){var o=s[2],u=s[3];r[s[1]]=o.add,u&&o.add(function(){n=u},t[e^1][2].disable,t[2][2].lock),i[s[0]]=o.fire,i[s[0]+"With"]=o.fireWith}),r.promise(i),e&&e.call(i,i),i},when:function(e){var t=0,n=l.call(arguments),r=n.length,i=r!==1||e&&v.isFunction(e.promise)?r:0,s=i===1?e:v.Deferred(),o=function(e,t,n){return function(r){t[e]=this,n[e]=arguments.length>1?l.call(arguments):r,n===u?s.notifyWith(t,n):--i||s.resolveWith(t,n)}},u,a,f;if(r>1){u=new Array(r),a=new Array(r),f=new Array(r);for(;t<r;t++)n[t]&&v.isFunction(n[t].promise)?n[t].promise().done(o(t,f,n)).fail(s.reject).progress(o(t,a,u)):--i}return i||s.resolveWith(f,n),s.promise()}}),v.support=function(){var t,n,r,s,o,u,a,f,l,c,h,p=i.createElement("div");p.setAttribute("className","t"),p.innerHTML="  <link/><table></table><a href='http://image.tongshuai.com/a'>a</a><input type='checkbox'/>",n=p.getElementsByTagName("*"),r=p.getElementsByTagName("a")[0];if(!n||!r||!n.length)return{};s=i.createElement("select"),o=s.appendChild(i.createElement("option")),u=p.getElementsByTagName("input")[0],r.style.cssText="top:1px;float:left;opacity:.5",t={leadingWhitespace:p.firstChild.nodeType===3,tbody:!p.getElementsByTagName("tbody").length,htmlSerialize:!!p.getElementsByTagName("link").length,style:/top/.test(r.getAttribute("style")),hrefNormalized:r.getAttribute("href")==="/a",opacity:/^0.5/.test(r.style.opacity),cssFloat:!!r.style.cssFloat,checkOn:u.value==="on",optSelected:o.selected,getSetAttribute:p.className!=="t",enctype:!!i.createElement("form").enctype,html5Clone:i.createElement("nav").cloneNode(!0).outerHTML!=="<:nav></:nav>",boxModel:i.compatMode==="CSS1Compat",submitBubbles:!0,changeBubbles:!0,focusinBubbles:!1,deleteExpando:!0,noCloneEvent:!0,inlineBlockNeedsLayout:!1,shrinkWrapBlocks:!1,reliableMarginRight:!0,boxSizingReliable:!0,pixelPosition:!1},u.checked=!0,t.noCloneChecked=u.cloneNode(!0).checked,s.disabled=!0,t.optDisabled=!o.disabled;try{delete p.test}catch(d){t.deleteExpando=!1}!p.addEventListener&&p.attachEvent&&p.fireEvent&&(p.attachEvent("onclick",h=function(){t.noCloneEvent=!1}),p.cloneNode(!0).fireEvent("onclick"),p.detachEvent("onclick",h)),u=i.createElement("input"),u.value="t",u.setAttribute("type","radio"),t.radioValue=u.value==="t",u.setAttribute("checked","checked"),u.setAttribute("name","t"),p.appendChild(u),a=i.createDocumentFragment(),a.appendChild(p.lastChild),t.checkClone=a.cloneNode(!0).cloneNode(!0).lastChild.checked,t.appendChecked=u.checked,a.removeChild(u),a.appendChild(p);if(p.attachEvent)for(l in{submit:!0,change:!0,focusin:!0})f="on"+l,c=f in p,c||(p.setAttribute(f,"return;"),c=typeof p[f]=="function"),t[l+"Bubbles"]=c;return v(function(){var n,r,s,o,u="padding:0;margin:0;border:0;display:block;overflow:hidden;",a=i.getElementsByTagName("body")[0];if(!a)return;n=i.createElement("div"),n.style.cssText="visibility:hidden;border:0;width:0;height:0;position:static;top:0;margin-top:1px",a.insertBefore(n,a.firstChild),r=i.createElement("div"),n.appendChild(r),r.innerHTML="<table><tr><td></td><td>t</td></tr></table>",s=r.getElementsByTagName("td"),s[0].style.cssText="padding:0;margin:0;border:0;display:none",c=s[0].offsetHeight===0,s[0].style.display="",s[1].style.display="none",t.reliableHiddenOffsets=c&&s[0].offsetHeight===0,r.innerHTML="",r.style.cssText="box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;padding:1px;border:1px;display:block;width:4px;margin-top:1%;position:absolute;top:1%;",t.boxSizing=r.offsetWidth===4,t.doesNotIncludeMarginInBodyOffset=a.offsetTop!==1,e.getComputedStyle&&(t.pixelPosition=(e.getComputedStyle(r,null)||{}).top!=="1%",t.boxSizingReliable=(e.getComputedStyle(r,null)||{width:"4px"}).width==="4px",o=i.createElement("div"),o.style.cssText=r.style.cssText=u,o.style.marginRight=o.style.width="0",r.style.width="1px",r.appendChild(o),t.reliableMarginRight=!parseFloat((e.getComputedStyle(o,null)||{}).marginRight)),typeof r.style.zoom!="undefined"&&(r.innerHTML="",r.style.cssText=u+"width:1px;padding:1px;display:inline;zoom:1",t.inlineBlockNeedsLayout=r.offsetWidth===3,r.style.display="block",r.style.overflow="visible",r.innerHTML="<div></div>",r.firstChild.style.width="5px",t.shrinkWrapBlocks=r.offsetWidth!==3,n.style.zoom=1),a.removeChild(n),n=r=s=o=null}),a.removeChild(p),n=r=s=o=u=a=p=null,t}();var D=/(?:\{[\s\S]*\}|\[[\s\S]*\])$/,P=/([A-Z])/g;v.extend({cache:{},deletedIds:[],uuid:0,expando:"jQuery"+(v.fn.jquery+Math.random()).replace(/\D/g,""),noData:{embed:!0,object:"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000",applet:!0},hasData:function(e){return e=e.nodeType?v.cache[e[v.expando]]:e[v.expando],!!e&&!B(e)},data:function(e,n,r,i){if(!v.acceptData(e))return;var s,o,u=v.expando,a=typeof n=="string",f=e.nodeType,l=f?v.cache:e,c=f?e[u]:e[u]&&u;if((!c||!l[c]||!i&&!l[c].data)&&a&&r===t)return;c||(f?e[u]=c=v.deletedIds.pop()||v.guid++:c=u),l[c]||(l[c]={},f||(l[c].toJSON=v.noop));if(typeof n=="object"||typeof n=="function")i?l[c]=v.extend(l[c],n):l[c].data=v.extend(l[c].data,n);return s=l[c],i||(s.data||(s.data={}),s=s.data),r!==t&&(s[v.camelCase(n)]=r),a?(o=s[n],o==null&&(o=s[v.camelCase(n)])):o=s,o},removeData:function(e,t,n){if(!v.acceptData(e))return;var r,i,s,o=e.nodeType,u=o?v.cache:e,a=o?e[v.expando]:v.expando;if(!u[a])return;if(t){r=n?u[a]:u[a].data;if(r){v.isArray(t)||(t in r?t=[t]:(t=v.camelCase(t),t in r?t=[t]:t=t.split(" ")));for(i=0,s=t.length;i<s;i++)delete r[t[i]];if(!(n?B:v.isEmptyObject)(r))return}}if(!n){delete u[a].data;if(!B(u[a]))return}o?v.cleanData([e],!0):v.support.deleteExpando||u!=u.window?delete u[a]:u[a]=null},_data:function(e,t,n){return v.data(e,t,n,!0)},acceptData:function(e){var t=e.nodeName&&v.noData[e.nodeName.toLowerCase()];return!t||t!==!0&&e.getAttribute("classid")===t}}),v.fn.extend({data:function(e,n){var r,i,s,o,u,a=this[0],f=0,l=null;if(e===t){if(this.length){l=v.data(a);if(a.nodeType===1&&!v._data(a,"parsedAttrs")){s=a.attributes;for(u=s.length;f<u;f++)o=s[f].name,o.indexOf("data-")||(o=v.camelCase(o.substring(5)),H(a,o,l[o]));v._data(a,"parsedAttrs",!0)}}return l}return typeof e=="object"?this.each(function(){v.data(this,e)}):(r=e.split(".",2),r[1]=r[1]?"."+r[1]:"",i=r[1]+"!",v.access(this,function(n){if(n===t)return l=this.triggerHandler("getData"+i,[r[0]]),l===t&&a&&(l=v.data(a,e),l=H(a,e,l)),l===t&&r[1]?this.data(r[0]):l;r[1]=n,this.each(function(){var t=v(this);t.triggerHandler("setData"+i,r),v.data(this,e,n),t.triggerHandler("changeData"+i,r)})},null,n,arguments.length>1,null,!1))},removeData:function(e){return this.each(function(){v.removeData(this,e)})}}),v.extend({queue:function(e,t,n){var r;if(e)return t=(t||"fx")+"queue",r=v._data(e,t),n&&(!r||v.isArray(n)?r=v._data(e,t,v.makeArray(n)):r.push(n)),r||[]},dequeue:function(e,t){t=t||"fx";var n=v.queue(e,t),r=n.length,i=n.shift(),s=v._queueHooks(e,t),o=function(){v.dequeue(e,t)};i==="inprogress"&&(i=n.shift(),r--),i&&(t==="fx"&&n.unshift("inprogress"),delete s.stop,i.call(e,o,s)),!r&&s&&s.empty.fire()},_queueHooks:function(e,t){var n=t+"queueHooks";return v._data(e,n)||v._data(e,n,{empty:v.Callbacks("once memory").add(function(){v.removeData(e,t+"queue",!0),v.removeData(e,n,!0)})})}}),v.fn.extend({queue:function(e,n){var r=2;return typeof e!="string"&&(n=e,e="fx",r--),arguments.length<r?v.queue(this[0],e):n===t?this:this.each(function(){var t=v.queue(this,e,n);v._queueHooks(this,e),e==="fx"&&t[0]!=="inprogress"&&v.dequeue(this,e)})},dequeue:function(e){return this.each(function(){v.dequeue(this,e)})},delay:function(e,t){return e=v.fx?v.fx.speeds[e]||e:e,t=t||"fx",this.queue(t,function(t,n){var r=setTimeout(t,e);n.stop=function(){clearTimeout(r)}})},clearQueue:function(e){return this.queue(e||"fx",[])},promise:function(e,n){var r,i=1,s=v.Deferred(),o=this,u=this.length,a=function(){--i||s.resolveWith(o,[o])};typeof e!="string"&&(n=e,e=t),e=e||"fx";while(u--)r=v._data(o[u],e+"queueHooks"),r&&r.empty&&(i++,r.empty.add(a));return a(),s.promise(n)}});var j,F,I,q=/[\t\r\n]/g,R=/\r/g,U=/^(?:button|input)$/i,z=/^(?:button|input|object|select|textarea)$/i,W=/^a(?:rea|)$/i,X=/^(?:autofocus|autoplay|async|checked|controls|defer|disabled|hidden|loop|multiple|open|readonly|required|scoped|selected)$/i,V=v.support.getSetAttribute;v.fn.extend({attr:function(e,t){return v.access(this,v.attr,e,t,arguments.length>1)},removeAttr:function(e){return this.each(function(){v.removeAttr(this,e)})},prop:function(e,t){return v.access(this,v.prop,e,t,arguments.length>1)},removeProp:function(e){return e=v.propFix[e]||e,this.each(function(){try{this[e]=t,delete this[e]}catch(n){}})},addClass:function(e){var t,n,r,i,s,o,u;if(v.isFunction(e))return this.each(function(t){v(this).addClass(e.call(this,t,this.className))});if(e&&typeof e=="string"){t=e.split(y);for(n=0,r=this.length;n<r;n++){i=this[n];if(i.nodeType===1)if(!i.className&&t.length===1)i.className=e;else{s=" "+i.className+" ";for(o=0,u=t.length;o<u;o++)s.indexOf(" "+t[o]+" ")<0&&(s+=t[o]+" ");i.className=v.trim(s)}}}return this},removeClass:function(e){var n,r,i,s,o,u,a;if(v.isFunction(e))return this.each(function(t){v(this).removeClass(e.call(this,t,this.className))});if(e&&typeof e=="string"||e===t){n=(e||"").split(y);for(u=0,a=this.length;u<a;u++){i=this[u];if(i.nodeType===1&&i.className){r=(" "+i.className+" ").replace(q," ");for(s=0,o=n.length;s<o;s++)while(r.indexOf(" "+n[s]+" ")>=0)r=r.replace(" "+n[s]+" "," ");i.className=e?v.trim(r):""}}}return this},toggleClass:function(e,t){var n=typeof e,r=typeof t=="boolean";return v.isFunction(e)?this.each(function(n){v(this).toggleClass(e.call(this,n,this.className,t),t)}):this.each(function(){if(n==="string"){var i,s=0,o=v(this),u=t,a=e.split(y);while(i=a[s++])u=r?u:!o.hasClass(i),o[u?"addClass":"removeClass"](i)}else if(n==="undefined"||n==="boolean")this.className&&v._data(this,"__className__",this.className),this.className=this.className||e===!1?"":v._data(this,"__className__")||""})},hasClass:function(e){var t=" "+e+" ",n=0,r=this.length;for(;n<r;n++)if(this[n].nodeType===1&&(" "+this[n].className+" ").replace(q," ").indexOf(t)>=0)return!0;return!1},val:function(e){var n,r,i,s=this[0];if(!arguments.length){if(s)return n=v.valHooks[s.type]||v.valHooks[s.nodeName.toLowerCase()],n&&"get"in n&&(r=n.get(s,"value"))!==t?r:(r=s.value,typeof r=="string"?r.replace(R,""):r==null?"":r);return}return i=v.isFunction(e),this.each(function(r){var s,o=v(this);if(this.nodeType!==1)return;i?s=e.call(this,r,o.val()):s=e,s==null?s="":typeof s=="number"?s+="":v.isArray(s)&&(s=v.map(s,function(e){return e==null?"":e+""})),n=v.valHooks[this.type]||v.valHooks[this.nodeName.toLowerCase()];if(!n||!("set"in n)||n.set(this,s,"value")===t)this.value=s})}}),v.extend({valHooks:{option:{get:function(e){var t=e.attributes.value;return!t||t.specified?e.value:e.text}},select:{get:function(e){var t,n,r=e.options,i=e.selectedIndex,s=e.type==="select-one"||i<0,o=s?null:[],u=s?i+1:r.length,a=i<0?u:s?i:0;for(;a<u;a++){n=r[a];if((n.selected||a===i)&&(v.support.optDisabled?!n.disabled:n.getAttribute("disabled")===null)&&(!n.parentNode.disabled||!v.nodeName(n.parentNode,"optgroup"))){t=v(n).val();if(s)return t;o.push(t)}}return o},set:function(e,t){var n=v.makeArray(t);return v(e).find("option").each(function(){this.selected=v.inArray(v(this).val(),n)>=0}),n.length||(e.selectedIndex=-1),n}}},attrFn:{},attr:function(e,n,r,i){var s,o,u,a=e.nodeType;if(!e||a===3||a===8||a===2)return;if(i&&v.isFunction(v.fn[n]))return v(e)[n](r);if(typeof e.getAttribute=="undefined")return v.prop(e,n,r);u=a!==1||!v.isXMLDoc(e),u&&(n=n.toLowerCase(),o=v.attrHooks[n]||(X.test(n)?F:j));if(r!==t){if(r===null){v.removeAttr(e,n);return}return o&&"set"in o&&u&&(s=o.set(e,r,n))!==t?s:(e.setAttribute(n,r+""),r)}return o&&"get"in o&&u&&(s=o.get(e,n))!==null?s:(s=e.getAttribute(n),s===null?t:s)},removeAttr:function(e,t){var n,r,i,s,o=0;if(t&&e.nodeType===1){r=t.split(y);for(;o<r.length;o++)i=r[o],i&&(n=v.propFix[i]||i,s=X.test(i),s||v.attr(e,i,""),e.removeAttribute(V?i:n),s&&n in e&&(e[n]=!1))}},attrHooks:{type:{set:function(e,t){if(U.test(e.nodeName)&&e.parentNode)v.error("type property can't be changed");else if(!v.support.radioValue&&t==="radio"&&v.nodeName(e,"input")){var n=e.value;return e.setAttribute("type",t),n&&(e.value=n),t}}},value:{get:function(e,t){return j&&v.nodeName(e,"button")?j.get(e,t):t in e?e.value:null},set:function(e,t,n){if(j&&v.nodeName(e,"button"))return j.set(e,t,n);e.value=t}}},propFix:{tabindex:"tabIndex",readonly:"readOnly","for":"htmlFor","class":"className",maxlength:"maxLength",cellspacing:"cellSpacing",cellpadding:"cellPadding",rowspan:"rowSpan",colspan:"colSpan",usemap:"useMap",frameborder:"frameBorder",contenteditable:"contentEditable"},prop:function(e,n,r){var i,s,o,u=e.nodeType;if(!e||u===3||u===8||u===2)return;return o=u!==1||!v.isXMLDoc(e),o&&(n=v.propFix[n]||n,s=v.propHooks[n]),r!==t?s&&"set"in s&&(i=s.set(e,r,n))!==t?i:e[n]=r:s&&"get"in s&&(i=s.get(e,n))!==null?i:e[n]},propHooks:{tabIndex:{get:function(e){var n=e.getAttributeNode("tabindex");return n&&n.specified?parseInt(n.value,10):z.test(e.nodeName)||W.test(e.nodeName)&&e.href?0:t}}}}),F={get:function(e,n){var r,i=v.prop(e,n);return i===!0||typeof i!="boolean"&&(r=e.getAttributeNode(n))&&r.nodeValue!==!1?n.toLowerCase():t},set:function(e,t,n){var r;return t===!1?v.removeAttr(e,n):(r=v.propFix[n]||n,r in e&&(e[r]=!0),e.setAttribute(n,n.toLowerCase())),n}},V||(I={name:!0,id:!0,coords:!0},j=v.valHooks.button={get:function(e,n){var r;return r=e.getAttributeNode(n),r&&(I[n]?r.value!=="":r.specified)?r.value:t},set:function(e,t,n){var r=e.getAttributeNode(n);return r||(r=i.createAttribute(n),e.setAttributeNode(r)),r.value=t+""}},v.each(["width","height"],function(e,t){v.attrHooks[t]=v.extend(v.attrHooks[t],{set:function(e,n){if(n==="")return e.setAttribute(t,"auto"),n}})}),v.attrHooks.contenteditable={get:j.get,set:function(e,t,n){t===""&&(t="false"),j.set(e,t,n)}}),v.support.hrefNormalized||v.each(["href","src","width","height"],function(e,n){v.attrHooks[n]=v.extend(v.attrHooks[n],{get:function(e){var r=e.getAttribute(n,2);return r===null?t:r}})}),v.support.style||(v.attrHooks.style={get:function(e){return e.style.cssText.toLowerCase()||t},set:function(e,t){return e.style.cssText=t+""}}),v.support.optSelected||(v.propHooks.selected=v.extend(v.propHooks.selected,{get:function(e){var t=e.parentNode;return t&&(t.selectedIndex,t.parentNode&&t.parentNode.selectedIndex),null}})),v.support.enctype||(v.propFix.enctype="encoding"),v.support.checkOn||v.each(["radio","checkbox"],function(){v.valHooks[this]={get:function(e){return e.getAttribute("value")===null?"on":e.value}}}),v.each(["radio","checkbox"],function(){v.valHooks[this]=v.extend(v.valHooks[this],{set:function(e,t){if(v.isArray(t))return e.checked=v.inArray(v(e).val(),t)>=0}})});var $=/^(?:textarea|input|select)$/i,J=/^([^\.]*|)(?:\.(.+)|)$/,K=/(?:^|\s)hover(\.\S+|)\b/,Q=/^key/,G=/^(?:mouse|contextmenu)|click/,Y=/^(?:focusinfocus|focusoutblur)$/,Z=function(e){return v.event.special.hover?e:e.replace(K,"mouseenter$1 mouseleave$1")};v.event={add:function(e,n,r,i,s){var o,u,a,f,l,c,h,p,d,m,g;if(e.nodeType===3||e.nodeType===8||!n||!r||!(o=v._data(e)))return;r.handler&&(d=r,r=d.handler,s=d.selector),r.guid||(r.guid=v.guid++),a=o.events,a||(o.events=a={}),u=o.handle,u||(o.handle=u=function(e){return typeof v=="undefined"||!!e&&v.event.triggered===e.type?t:v.event.dispatch.apply(u.elem,arguments)},u.elem=e),n=v.trim(Z(n)).split(" ");for(f=0;f<n.length;f++){l=J.exec(n[f])||[],c=l[1],h=(l[2]||"").split(".").sort(),g=v.event.special[c]||{},c=(s?g.delegateType:g.bindType)||c,g=v.event.special[c]||{},p=v.extend({type:c,origType:l[1],data:i,handler:r,guid:r.guid,selector:s,needsContext:s&&v.expr.match.needsContext.test(s),namespace:h.join(".")},d),m=a[c];if(!m){m=a[c]=[],m.delegateCount=0;if(!g.setup||g.setup.call(e,i,h,u)===!1)e.addEventListener?e.addEventListener(c,u,!1):e.attachEvent&&e.attachEvent("on"+c,u)}g.add&&(g.add.call(e,p),p.handler.guid||(p.handler.guid=r.guid)),s?m.splice(m.delegateCount++,0,p):m.push(p),v.event.global[c]=!0}e=null},global:{},remove:function(e,t,n,r,i){var s,o,u,a,f,l,c,h,p,d,m,g=v.hasData(e)&&v._data(e);if(!g||!(h=g.events))return;t=v.trim(Z(t||"")).split(" ");for(s=0;s<t.length;s++){o=J.exec(t[s])||[],u=a=o[1],f=o[2];if(!u){for(u in h)v.event.remove(e,u+t[s],n,r,!0);continue}p=v.event.special[u]||{},u=(r?p.delegateType:p.bindType)||u,d=h[u]||[],l=d.length,f=f?new RegExp("(^|\\.)"+f.split(".").sort().join("\\.(?:.*\\.|)")+"(\\.|$)"):null;for(c=0;c<d.length;c++)m=d[c],(i||a===m.origType)&&(!n||n.guid===m.guid)&&(!f||f.test(m.namespace))&&(!r||r===m.selector||r==="**"&&m.selector)&&(d.splice(c--,1),m.selector&&d.delegateCount--,p.remove&&p.remove.call(e,m));d.length===0&&l!==d.length&&((!p.teardown||p.teardown.call(e,f,g.handle)===!1)&&v.removeEvent(e,u,g.handle),delete h[u])}v.isEmptyObject(h)&&(delete g.handle,v.removeData(e,"events",!0))},customEvent:{getData:!0,setData:!0,changeData:!0},trigger:function(n,r,s,o){if(!s||s.nodeType!==3&&s.nodeType!==8){var u,a,f,l,c,h,p,d,m,g,y=n.type||n,b=[];if(Y.test(y+v.event.triggered))return;y.indexOf("!")>=0&&(y=y.slice(0,-1),a=!0),y.indexOf(".")>=0&&(b=y.split("."),y=b.shift(),b.sort());if((!s||v.event.customEvent[y])&&!v.event.global[y])return;n=typeof n=="object"?n[v.expando]?n:new v.Event(y,n):new v.Event(y),n.type=y,n.isTrigger=!0,n.exclusive=a,n.namespace=b.join("."),n.namespace_re=n.namespace?new RegExp("(^|\\.)"+b.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,h=y.indexOf(":")<0?"on"+y:"";if(!s){u=v.cache;for(f in u)u[f].events&&u[f].events[y]&&v.event.trigger(n,r,u[f].handle.elem,!0);return}n.result=t,n.target||(n.target=s),r=r!=null?v.makeArray(r):[],r.unshift(n),p=v.event.special[y]||{};if(p.trigger&&p.trigger.apply(s,r)===!1)return;m=[[s,p.bindType||y]];if(!o&&!p.noBubble&&!v.isWindow(s)){g=p.delegateType||y,l=Y.test(g+y)?s:s.parentNode;for(c=s;l;l=l.parentNode)m.push([l,g]),c=l;c===(s.ownerDocument||i)&&m.push([c.defaultView||c.parentWindow||e,g])}for(f=0;f<m.length&&!n.isPropagationStopped();f++)l=m[f][0],n.type=m[f][1],d=(v._data(l,"events")||{})[n.type]&&v._data(l,"handle"),d&&d.apply(l,r),d=h&&l[h],d&&v.acceptData(l)&&d.apply&&d.apply(l,r)===!1&&n.preventDefault();return n.type=y,!o&&!n.isDefaultPrevented()&&(!p._default||p._default.apply(s.ownerDocument,r)===!1)&&(y!=="click"||!v.nodeName(s,"a"))&&v.acceptData(s)&&h&&s[y]&&(y!=="focus"&&y!=="blur"||n.target.offsetWidth!==0)&&!v.isWindow(s)&&(c=s[h],c&&(s[h]=null),v.event.triggered=y,s[y](),v.event.triggered=t,c&&(s[h]=c)),n.result}return},dispatch:function(n){n=v.event.fix(n||e.event);var r,i,s,o,u,a,f,c,h,p,d=(v._data(this,"events")||{})[n.type]||[],m=d.delegateCount,g=l.call(arguments),y=!n.exclusive&&!n.namespace,b=v.event.special[n.type]||{},w=[];g[0]=n,n.delegateTarget=this;if(b.preDispatch&&b.preDispatch.call(this,n)===!1)return;if(m&&(!n.button||n.type!=="click"))for(s=n.target;s!=this;s=s.parentNode||this)if(s.disabled!==!0||n.type!=="click"){u={},f=[];for(r=0;r<m;r++)c=d[r],h=c.selector,u[h]===t&&(u[h]=c.needsContext?v(h,this).index(s)>=0:v.find(h,this,null,[s]).length),u[h]&&f.push(c);f.length&&w.push({elem:s,matches:f})}d.length>m&&w.push({elem:this,matches:d.slice(m)});for(r=0;r<w.length&&!n.isPropagationStopped();r++){a=w[r],n.currentTarget=a.elem;for(i=0;i<a.matches.length&&!n.isImmediatePropagationStopped();i++){c=a.matches[i];if(y||!n.namespace&&!c.namespace||n.namespace_re&&n.namespace_re.test(c.namespace))n.data=c.data,n.handleObj=c,o=((v.event.special[c.origType]||{}).handle||c.handler).apply(a.elem,g),o!==t&&(n.result=o,o===!1&&(n.preventDefault(),n.stopPropagation()))}}return b.postDispatch&&b.postDispatch.call(this,n),n.result},props:"attrChange attrName relatedNode srcElement altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),fixHooks:{},keyHooks:{props:"char charCode key keyCode".split(" "),filter:function(e,t){return e.which==null&&(e.which=t.charCode!=null?t.charCode:t.keyCode),e}},mouseHooks:{props:"button buttons clientX clientY fromElement offsetX offsetY pageX pageY screenX screenY toElement".split(" "),filter:function(e,n){var r,s,o,u=n.button,a=n.fromElement;return e.pageX==null&&n.clientX!=null&&(r=e.target.ownerDocument||i,s=r.documentElement,o=r.body,e.pageX=n.clientX+(s&&s.scrollLeft||o&&o.scrollLeft||0)-(s&&s.clientLeft||o&&o.clientLeft||0),e.pageY=n.clientY+(s&&s.scrollTop||o&&o.scrollTop||0)-(s&&s.clientTop||o&&o.clientTop||0)),!e.relatedTarget&&a&&(e.relatedTarget=a===e.target?n.toElement:a),!e.which&&u!==t&&(e.which=u&1?1:u&2?3:u&4?2:0),e}},fix:function(e){if(e[v.expando])return e;var t,n,r=e,s=v.event.fixHooks[e.type]||{},o=s.props?this.props.concat(s.props):this.props;e=v.Event(r);for(t=o.length;t;)n=o[--t],e[n]=r[n];return e.target||(e.target=r.srcElement||i),e.target.nodeType===3&&(e.target=e.target.parentNode),e.metaKey=!!e.metaKey,s.filter?s.filter(e,r):e},special:{load:{noBubble:!0},focus:{delegateType:"focusin"},blur:{delegateType:"focusout"},beforeunload:{setup:function(e,t,n){v.isWindow(this)&&(this.onbeforeunload=n)},teardown:function(e,t){this.onbeforeunload===t&&(this.onbeforeunload=null)}}},simulate:function(e,t,n,r){var i=v.extend(new v.Event,n,{type:e,isSimulated:!0,originalEvent:{}});r?v.event.trigger(i,null,t):v.event.dispatch.call(t,i),i.isDefaultPrevented()&&n.preventDefault()}},v.event.handle=v.event.dispatch,v.removeEvent=i.removeEventListener?function(e,t,n){e.removeEventListener&&e.removeEventListener(t,n,!1)}:function(e,t,n){var r="on"+t;e.detachEvent&&(typeof e[r]=="undefined"&&(e[r]=null),e.detachEvent(r,n))},v.Event=function(e,t){if(!(this instanceof v.Event))return new v.Event(e,t);e&&e.type?(this.originalEvent=e,this.type=e.type,this.isDefaultPrevented=e.defaultPrevented||e.returnValue===!1||e.getPreventDefault&&e.getPreventDefault()?tt:et):this.type=e,t&&v.extend(this,t),this.timeStamp=e&&e.timeStamp||v.now(),this[v.expando]=!0},v.Event.prototype={preventDefault:function(){this.isDefaultPrevented=tt;var e=this.originalEvent;if(!e)return;e.preventDefault?e.preventDefault():e.returnValue=!1},stopPropagation:function(){this.isPropagationStopped=tt;var e=this.originalEvent;if(!e)return;e.stopPropagation&&e.stopPropagation(),e.cancelBubble=!0},stopImmediatePropagation:function(){this.isImmediatePropagationStopped=tt,this.stopPropagation()},isDefaultPrevented:et,isPropagationStopped:et,isImmediatePropagationStopped:et},v.each({mouseenter:"mouseover",mouseleave:"mouseout"},function(e,t){v.event.special[e]={delegateType:t,bindType:t,handle:function(e){var n,r=this,i=e.relatedTarget,s=e.handleObj,o=s.selector;if(!i||i!==r&&!v.contains(r,i))e.type=s.origType,n=s.handler.apply(this,arguments),e.type=t;return n}}}),v.support.submitBubbles||(v.event.special.submit={setup:function(){if(v.nodeName(this,"form"))return!1;v.event.add(this,"click._submit keypress._submit",function(e){var n=e.target,r=v.nodeName(n,"input")||v.nodeName(n,"button")?n.form:t;r&&!v._data(r,"_submit_attached")&&(v.event.add(r,"submit._submit",function(e){e._submit_bubble=!0}),v._data(r,"_submit_attached",!0))})},postDispatch:function(e){e._submit_bubble&&(delete e._submit_bubble,this.parentNode&&!e.isTrigger&&v.event.simulate("submit",this.parentNode,e,!0))},teardown:function(){if(v.nodeName(this,"form"))return!1;v.event.remove(this,"._submit")}}),v.support.changeBubbles||(v.event.special.change={setup:function(){if($.test(this.nodeName)){if(this.type==="checkbox"||this.type==="radio")v.event.add(this,"propertychange._change",function(e){e.originalEvent.propertyName==="checked"&&(this._just_changed=!0)}),v.event.add(this,"click._change",function(e){this._just_changed&&!e.isTrigger&&(this._just_changed=!1),v.event.simulate("change",this,e,!0)});return!1}v.event.add(this,"beforeactivate._change",function(e){var t=e.target;$.test(t.nodeName)&&!v._data(t,"_change_attached")&&(v.event.add(t,"change._change",function(e){this.parentNode&&!e.isSimulated&&!e.isTrigger&&v.event.simulate("change",this.parentNode,e,!0)}),v._data(t,"_change_attached",!0))})},handle:function(e){var t=e.target;if(this!==t||e.isSimulated||e.isTrigger||t.type!=="radio"&&t.type!=="checkbox")return e.handleObj.handler.apply(this,arguments)},teardown:function(){return v.event.remove(this,"._change"),!$.test(this.nodeName)}}),v.support.focusinBubbles||v.each({focus:"focusin",blur:"focusout"},function(e,t){var n=0,r=function(e){v.event.simulate(t,e.target,v.event.fix(e),!0)};v.event.special[t]={setup:function(){n++===0&&i.addEventListener(e,r,!0)},teardown:function(){--n===0&&i.removeEventListener(e,r,!0)}}}),v.fn.extend({on:function(e,n,r,i,s){var o,u;if(typeof e=="object"){typeof n!="string"&&(r=r||n,n=t);for(u in e)this.on(u,n,r,e[u],s);return this}r==null&&i==null?(i=n,r=n=t):i==null&&(typeof n=="string"?(i=r,r=t):(i=r,r=n,n=t));if(i===!1)i=et;else if(!i)return this;return s===1&&(o=i,i=function(e){return v().off(e),o.apply(this,arguments)},i.guid=o.guid||(o.guid=v.guid++)),this.each(function(){v.event.add(this,e,i,r,n)})},one:function(e,t,n,r){return this.on(e,t,n,r,1)},off:function(e,n,r){var i,s;if(e&&e.preventDefault&&e.handleObj)return i=e.handleObj,v(e.delegateTarget).off(i.namespace?i.origType+"."+i.namespace:i.origType,i.selector,i.handler),this;if(typeof e=="object"){for(s in e)this.off(s,n,e[s]);return this}if(n===!1||typeof n=="function")r=n,n=t;return r===!1&&(r=et),this.each(function(){v.event.remove(this,e,r,n)})},bind:function(e,t,n){return this.on(e,null,t,n)},unbind:function(e,t){return this.off(e,null,t)},live:function(e,t,n){return v(this.context).on(e,this.selector,t,n),this},die:function(e,t){return v(this.context).off(e,this.selector||"**",t),this},delegate:function(e,t,n,r){return this.on(t,e,n,r)},undelegate:function(e,t,n){return arguments.length===1?this.off(e,"**"):this.off(t,e||"**",n)},trigger:function(e,t){return this.each(function(){v.event.trigger(e,t,this)})},triggerHandler:function(e,t){if(this[0])return v.event.trigger(e,t,this[0],!0)},toggle:function(e){var t=arguments,n=e.guid||v.guid++,r=0,i=function(n){var i=(v._data(this,"lastToggle"+e.guid)||0)%r;return v._data(this,"lastToggle"+e.guid,i+1),n.preventDefault(),t[i].apply(this,arguments)||!1};i.guid=n;while(r<t.length)t[r++].guid=n;return this.click(i)},hover:function(e,t){return this.mouseenter(e).mouseleave(t||e)}}),v.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(" "),function(e,t){v.fn[t]=function(e,n){return n==null&&(n=e,e=null),arguments.length>0?this.on(t,null,e,n):this.trigger(t)},Q.test(t)&&(v.event.fixHooks[t]=v.event.keyHooks),G.test(t)&&(v.event.fixHooks[t]=v.event.mouseHooks)}),function(e,t){function nt(e,t,n,r){n=n||[],t=t||g;var i,s,a,f,l=t.nodeType;if(!e||typeof e!="string")return n;if(l!==1&&l!==9)return[];a=o(t);if(!a&&!r)if(i=R.exec(e))if(f=i[1]){if(l===9){s=t.getElementById(f);if(!s||!s.parentNode)return n;if(s.id===f)return n.push(s),n}else if(t.ownerDocument&&(s=t.ownerDocument.getElementById(f))&&u(t,s)&&s.id===f)return n.push(s),n}else{if(i[2])return S.apply(n,x.call(t.getElementsByTagName(e),0)),n;if((f=i[3])&&Z&&t.getElementsByClassName)return S.apply(n,x.call(t.getElementsByClassName(f),0)),n}return vt(e.replace(j,"$1"),t,n,r,a)}function rt(e){return function(t){var n=t.nodeName.toLowerCase();return n==="input"&&t.type===e}}function it(e){return function(t){var n=t.nodeName.toLowerCase();return(n==="input"||n==="button")&&t.type===e}}function st(e){return N(function(t){return t=+t,N(function(n,r){var i,s=e([],n.length,t),o=s.length;while(o--)n[i=s[o]]&&(n[i]=!(r[i]=n[i]))})})}function ot(e,t,n){if(e===t)return n;var r=e.nextSibling;while(r){if(r===t)return-1;r=r.nextSibling}return 1}function ut(e,t){var n,r,s,o,u,a,f,l=L[d][e+" "];if(l)return t?0:l.slice(0);u=e,a=[],f=i.preFilter;while(u){if(!n||(r=F.exec(u)))r&&(u=u.slice(r[0].length)||u),a.push(s=[]);n=!1;if(r=I.exec(u))s.push(n=new m(r.shift())),u=u.slice(n.length),n.type=r[0].replace(j," ");for(o in i.filter)(r=J[o].exec(u))&&(!f[o]||(r=f[o](r)))&&(s.push(n=new m(r.shift())),u=u.slice(n.length),n.type=o,n.matches=r);if(!n)break}return t?u.length:u?nt.error(e):L(e,a).slice(0)}function at(e,t,r){var i=t.dir,s=r&&t.dir==="parentNode",o=w++;return t.first?function(t,n,r){while(t=t[i])if(s||t.nodeType===1)return e(t,n,r)}:function(t,r,u){if(!u){var a,f=b+" "+o+" ",l=f+n;while(t=t[i])if(s||t.nodeType===1){if((a=t[d])===l)return t.sizset;if(typeof a=="string"&&a.indexOf(f)===0){if(t.sizset)return t}else{t[d]=l;if(e(t,r,u))return t.sizset=!0,t;t.sizset=!1}}}else while(t=t[i])if(s||t.nodeType===1)if(e(t,r,u))return t}}function ft(e){return e.length>1?function(t,n,r){var i=e.length;while(i--)if(!e[i](t,n,r))return!1;return!0}:e[0]}function lt(e,t,n,r,i){var s,o=[],u=0,a=e.length,f=t!=null;for(;u<a;u++)if(s=e[u])if(!n||n(s,r,i))o.push(s),f&&t.push(u);return o}function ct(e,t,n,r,i,s){return r&&!r[d]&&(r=ct(r)),i&&!i[d]&&(i=ct(i,s)),N(function(s,o,u,a){var f,l,c,h=[],p=[],d=o.length,v=s||dt(t||"*",u.nodeType?[u]:u,[]),m=e&&(s||!t)?lt(v,h,e,u,a):v,g=n?i||(s?e:d||r)?[]:o:m;n&&n(m,g,u,a);if(r){f=lt(g,p),r(f,[],u,a),l=f.length;while(l--)if(c=f[l])g[p[l]]=!(m[p[l]]=c)}if(s){if(i||e){if(i){f=[],l=g.length;while(l--)(c=g[l])&&f.push(m[l]=c);i(null,g=[],f,a)}l=g.length;while(l--)(c=g[l])&&(f=i?T.call(s,c):h[l])>-1&&(s[f]=!(o[f]=c))}}else g=lt(g===o?g.splice(d,g.length):g),i?i(null,o,g,a):S.apply(o,g)})}function ht(e){var t,n,r,s=e.length,o=i.relative[e[0].type],u=o||i.relative[" "],a=o?1:0,f=at(function(e){return e===t},u,!0),l=at(function(e){return T.call(t,e)>-1},u,!0),h=[function(e,n,r){return!o&&(r||n!==c)||((t=n).nodeType?f(e,n,r):l(e,n,r))}];for(;a<s;a++)if(n=i.relative[e[a].type])h=[at(ft(h),n)];else{n=i.filter[e[a].type].apply(null,e[a].matches);if(n[d]){r=++a;for(;r<s;r++)if(i.relative[e[r].type])break;return ct(a>1&&ft(h),a>1&&e.slice(0,a-1).join("").replace(j,"$1"),n,a<r&&ht(e.slice(a,r)),r<s&&ht(e=e.slice(r)),r<s&&e.join(""))}h.push(n)}return ft(h)}function pt(e,t){var r=t.length>0,s=e.length>0,o=function(u,a,f,l,h){var p,d,v,m=[],y=0,w="0",x=u&&[],T=h!=null,N=c,C=u||s&&i.find.TAG("*",h&&a.parentNode||a),k=b+=N==null?1:Math.E;T&&(c=a!==g&&a,n=o.el);for(;(p=C[w])!=null;w++){if(s&&p){for(d=0;v=e[d];d++)if(v(p,a,f)){l.push(p);break}T&&(b=k,n=++o.el)}r&&((p=!v&&p)&&y--,u&&x.push(p))}y+=w;if(r&&w!==y){for(d=0;v=t[d];d++)v(x,m,a,f);if(u){if(y>0)while(w--)!x[w]&&!m[w]&&(m[w]=E.call(l));m=lt(m)}S.apply(l,m),T&&!u&&m.length>0&&y+t.length>1&&nt.uniqueSort(l)}return T&&(b=k,c=N),x};return o.el=0,r?N(o):o}function dt(e,t,n){var r=0,i=t.length;for(;r<i;r++)nt(e,t[r],n);return n}function vt(e,t,n,r,s){var o,u,f,l,c,h=ut(e),p=h.length;if(!r&&h.length===1){u=h[0]=h[0].slice(0);if(u.length>2&&(f=u[0]).type==="ID"&&t.nodeType===9&&!s&&i.relative[u[1].type]){t=i.find.ID(f.matches[0].replace($,""),t,s)[0];if(!t)return n;e=e.slice(u.shift().length)}for(o=J.POS.test(e)?-1:u.length-1;o>=0;o--){f=u[o];if(i.relative[l=f.type])break;if(c=i.find[l])if(r=c(f.matches[0].replace($,""),z.test(u[0].type)&&t.parentNode||t,s)){u.splice(o,1),e=r.length&&u.join("");if(!e)return S.apply(n,x.call(r,0)),n;break}}}return a(e,h)(r,t,s,n,z.test(e)),n}function mt(){}var n,r,i,s,o,u,a,f,l,c,h=!0,p="undefined",d=("sizcache"+Math.random()).replace(".",""),m=String,g=e.document,y=g.documentElement,b=0,w=0,E=[].pop,S=[].push,x=[].slice,T=[].indexOf||function(e){var t=0,n=this.length;for(;t<n;t++)if(this[t]===e)return t;return-1},N=function(e,t){return e[d]=t==null||t,e},C=function(){var e={},t=[];return N(function(n,r){return t.push(n)>i.cacheLength&&delete e[t.shift()],e[n+" "]=r},e)},k=C(),L=C(),A=C(),O="[\\x20\\t\\r\\n\\f]",M="(?:\\\\.|[-\\w]|[^\\x00-\\xa0])+",_=M.replace("w","w#"),D="([*^$|!~]?=)",P="\\["+O+"*("+M+")"+O+"*(?:"+D+O+"*(?:(['\"])((?:\\\\.|[^\\\\])*?)\\3|("+_+")|)|)"+O+"*\\]",H=":("+M+")(?:\\((?:(['\"])((?:\\\\.|[^\\\\])*?)\\2|([^()[\\]]*|(?:(?:"+P+")|[^:]|\\\\.)*|.*))\\)|)",B=":(even|odd|eq|gt|lt|nth|first|last)(?:\\("+O+"*((?:-\\d)?\\d*)"+O+"*\\)|)(?=[^-]|$)",j=new RegExp("^"+O+"+|((?:^|[^\\\\])(?:\\\\.)*)"+O+"+$","g"),F=new RegExp("^"+O+"*,"+O+"*"),I=new RegExp("^"+O+"*([\\x20\\t\\r\\n\\f>+~])"+O+"*"),q=new RegExp(H),R=/^(?:#([\w\-]+)|(\w+)|\.([\w\-]+))$/,U=/^:not/,z=/[\x20\t\r\n\f]*[+~]/,W=/:not\($/,X=/h\d/i,V=/input|select|textarea|button/i,$=/\\(?!\\)/g,J={ID:new RegExp("^#("+M+")"),CLASS:new RegExp("^\\.("+M+")"),NAME:new RegExp("^\\[name=['\"]?("+M+")['\"]?\\]"),TAG:new RegExp("^("+M.replace("w","w*")+")"),ATTR:new RegExp("^"+P),PSEUDO:new RegExp("^"+H),POS:new RegExp(B,"i"),CHILD:new RegExp("^:(only|nth|first|last)-child(?:\\("+O+"*(even|odd|(([+-]|)(\\d*)n|)"+O+"*(?:([+-]|)"+O+"*(\\d+)|))"+O+"*\\)|)","i"),needsContext:new RegExp("^"+O+"*[>+~]|"+B,"i")},K=function(e){var t=g.createElement("div");try{return e(t)}catch(n){return!1}finally{t=null}},Q=K(function(e){return e.appendChild(g.createComment("")),!e.getElementsByTagName("*").length}),G=K(function(e){return e.innerHTML="<a href='#'></a>",e.firstChild&&typeof e.firstChild.getAttribute!==p&&e.firstChild.getAttribute("href")==="#"}),Y=K(function(e){e.innerHTML="<select></select>";var t=typeof e.lastChild.getAttribute("multiple");return t!=="boolean"&&t!=="string"}),Z=K(function(e){return e.innerHTML="<div class='hidden e'></div><div class='hidden'></div>",!e.getElementsByClassName||!e.getElementsByClassName("e").length?!1:(e.lastChild.className="e",e.getElementsByClassName("e").length===2)}),et=K(function(e){e.id=d+0,e.innerHTML="<a name='"+d+"'></a><div name='"+d+"'></div>",y.insertBefore(e,y.firstChild);var t=g.getElementsByName&&g.getElementsByName(d).length===2+g.getElementsByName(d+0).length;return r=!g.getElementById(d),y.removeChild(e),t});try{x.call(y.childNodes,0)[0].nodeType}catch(tt){x=function(e){var t,n=[];for(;t=this[e];e++)n.push(t);return n}}nt.matches=function(e,t){return nt(e,null,null,t)},nt.matchesSelector=function(e,t){return nt(t,null,null,[e]).length>0},s=nt.getText=function(e){var t,n="",r=0,i=e.nodeType;if(i){if(i===1||i===9||i===11){if(typeof e.textContent=="string")return e.textContent;for(e=e.firstChild;e;e=e.nextSibling)n+=s(e)}else if(i===3||i===4)return e.nodeValue}else for(;t=e[r];r++)n+=s(t);return n},o=nt.isXML=function(e){var t=e&&(e.ownerDocument||e).documentElement;return t?t.nodeName!=="HTML":!1},u=nt.contains=y.contains?function(e,t){var n=e.nodeType===9?e.documentElement:e,r=t&&t.parentNode;return e===r||!!(r&&r.nodeType===1&&n.contains&&n.contains(r))}:y.compareDocumentPosition?function(e,t){return t&&!!(e.compareDocumentPosition(t)&16)}:function(e,t){while(t=t.parentNode)if(t===e)return!0;return!1},nt.attr=function(e,t){var n,r=o(e);return r||(t=t.toLowerCase()),(n=i.attrHandle[t])?n(e):r||Y?e.getAttribute(t):(n=e.getAttributeNode(t),n?typeof e[t]=="boolean"?e[t]?t:null:n.specified?n.value:null:null)},i=nt.selectors={cacheLength:50,createPseudo:N,match:J,attrHandle:G?{}:{href:function(e){return e.getAttribute("href",2)},type:function(e){return e.getAttribute("type")}},find:{ID:r?function(e,t,n){if(typeof t.getElementById!==p&&!n){var r=t.getElementById(e);return r&&r.parentNode?[r]:[]}}:function(e,n,r){if(typeof n.getElementById!==p&&!r){var i=n.getElementById(e);return i?i.id===e||typeof i.getAttributeNode!==p&&i.getAttributeNode("id").value===e?[i]:t:[]}},TAG:Q?function(e,t){if(typeof t.getElementsByTagName!==p)return t.getElementsByTagName(e)}:function(e,t){var n=t.getElementsByTagName(e);if(e==="*"){var r,i=[],s=0;for(;r=n[s];s++)r.nodeType===1&&i.push(r);return i}return n},NAME:et&&function(e,t){if(typeof t.getElementsByName!==p)return t.getElementsByName(name)},CLASS:Z&&function(e,t,n){if(typeof t.getElementsByClassName!==p&&!n)return t.getElementsByClassName(e)}},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(e){return e[1]=e[1].replace($,""),e[3]=(e[4]||e[5]||"").replace($,""),e[2]==="~="&&(e[3]=" "+e[3]+" "),e.slice(0,4)},CHILD:function(e){return e[1]=e[1].toLowerCase(),e[1]==="nth"?(e[2]||nt.error(e[0]),e[3]=+(e[3]?e[4]+(e[5]||1):2*(e[2]==="even"||e[2]==="odd")),e[4]=+(e[6]+e[7]||e[2]==="odd")):e[2]&&nt.error(e[0]),e},PSEUDO:function(e){var t,n;if(J.CHILD.test(e[0]))return null;if(e[3])e[2]=e[3];else if(t=e[4])q.test(t)&&(n=ut(t,!0))&&(n=t.indexOf(")",t.length-n)-t.length)&&(t=t.slice(0,n),e[0]=e[0].slice(0,n)),e[2]=t;return e.slice(0,3)}},filter:{ID:r?function(e){return e=e.replace($,""),function(t){return t.getAttribute("id")===e}}:function(e){return e=e.replace($,""),function(t){var n=typeof t.getAttributeNode!==p&&t.getAttributeNode("id");return n&&n.value===e}},TAG:function(e){return e==="*"?function(){return!0}:(e=e.replace($,"").toLowerCase(),function(t){return t.nodeName&&t.nodeName.toLowerCase()===e})},CLASS:function(e){var t=k[d][e+" "];return t||(t=new RegExp("(^|"+O+")"+e+"("+O+"|$)"))&&k(e,function(e){return t.test(e.className||typeof e.getAttribute!==p&&e.getAttribute("class")||"")})},ATTR:function(e,t,n){return function(r,i){var s=nt.attr(r,e);return s==null?t==="!=":t?(s+="",t==="="?s===n:t==="!="?s!==n:t==="^="?n&&s.indexOf(n)===0:t==="*="?n&&s.indexOf(n)>-1:t==="$="?n&&s.substr(s.length-n.length)===n:t==="~="?(" "+s+" ").indexOf(n)>-1:t==="|="?s===n||s.substr(0,n.length+1)===n+"-":!1):!0}},CHILD:function(e,t,n,r){return e==="nth"?function(e){var t,i,s=e.parentNode;if(n===1&&r===0)return!0;if(s){i=0;for(t=s.firstChild;t;t=t.nextSibling)if(t.nodeType===1){i++;if(e===t)break}}return i-=r,i===n||i%n===0&&i/n>=0}:function(t){var n=t;switch(e){case"only":case"first":while(n=n.previousSibling)if(n.nodeType===1)return!1;if(e==="first")return!0;n=t;case"last":while(n=n.nextSibling)if(n.nodeType===1)return!1;return!0}}},PSEUDO:function(e,t){var n,r=i.pseudos[e]||i.setFilters[e.toLowerCase()]||nt.error("unsupported pseudo: "+e);return r[d]?r(t):r.length>1?(n=[e,e,"",t],i.setFilters.hasOwnProperty(e.toLowerCase())?N(function(e,n){var i,s=r(e,t),o=s.length;while(o--)i=T.call(e,s[o]),e[i]=!(n[i]=s[o])}):function(e){return r(e,0,n)}):r}},pseudos:{not:N(function(e){var t=[],n=[],r=a(e.replace(j,"$1"));return r[d]?N(function(e,t,n,i){var s,o=r(e,null,i,[]),u=e.length;while(u--)if(s=o[u])e[u]=!(t[u]=s)}):function(e,i,s){return t[0]=e,r(t,null,s,n),!n.pop()}}),has:N(function(e){return function(t){return nt(e,t).length>0}}),contains:N(function(e){return function(t){return(t.textContent||t.innerText||s(t)).indexOf(e)>-1}}),enabled:function(e){return e.disabled===!1},disabled:function(e){return e.disabled===!0},checked:function(e){var t=e.nodeName.toLowerCase();return t==="input"&&!!e.checked||t==="option"&&!!e.selected},selected:function(e){return e.parentNode&&e.parentNode.selectedIndex,e.selected===!0},parent:function(e){return!i.pseudos.empty(e)},empty:function(e){var t;e=e.firstChild;while(e){if(e.nodeName>"@"||(t=e.nodeType)===3||t===4)return!1;e=e.nextSibling}return!0},header:function(e){return X.test(e.nodeName)},text:function(e){var t,n;return e.nodeName.toLowerCase()==="input"&&(t=e.type)==="text"&&((n=e.getAttribute("type"))==null||n.toLowerCase()===t)},radio:rt("radio"),checkbox:rt("checkbox"),file:rt("file"),password:rt("password"),image:rt("image"),submit:it("submit"),reset:it("reset"),button:function(e){var t=e.nodeName.toLowerCase();return t==="input"&&e.type==="button"||t==="button"},input:function(e){return V.test(e.nodeName)},focus:function(e){var t=e.ownerDocument;return e===t.activeElement&&(!t.hasFocus||t.hasFocus())&&!!(e.type||e.href||~e.tabIndex)},active:function(e){return e===e.ownerDocument.activeElement},first:st(function(){return[0]}),last:st(function(e,t){return[t-1]}),eq:st(function(e,t,n){return[n<0?n+t:n]}),even:st(function(e,t){for(var n=0;n<t;n+=2)e.push(n);return e}),odd:st(function(e,t){for(var n=1;n<t;n+=2)e.push(n);return e}),lt:st(function(e,t,n){for(var r=n<0?n+t:n;--r>=0;)e.push(r);return e}),gt:st(function(e,t,n){for(var r=n<0?n+t:n;++r<t;)e.push(r);return e})}},f=y.compareDocumentPosition?function(e,t){return e===t?(l=!0,0):(!e.compareDocumentPosition||!t.compareDocumentPosition?e.compareDocumentPosition:e.compareDocumentPosition(t)&4)?-1:1}:function(e,t){if(e===t)return l=!0,0;if(e.sourceIndex&&t.sourceIndex)return e.sourceIndex-t.sourceIndex;var n,r,i=[],s=[],o=e.parentNode,u=t.parentNode,a=o;if(o===u)return ot(e,t);if(!o)return-1;if(!u)return 1;while(a)i.unshift(a),a=a.parentNode;a=u;while(a)s.unshift(a),a=a.parentNode;n=i.length,r=s.length;for(var f=0;f<n&&f<r;f++)if(i[f]!==s[f])return ot(i[f],s[f]);return f===n?ot(e,s[f],-1):ot(i[f],t,1)},[0,0].sort(f),h=!l,nt.uniqueSort=function(e){var t,n=[],r=1,i=0;l=h,e.sort(f);if(l){for(;t=e[r];r++)t===e[r-1]&&(i=n.push(r));while(i--)e.splice(n[i],1)}return e},nt.error=function(e){throw new Error("Syntax error, unrecognized expression: "+e)},a=nt.compile=function(e,t){var n,r=[],i=[],s=A[d][e+" "];if(!s){t||(t=ut(e)),n=t.length;while(n--)s=ht(t[n]),s[d]?r.push(s):i.push(s);s=A(e,pt(i,r))}return s},g.querySelectorAll&&function(){var e,t=vt,n=/'|\\/g,r=/\=[\x20\t\r\n\f]*([^'"\]]*)[\x20\t\r\n\f]*\]/g,i=[":focus"],s=[":active"],u=y.matchesSelector||y.mozMatchesSelector||y.webkitMatchesSelector||y.oMatchesSelector||y.msMatchesSelector;K(function(e){e.innerHTML="<select><option selected=''></option></select>",e.querySelectorAll("[selected]").length||i.push("\\["+O+"*(?:checked|disabled|ismap|multiple|readonly|selected|value)"),e.querySelectorAll(":checked").length||i.push(":checked")}),K(function(e){e.innerHTML="<p test=''></p>",e.querySelectorAll("[test^='']").length&&i.push("[*^$]="+O+"*(?:\"\"|'')"),e.innerHTML="<input type='hidden'/>",e.querySelectorAll(":enabled").length||i.push(":enabled",":disabled")}),i=new RegExp(i.join("|")),vt=function(e,r,s,o,u){if(!o&&!u&&!i.test(e)){var a,f,l=!0,c=d,h=r,p=r.nodeType===9&&e;if(r.nodeType===1&&r.nodeName.toLowerCase()!=="object"){a=ut(e),(l=r.getAttribute("id"))?c=l.replace(n,"\\$&"):r.setAttribute("id",c),c="[id='"+c+"'] ",f=a.length;while(f--)a[f]=c+a[f].join("");h=z.test(e)&&r.parentNode||r,p=a.join(",")}if(p)try{return S.apply(s,x.call(h.querySelectorAll(p),0)),s}catch(v){}finally{l||r.removeAttribute("id")}}return t(e,r,s,o,u)},u&&(K(function(t){e=u.call(t,"div");try{u.call(t,"[test!='']:sizzle"),s.push("!=",H)}catch(n){}}),s=new RegExp(s.join("|")),nt.matchesSelector=function(t,n){n=n.replace(r,"='$1']");if(!o(t)&&!s.test(n)&&!i.test(n))try{var a=u.call(t,n);if(a||e||t.document&&t.document.nodeType!==11)return a}catch(f){}return nt(n,null,null,[t]).length>0})}(),i.pseudos.nth=i.pseudos.eq,i.filters=mt.prototype=i.pseudos,i.setFilters=new mt,nt.attr=v.attr,v.find=nt,v.expr=nt.selectors,v.expr[":"]=v.expr.pseudos,v.unique=nt.uniqueSort,v.text=nt.getText,v.isXMLDoc=nt.isXML,v.contains=nt.contains}(e);var nt=/Until$/,rt=/^(?:parents|prev(?:Until|All))/,it=/^.[^:#\[\.,]*$/,st=v.expr.match.needsContext,ot={children:!0,contents:!0,next:!0,prev:!0};v.fn.extend({find:function(e){var t,n,r,i,s,o,u=this;if(typeof e!="string")return v(e).filter(function(){for(t=0,n=u.length;t<n;t++)if(v.contains(u[t],this))return!0});o=this.pushStack("","find",e);for(t=0,n=this.length;t<n;t++){r=o.length,v.find(e,this[t],o);if(t>0)for(i=r;i<o.length;i++)for(s=0;s<r;s++)if(o[s]===o[i]){o.splice(i--,1);break}}return o},has:function(e){var t,n=v(e,this),r=n.length;return this.filter(function(){for(t=0;t<r;t++)if(v.contains(this,n[t]))return!0})},not:function(e){return this.pushStack(ft(this,e,!1),"not",e)},filter:function(e){return this.pushStack(ft(this,e,!0),"filter",e)},is:function(e){return!!e&&(typeof e=="string"?st.test(e)?v(e,this.context).index(this[0])>=0:v.filter(e,this).length>0:this.filter(e).length>0)},closest:function(e,t){var n,r=0,i=this.length,s=[],o=st.test(e)||typeof e!="string"?v(e,t||this.context):0;for(;r<i;r++){n=this[r];while(n&&n.ownerDocument&&n!==t&&n.nodeType!==11){if(o?o.index(n)>-1:v.find.matchesSelector(n,e)){s.push(n);break}n=n.parentNode}}return s=s.length>1?v.unique(s):s,this.pushStack(s,"closest",e)},index:function(e){return e?typeof e=="string"?v.inArray(this[0],v(e)):v.inArray(e.jquery?e[0]:e,this):this[0]&&this[0].parentNode?this.prevAll().length:-1},add:function(e,t){var n=typeof e=="string"?v(e,t):v.makeArray(e&&e.nodeType?[e]:e),r=v.merge(this.get(),n);return this.pushStack(ut(n[0])||ut(r[0])?r:v.unique(r))},addBack:function(e){return this.add(e==null?this.prevObject:this.prevObject.filter(e))}}),v.fn.andSelf=v.fn.addBack,v.each({parent:function(e){var t=e.parentNode;return t&&t.nodeType!==11?t:null},parents:function(e){return v.dir(e,"parentNode")},parentsUntil:function(e,t,n){return v.dir(e,"parentNode",n)},next:function(e){return at(e,"nextSibling")},prev:function(e){return at(e,"previousSibling")},nextAll:function(e){return v.dir(e,"nextSibling")},prevAll:function(e){return v.dir(e,"previousSibling")},nextUntil:function(e,t,n){return v.dir(e,"nextSibling",n)},prevUntil:function(e,t,n){return v.dir(e,"previousSibling",n)},siblings:function(e){return v.sibling((e.parentNode||{}).firstChild,e)},children:function(e){return v.sibling(e.firstChild)},contents:function(e){return v.nodeName(e,"iframe")?e.contentDocument||e.contentWindow.document:v.merge([],e.childNodes)}},function(e,t){v.fn[e]=function(n,r){var i=v.map(this,t,n);return nt.test(e)||(r=n),r&&typeof r=="string"&&(i=v.filter(r,i)),i=this.length>1&&!ot[e]?v.unique(i):i,this.length>1&&rt.test(e)&&(i=i.reverse()),this.pushStack(i,e,l.call(arguments).join(","))}}),v.extend({filter:function(e,t,n){return n&&(e=":not("+e+")"),t.length===1?v.find.matchesSelector(t[0],e)?[t[0]]:[]:v.find.matches(e,t)},dir:function(e,n,r){var i=[],s=e[n];while(s&&s.nodeType!==9&&(r===t||s.nodeType!==1||!v(s).is(r)))s.nodeType===1&&i.push(s),s=s[n];return i},sibling:function(e,t){var n=[];for(;e;e=e.nextSibling)e.nodeType===1&&e!==t&&n.push(e);return n}});var ct="abbr|article|aside|audio|bdi|canvas|data|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",ht=/ jQuery\d+="(?:null|\d+)"/g,pt=/^\s+/,dt=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,vt=/<([\w:]+)/,mt=/<tbody/i,gt=/<|&#?\w+;/,yt=/<(?:script|style|link)/i,bt=/<(?:script|object|embed|option|style)/i,wt=new RegExp("<(?:"+ct+")[\\s/>]","i"),Et=/^(?:checkbox|radio)$/,St=/checked\s*(?:[^=]|=\s*.checked.)/i,xt=/\/(java|ecma)script/i,Tt=/^\s*<!(?:\[CDATA\[|\-\-)|[\]\-]{2}>\s*$/g,Nt={option:[1,"<select multiple='multiple'>","</select>"],legend:[1,"<fieldset>","</fieldset>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],col:[2,"<table><tbody></tbody><colgroup>","</colgroup></table>"],area:[1,"<map>","</map>"],_default:[0,"",""]},Ct=lt(i),kt=Ct.appendChild(i.createElement("div"));Nt.optgroup=Nt.option,Nt.tbody=Nt.tfoot=Nt.colgroup=Nt.caption=Nt.thead,Nt.th=Nt.td,v.support.htmlSerialize||(Nt._default=[1,"X<div>","</div>"]),v.fn.extend({text:function(e){return v.access(this,function(e){return e===t?v.text(this):this.empty().append((this[0]&&this[0].ownerDocument||i).createTextNode(e))},null,e,arguments.length)},wrapAll:function(e){if(v.isFunction(e))return this.each(function(t){v(this).wrapAll(e.call(this,t))});if(this[0]){var t=v(e,this[0].ownerDocument).eq(0).clone(!0);this[0].parentNode&&t.insertBefore(this[0]),t.map(function(){var e=this;while(e.firstChild&&e.firstChild.nodeType===1)e=e.firstChild;return e}).append(this)}return this},wrapInner:function(e){return v.isFunction(e)?this.each(function(t){v(this).wrapInner(e.call(this,t))}):this.each(function(){var t=v(this),n=t.contents();n.length?n.wrapAll(e):t.append(e)})},wrap:function(e){var t=v.isFunction(e);return this.each(function(n){v(this).wrapAll(t?e.call(this,n):e)})},unwrap:function(){return this.parent().each(function(){v.nodeName(this,"body")||v(this).replaceWith(this.childNodes)}).end()},append:function(){return this.domManip(arguments,!0,function(e){(this.nodeType===1||this.nodeType===11)&&this.appendChild(e)})},prepend:function(){return this.domManip(arguments,!0,function(e){(this.nodeType===1||this.nodeType===11)&&this.insertBefore(e,this.firstChild)})},before:function(){if(!ut(this[0]))return this.domManip(arguments,!1,function(e){this.parentNode.insertBefore(e,this)});if(arguments.length){var e=v.clean(arguments);return this.pushStack(v.merge(e,this),"before",this.selector)}},after:function(){if(!ut(this[0]))return this.domManip(arguments,!1,function(e){this.parentNode.insertBefore(e,this.nextSibling)});if(arguments.length){var e=v.clean(arguments);return this.pushStack(v.merge(this,e),"after",this.selector)}},remove:function(e,t){var n,r=0;for(;(n=this[r])!=null;r++)if(!e||v.filter(e,[n]).length)!t&&n.nodeType===1&&(v.cleanData(n.getElementsByTagName("*")),v.cleanData([n])),n.parentNode&&n.parentNode.removeChild(n);return this},empty:function(){var e,t=0;for(;(e=this[t])!=null;t++){e.nodeType===1&&v.cleanData(e.getElementsByTagName("*"));while(e.firstChild)e.removeChild(e.firstChild)}return this},clone:function(e,t){return e=e==null?!1:e,t=t==null?e:t,this.map(function(){return v.clone(this,e,t)})},html:function(e){return v.access(this,function(e){var n=this[0]||{},r=0,i=this.length;if(e===t)return n.nodeType===1?n.innerHTML.replace(ht,""):t;if(typeof e=="string"&&!yt.test(e)&&(v.support.htmlSerialize||!wt.test(e))&&(v.support.leadingWhitespace||!pt.test(e))&&!Nt[(vt.exec(e)||["",""])[1].toLowerCase()]){e=e.replace(dt,"<$1></$2>");try{for(;r<i;r++)n=this[r]||{},n.nodeType===1&&(v.cleanData(n.getElementsByTagName("*")),n.innerHTML=e);n=0}catch(s){}}n&&this.empty().append(e)},null,e,arguments.length)},replaceWith:function(e){return ut(this[0])?this.length?this.pushStack(v(v.isFunction(e)?e():e),"replaceWith",e):this:v.isFunction(e)?this.each(function(t){var n=v(this),r=n.html();n.replaceWith(e.call(this,t,r))}):(typeof e!="string"&&(e=v(e).detach()),this.each(function(){var t=this.nextSibling,n=this.parentNode;v(this).remove(),t?v(t).before(e):v(n).append(e)}))},detach:function(e){return this.remove(e,!0)},domManip:function(e,n,r){e=[].concat.apply([],e);var i,s,o,u,a=0,f=e[0],l=[],c=this.length;if(!v.support.checkClone&&c>1&&typeof f=="string"&&St.test(f))return this.each(function(){v(this).domManip(e,n,r)});if(v.isFunction(f))return this.each(function(i){var s=v(this);e[0]=f.call(this,i,n?s.html():t),s.domManip(e,n,r)});if(this[0]){i=v.buildFragment(e,this,l),o=i.fragment,s=o.firstChild,o.childNodes.length===1&&(o=s);if(s){n=n&&v.nodeName(s,"tr");for(u=i.cacheable||c-1;a<c;a++)r.call(n&&v.nodeName(this[a],"table")?Lt(this[a],"tbody"):this[a],a===u?o:v.clone(o,!0,!0))}o=s=null,l.length&&v.each(l,function(e,t){t.src?v.ajax?v.ajax({url:t.src,type:"GET",dataType:"script",async:!1,global:!1,"throws":!0}):v.error("no ajax"):v.globalEval((t.text||t.textContent||t.innerHTML||"").replace(Tt,"")),t.parentNode&&t.parentNode.removeChild(t)})}return this}}),v.buildFragment=function(e,n,r){var s,o,u,a=e[0];return n=n||i,n=!n.nodeType&&n[0]||n,n=n.ownerDocument||n,e.length===1&&typeof a=="string"&&a.length<512&&n===i&&a.charAt(0)==="<"&&!bt.test(a)&&(v.support.checkClone||!St.test(a))&&(v.support.html5Clone||!wt.test(a))&&(o=!0,s=v.fragments[a],u=s!==t),s||(s=n.createDocumentFragment(),v.clean(e,n,s,r),o&&(v.fragments[a]=u&&s)),{fragment:s,cacheable:o}},v.fragments={},v.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(e,t){v.fn[e]=function(n){var r,i=0,s=[],o=v(n),u=o.length,a=this.length===1&&this[0].parentNode;if((a==null||a&&a.nodeType===11&&a.childNodes.length===1)&&u===1)return o[t](this[0]),this;for(;i<u;i++)r=(i>0?this.clone(!0):this).get(),v(o[i])[t](r),s=s.concat(r);return this.pushStack(s,e,o.selector)}}),v.extend({clone:function(e,t,n){var r,i,s,o;v.support.html5Clone||v.isXMLDoc(e)||!wt.test("<"+e.nodeName+">")?o=e.cloneNode(!0):(kt.innerHTML=e.outerHTML,kt.removeChild(o=kt.firstChild));if((!v.support.noCloneEvent||!v.support.noCloneChecked)&&(e.nodeType===1||e.nodeType===11)&&!v.isXMLDoc(e)){Ot(e,o),r=Mt(e),i=Mt(o);for(s=0;r[s];++s)i[s]&&Ot(r[s],i[s])}if(t){At(e,o);if(n){r=Mt(e),i=Mt(o);for(s=0;r[s];++s)At(r[s],i[s])}}return r=i=null,o},clean:function(e,t,n,r){var s,o,u,a,f,l,c,h,p,d,m,g,y=t===i&&Ct,b=[];if(!t||typeof t.createDocumentFragment=="undefined")t=i;for(s=0;(u=e[s])!=null;s++){typeof u=="number"&&(u+="");if(!u)continue;if(typeof u=="string")if(!gt.test(u))u=t.createTextNode(u);else{y=y||lt(t),c=t.createElement("div"),y.appendChild(c),u=u.replace(dt,"<$1></$2>"),a=(vt.exec(u)||["",""])[1].toLowerCase(),f=Nt[a]||Nt._default,l=f[0],c.innerHTML=f[1]+u+f[2];while(l--)c=c.lastChild;if(!v.support.tbody){h=mt.test(u),p=a==="table"&&!h?c.firstChild&&c.firstChild.childNodes:f[1]==="<table>"&&!h?c.childNodes:[];for(o=p.length-1;o>=0;--o)v.nodeName(p[o],"tbody")&&!p[o].childNodes.length&&p[o].parentNode.removeChild(p[o])}!v.support.leadingWhitespace&&pt.test(u)&&c.insertBefore(t.createTextNode(pt.exec(u)[0]),c.firstChild),u=c.childNodes,c.parentNode.removeChild(c)}u.nodeType?b.push(u):v.merge(b,u)}c&&(u=c=y=null);if(!v.support.appendChecked)for(s=0;(u=b[s])!=null;s++)v.nodeName(u,"input")?_t(u):typeof u.getElementsByTagName!="undefined"&&v.grep(u.getElementsByTagName("input"),_t);if(n){m=function(e){if(!e.type||xt.test(e.type))return r?r.push(e.parentNode?e.parentNode.removeChild(e):e):n.appendChild(e)};for(s=0;(u=b[s])!=null;s++)if(!v.nodeName(u,"script")||!m(u))n.appendChild(u),typeof u.getElementsByTagName!="undefined"&&(g=v.grep(v.merge([],u.getElementsByTagName("script")),m),b.splice.apply(b,[s+1,0].concat(g)),s+=g.length)}return b},cleanData:function(e,t){var n,r,i,s,o=0,u=v.expando,a=v.cache,f=v.support.deleteExpando,l=v.event.special;for(;(i=e[o])!=null;o++)if(t||v.acceptData(i)){r=i[u],n=r&&a[r];if(n){if(n.events)for(s in n.events)l[s]?v.event.remove(i,s):v.removeEvent(i,s,n.handle);a[r]&&(delete a[r],f?delete i[u]:i.removeAttribute?i.removeAttribute(u):i[u]=null,v.deletedIds.push(r))}}}}),function(){var e,t;v.uaMatch=function(e){e=e.toLowerCase();var t=/(chrome)[ \/]([\w.]+)/.exec(e)||/(webkit)[ \/]([\w.]+)/.exec(e)||/(opera)(?:.*version|)[ \/]([\w.]+)/.exec(e)||/(msie) ([\w.]+)/.exec(e)||e.indexOf("compatible")<0&&/(mozilla)(?:.*? rv:([\w.]+)|)/.exec(e)||[];return{browser:t[1]||"",version:t[2]||"0"}},e=v.uaMatch(o.userAgent),t={},e.browser&&(t[e.browser]=!0,t.version=e.version),t.chrome?t.webkit=!0:t.webkit&&(t.safari=!0),v.browser=t,v.sub=function(){function e(t,n){return new e.fn.init(t,n)}v.extend(!0,e,this),e.superclass=this,e.fn=e.prototype=this(),e.fn.constructor=e,e.sub=this.sub,e.fn.init=function(r,i){return i&&i instanceof v&&!(i instanceof e)&&(i=e(i)),v.fn.init.call(this,r,i,t)},e.fn.init.prototype=e.fn;var t=e(i);return e}}();var Dt,Pt,Ht,Bt=/alpha\([^)]*\)/i,jt=/opacity=([^)]*)/,Ft=/^(top|right|bottom|left)$/,It=/^(none|table(?!-c[ea]).+)/,qt=/^margin/,Rt=new RegExp("^("+m+")(.*)$","i"),Ut=new RegExp("^("+m+")(?!px)[a-z%]+$","i"),zt=new RegExp("^([-+])=("+m+")","i"),Wt={BODY:"block"},Xt={position:"absolute",visibility:"hidden",display:"block"},Vt={letterSpacing:0,fontWeight:400},$t=["Top","Right","Bottom","Left"],Jt=["Webkit","O","Moz","ms"],Kt=v.fn.toggle;v.fn.extend({css:function(e,n){return v.access(this,function(e,n,r){return r!==t?v.style(e,n,r):v.css(e,n)},e,n,arguments.length>1)},show:function(){return Yt(this,!0)},hide:function(){return Yt(this)},toggle:function(e,t){var n=typeof e=="boolean";return v.isFunction(e)&&v.isFunction(t)?Kt.apply(this,arguments):this.each(function(){(n?e:Gt(this))?v(this).show():v(this).hide()})}}),v.extend({cssHooks:{opacity:{get:function(e,t){if(t){var n=Dt(e,"opacity");return n===""?"1":n}}}},cssNumber:{fillOpacity:!0,fontWeight:!0,lineHeight:!0,opacity:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{"float":v.support.cssFloat?"cssFloat":"styleFloat"},style:function(e,n,r,i){if(!e||e.nodeType===3||e.nodeType===8||!e.style)return;var s,o,u,a=v.camelCase(n),f=e.style;n=v.cssProps[a]||(v.cssProps[a]=Qt(f,a)),u=v.cssHooks[n]||v.cssHooks[a];if(r===t)return u&&"get"in u&&(s=u.get(e,!1,i))!==t?s:f[n];o=typeof r,o==="string"&&(s=zt.exec(r))&&(r=(s[1]+1)*s[2]+parseFloat(v.css(e,n)),o="number");if(r==null||o==="number"&&isNaN(r))return;o==="number"&&!v.cssNumber[a]&&(r+="px");if(!u||!("set"in u)||(r=u.set(e,r,i))!==t)try{f[n]=r}catch(l){}},css:function(e,n,r,i){var s,o,u,a=v.camelCase(n);return n=v.cssProps[a]||(v.cssProps[a]=Qt(e.style,a)),u=v.cssHooks[n]||v.cssHooks[a],u&&"get"in u&&(s=u.get(e,!0,i)),s===t&&(s=Dt(e,n)),s==="normal"&&n in Vt&&(s=Vt[n]),r||i!==t?(o=parseFloat(s),r||v.isNumeric(o)?o||0:s):s},swap:function(e,t,n){var r,i,s={};for(i in t)s[i]=e.style[i],e.style[i]=t[i];r=n.call(e);for(i in t)e.style[i]=s[i];return r}}),e.getComputedStyle?Dt=function(t,n){var r,i,s,o,u=e.getComputedStyle(t,null),a=t.style;return u&&(r=u.getPropertyValue(n)||u[n],r===""&&!v.contains(t.ownerDocument,t)&&(r=v.style(t,n)),Ut.test(r)&&qt.test(n)&&(i=a.width,s=a.minWidth,o=a.maxWidth,a.minWidth=a.maxWidth=a.width=r,r=u.width,a.width=i,a.minWidth=s,a.maxWidth=o)),r}:i.documentElement.currentStyle&&(Dt=function(e,t){var n,r,i=e.currentStyle&&e.currentStyle[t],s=e.style;return i==null&&s&&s[t]&&(i=s[t]),Ut.test(i)&&!Ft.test(t)&&(n=s.left,r=e.runtimeStyle&&e.runtimeStyle.left,r&&(e.runtimeStyle.left=e.currentStyle.left),s.left=t==="fontSize"?"1em":i,i=s.pixelLeft+"px",s.left=n,r&&(e.runtimeStyle.left=r)),i===""?"auto":i}),v.each(["height","width"],function(e,t){v.cssHooks[t]={get:function(e,n,r){if(n)return e.offsetWidth===0&&It.test(Dt(e,"display"))?v.swap(e,Xt,function(){return tn(e,t,r)}):tn(e,t,r)},set:function(e,n,r){return Zt(e,n,r?en(e,t,r,v.support.boxSizing&&v.css(e,"boxSizing")==="border-box"):0)}}}),v.support.opacity||(v.cssHooks.opacity={get:function(e,t){return jt.test((t&&e.currentStyle?e.currentStyle.filter:e.style.filter)||"")?.01*parseFloat(RegExp.$1)+"":t?"1":""},set:function(e,t){var n=e.style,r=e.currentStyle,i=v.isNumeric(t)?"alpha(opacity="+t*100+")":"",s=r&&r.filter||n.filter||"";n.zoom=1;if(t>=1&&v.trim(s.replace(Bt,""))===""&&n.removeAttribute){n.removeAttribute("filter");if(r&&!r.filter)return}n.filter=Bt.test(s)?s.replace(Bt,i):s+" "+i}}),v(function(){v.support.reliableMarginRight||(v.cssHooks.marginRight={get:function(e,t){return v.swap(e,{display:"inline-block"},function(){if(t)return Dt(e,"marginRight")})}}),!v.support.pixelPosition&&v.fn.position&&v.each(["top","left"],function(e,t){v.cssHooks[t]={get:function(e,n){if(n){var r=Dt(e,t);return Ut.test(r)?v(e).position()[t]+"px":r}}}})}),v.expr&&v.expr.filters&&(v.expr.filters.hidden=function(e){return e.offsetWidth===0&&e.offsetHeight===0||!v.support.reliableHiddenOffsets&&(e.style&&e.style.display||Dt(e,"display"))==="none"},v.expr.filters.visible=function(e){return!v.expr.filters.hidden(e)}),v.each({margin:"",padding:"",border:"Width"},function(e,t){v.cssHooks[e+t]={expand:function(n){var r,i=typeof n=="string"?n.split(" "):[n],s={};for(r=0;r<4;r++)s[e+$t[r]+t]=i[r]||i[r-2]||i[0];return s}},qt.test(e)||(v.cssHooks[e+t].set=Zt)});var rn=/%20/g,sn=/\[\]$/,on=/\r?\n/g,un=/^(?:color|date|datetime|datetime-local|email|hidden|month|number|password|range|search|tel|text|time|url|week)$/i,an=/^(?:select|textarea)/i;v.fn.extend({serialize:function(){return v.param(this.serializeArray())},serializeArray:function(){return this.map(function(){return this.elements?v.makeArray(this.elements):this}).filter(function(){return this.name&&!this.disabled&&(this.checked||an.test(this.nodeName)||un.test(this.type))}).map(function(e,t){var n=v(this).val();return n==null?null:v.isArray(n)?v.map(n,function(e,n){return{name:t.name,value:e.replace(on,"\r\n")}}):{name:t.name,value:n.replace(on,"\r\n")}}).get()}}),v.param=function(e,n){var r,i=[],s=function(e,t){t=v.isFunction(t)?t():t==null?"":t,i[i.length]=encodeURIComponent(e)+"="+encodeURIComponent(t)};n===t&&(n=v.ajaxSettings&&v.ajaxSettings.traditional);if(v.isArray(e)||e.jquery&&!v.isPlainObject(e))v.each(e,function(){s(this.name,this.value)});else for(r in e)fn(r,e[r],n,s);return i.join("&").replace(rn,"+")};var ln,cn,hn=/#.*$/,pn=/^(.*?):[ \t]*([^\r\n]*)\r?$/mg,dn=/^(?:about|app|app\-storage|.+\-extension|file|res|widget):$/,vn=/^(?:GET|HEAD)$/,mn=/^\/\//,gn=/\?/,yn=/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,bn=/([?&])_=[^&]*/,wn=/^([\w\+\.\-]+:)(?:\/\/([^\/?#:]*)(?::(\d+)|)|)/,En=v.fn.load,Sn={},xn={},Tn=["*/"]+["*"];try{cn=s.href}catch(Nn){cn=i.createElement("a"),cn.href="",cn=cn.href}ln=wn.exec(cn.toLowerCase())||[],v.fn.load=function(e,n,r){if(typeof e!="string"&&En)return En.apply(this,arguments);if(!this.length)return this;var i,s,o,u=this,a=e.indexOf(" ");return a>=0&&(i=e.slice(a,e.length),e=e.slice(0,a)),v.isFunction(n)?(r=n,n=t):n&&typeof n=="object"&&(s="POST"),v.ajax({url:e,type:s,dataType:"html",data:n,complete:function(e,t){r&&u.each(r,o||[e.responseText,t,e])}}).done(function(e){o=arguments,u.html(i?v("<div>").append(e.replace(yn,"")).find(i):e)}),this},v.each("ajaxStart ajaxStop ajaxComplete ajaxError ajaxSuccess ajaxSend".split(" "),function(e,t){v.fn[t]=function(e){return this.on(t,e)}}),v.each(["get","post"],function(e,n){v[n]=function(e,r,i,s){return v.isFunction(r)&&(s=s||i,i=r,r=t),v.ajax({type:n,url:e,data:r,success:i,dataType:s})}}),v.extend({getScript:function(e,n){return v.get(e,t,n,"script")},getJSON:function(e,t,n){return v.get(e,t,n,"json")},ajaxSetup:function(e,t){return t?Ln(e,v.ajaxSettings):(t=e,e=v.ajaxSettings),Ln(e,t),e},ajaxSettings:{url:cn,isLocal:dn.test(ln[1]),global:!0,type:"GET",contentType:"application/x-www-form-urlencoded; charset=UTF-8",processData:!0,async:!0,accepts:{xml:"application/xml, text/xml",html:"text/html",text:"text/plain",json:"application/json, text/javascript","*":Tn},contents:{xml:/xml/,html:/html/,json:/json/},responseFields:{xml:"responseXML",text:"responseText"},converters:{"* text":e.String,"text html":!0,"text json":v.parseJSON,"text xml":v.parseXML},flatOptions:{context:!0,url:!0}},ajaxPrefilter:Cn(Sn),ajaxTransport:Cn(xn),ajax:function(e,n){function T(e,n,s,a){var l,y,b,w,S,T=n;if(E===2)return;E=2,u&&clearTimeout(u),o=t,i=a||"",x.readyState=e>0?4:0,s&&(w=An(c,x,s));if(e>=200&&e<300||e===304)c.ifModified&&(S=x.getResponseHeader("Last-Modified"),S&&(v.lastModified[r]=S),S=x.getResponseHeader("Etag"),S&&(v.etag[r]=S)),e===304?(T="notmodified",l=!0):(l=On(c,w),T=l.state,y=l.data,b=l.error,l=!b);else{b=T;if(!T||e)T="error",e<0&&(e=0)}x.status=e,x.statusText=(n||T)+"",l?d.resolveWith(h,[y,T,x]):d.rejectWith(h,[x,T,b]),x.statusCode(g),g=t,f&&p.trigger("ajax"+(l?"Success":"Error"),[x,c,l?y:b]),m.fireWith(h,[x,T]),f&&(p.trigger("ajaxComplete",[x,c]),--v.active||v.event.trigger("ajaxStop"))}typeof e=="object"&&(n=e,e=t),n=n||{};var r,i,s,o,u,a,f,l,c=v.ajaxSetup({},n),h=c.context||c,p=h!==c&&(h.nodeType||h instanceof v)?v(h):v.event,d=v.Deferred(),m=v.Callbacks("once memory"),g=c.statusCode||{},b={},w={},E=0,S="canceled",x={readyState:0,setRequestHeader:function(e,t){if(!E){var n=e.toLowerCase();e=w[n]=w[n]||e,b[e]=t}return this},getAllResponseHeaders:function(){return E===2?i:null},getResponseHeader:function(e){var n;if(E===2){if(!s){s={};while(n=pn.exec(i))s[n[1].toLowerCase()]=n[2]}n=s[e.toLowerCase()]}return n===t?null:n},overrideMimeType:function(e){return E||(c.mimeType=e),this},abort:function(e){return e=e||S,o&&o.abort(e),T(0,e),this}};d.promise(x),x.success=x.done,x.error=x.fail,x.complete=m.add,x.statusCode=function(e){if(e){var t;if(E<2)for(t in e)g[t]=[g[t],e[t]];else t=e[x.status],x.always(t)}return this},c.url=((e||c.url)+"").replace(hn,"").replace(mn,ln[1]+"//"),c.dataTypes=v.trim(c.dataType||"*").toLowerCase().split(y),c.crossDomain==null&&(a=wn.exec(c.url.toLowerCase()),c.crossDomain=!(!a||a[1]===ln[1]&&a[2]===ln[2]&&(a[3]||(a[1]==="http:"?80:443))==(ln[3]||(ln[1]==="http:"?80:443)))),c.data&&c.processData&&typeof c.data!="string"&&(c.data=v.param(c.data,c.traditional)),kn(Sn,c,n,x);if(E===2)return x;f=c.global,c.type=c.type.toUpperCase(),c.hasContent=!vn.test(c.type),f&&v.active++===0&&v.event.trigger("ajaxStart");if(!c.hasContent){c.data&&(c.url+=(gn.test(c.url)?"&":"?")+c.data,delete c.data),r=c.url;if(c.cache===!1){var N=v.now(),C=c.url.replace(bn,"$1_="+N);c.url=C+(C===c.url?(gn.test(c.url)?"&":"?")+"_="+N:"")}}(c.data&&c.hasContent&&c.contentType!==!1||n.contentType)&&x.setRequestHeader("Content-Type",c.contentType),c.ifModified&&(r=r||c.url,v.lastModified[r]&&x.setRequestHeader("If-Modified-Since",v.lastModified[r]),v.etag[r]&&x.setRequestHeader("If-None-Match",v.etag[r])),x.setRequestHeader("Accept",c.dataTypes[0]&&c.accepts[c.dataTypes[0]]?c.accepts[c.dataTypes[0]]+(c.dataTypes[0]!=="*"?", "+Tn+"; q=0.01":""):c.accepts["*"]);for(l in c.headers)x.setRequestHeader(l,c.headers[l]);if(!c.beforeSend||c.beforeSend.call(h,x,c)!==!1&&E!==2){S="abort";for(l in{success:1,error:1,complete:1})x[l](c[l]);o=kn(xn,c,n,x);if(!o)T(-1,"No Transport");else{x.readyState=1,f&&p.trigger("ajaxSend",[x,c]),c.async&&c.timeout>0&&(u=setTimeout(function(){x.abort("timeout")},c.timeout));try{E=1,o.send(b,T)}catch(k){if(!(E<2))throw k;T(-1,k)}}return x}return x.abort()},active:0,lastModified:{},etag:{}});var Mn=[],_n=/\?/,Dn=/(=)\?(?=&|$)|\?\?/,Pn=v.now();v.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var e=Mn.pop()||v.expando+"_"+Pn++;return this[e]=!0,e}}),v.ajaxPrefilter("json jsonp",function(n,r,i){var s,o,u,a=n.data,f=n.url,l=n.jsonp!==!1,c=l&&Dn.test(f),h=l&&!c&&typeof a=="string"&&!(n.contentType||"").indexOf("application/x-www-form-urlencoded")&&Dn.test(a);if(n.dataTypes[0]==="jsonp"||c||h)return s=n.jsonpCallback=v.isFunction(n.jsonpCallback)?n.jsonpCallback():n.jsonpCallback,o=e[s],c?n.url=f.replace(Dn,"$1"+s):h?n.data=a.replace(Dn,"$1"+s):l&&(n.url+=(_n.test(f)?"&":"?")+n.jsonp+"="+s),n.converters["script json"]=function(){return u||v.error(s+" was not called"),u[0]},n.dataTypes[0]="json",e[s]=function(){u=arguments},i.always(function(){e[s]=o,n[s]&&(n.jsonpCallback=r.jsonpCallback,Mn.push(s)),u&&v.isFunction(o)&&o(u[0]),u=o=t}),"script"}),v.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/javascript|ecmascript/},converters:{"text script":function(e){return v.globalEval(e),e}}}),v.ajaxPrefilter("script",function(e){e.cache===t&&(e.cache=!1),e.crossDomain&&(e.type="GET",e.global=!1)}),v.ajaxTransport("script",function(e){if(e.crossDomain){var n,r=i.head||i.getElementsByTagName("head")[0]||i.documentElement;return{send:function(s,o){n=i.createElement("script"),n.async="async",e.scriptCharset&&(n.charset=e.scriptCharset),n.src=e.url,n.onload=n.onreadystatechange=function(e,i){if(i||!n.readyState||/loaded|complete/.test(n.readyState))n.onload=n.onreadystatechange=null,r&&n.parentNode&&r.removeChild(n),n=t,i||o(200,"success")},r.insertBefore(n,r.firstChild)},abort:function(){n&&n.onload(0,1)}}}});var Hn,Bn=e.ActiveXObject?function(){for(var e in Hn)Hn[e](0,1)}:!1,jn=0;v.ajaxSettings.xhr=e.ActiveXObject?function(){return!this.isLocal&&Fn()||In()}:Fn,function(e){v.extend(v.support,{ajax:!!e,cors:!!e&&"withCredentials"in e})}(v.ajaxSettings.xhr()),v.support.ajax&&v.ajaxTransport(function(n){if(!n.crossDomain||v.support.cors){var r;return{send:function(i,s){var o,u,a=n.xhr();n.username?a.open(n.type,n.url,n.async,n.username,n.password):a.open(n.type,n.url,n.async);if(n.xhrFields)for(u in n.xhrFields)a[u]=n.xhrFields[u];n.mimeType&&a.overrideMimeType&&a.overrideMimeType(n.mimeType),!n.crossDomain&&!i["X-Requested-With"]&&(i["X-Requested-With"]="XMLHttpRequest");try{for(u in i)a.setRequestHeader(u,i[u])}catch(f){}a.send(n.hasContent&&n.data||null),r=function(e,i){var u,f,l,c,h;try{if(r&&(i||a.readyState===4)){r=t,o&&(a.onreadystatechange=v.noop,Bn&&delete Hn[o]);if(i)a.readyState!==4&&a.abort();else{u=a.status,l=a.getAllResponseHeaders(),c={},h=a.responseXML,h&&h.documentElement&&(c.xml=h);try{c.text=a.responseText}catch(p){}try{f=a.statusText}catch(p){f=""}!u&&n.isLocal&&!n.crossDomain?u=c.text?200:404:u===1223&&(u=204)}}}catch(d){i||s(-1,d)}c&&s(u,f,c,l)},n.async?a.readyState===4?setTimeout(r,0):(o=++jn,Bn&&(Hn||(Hn={},v(e).unload(Bn)),Hn[o]=r),a.onreadystatechange=r):r()},abort:function(){r&&r(0,1)}}}});var qn,Rn,Un=/^(?:toggle|show|hide)$/,zn=new RegExp("^(?:([-+])=|)("+m+")([a-z%]*)$","i"),Wn=/queueHooks$/,Xn=[Gn],Vn={"*":[function(e,t){var n,r,i=this.createTween(e,t),s=zn.exec(t),o=i.cur(),u=+o||0,a=1,f=20;if(s){n=+s[2],r=s[3]||(v.cssNumber[e]?"":"px");if(r!=="px"&&u){u=v.css(i.elem,e,!0)||n||1;do a=a||".5",u/=a,v.style(i.elem,e,u+r);while(a!==(a=i.cur()/o)&&a!==1&&--f)}i.unit=r,i.start=u,i.end=s[1]?u+(s[1]+1)*n:n}return i}]};v.Animation=v.extend(Kn,{tweener:function(e,t){v.isFunction(e)?(t=e,e=["*"]):e=e.split(" ");var n,r=0,i=e.length;for(;r<i;r++)n=e[r],Vn[n]=Vn[n]||[],Vn[n].unshift(t)},prefilter:function(e,t){t?Xn.unshift(e):Xn.push(e)}}),v.Tween=Yn,Yn.prototype={constructor:Yn,init:function(e,t,n,r,i,s){this.elem=e,this.prop=n,this.easing=i||"swing",this.options=t,this.start=this.now=this.cur(),this.end=r,this.unit=s||(v.cssNumber[n]?"":"px")},cur:function(){var e=Yn.propHooks[this.prop];return e&&e.get?e.get(this):Yn.propHooks._default.get(this)},run:function(e){var t,n=Yn.propHooks[this.prop];return this.options.duration?this.pos=t=v.easing[this.easing](e,this.options.duration*e,0,1,this.options.duration):this.pos=t=e,this.now=(this.end-this.start)*t+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),n&&n.set?n.set(this):Yn.propHooks._default.set(this),this}},Yn.prototype.init.prototype=Yn.prototype,Yn.propHooks={_default:{get:function(e){var t;return e.elem[e.prop]==null||!!e.elem.style&&e.elem.style[e.prop]!=null?(t=v.css(e.elem,e.prop,!1,""),!t||t==="auto"?0:t):e.elem[e.prop]},set:function(e){v.fx.step[e.prop]?v.fx.step[e.prop](e):e.elem.style&&(e.elem.style[v.cssProps[e.prop]]!=null||v.cssHooks[e.prop])?v.style(e.elem,e.prop,e.now+e.unit):e.elem[e.prop]=e.now}}},Yn.propHooks.scrollTop=Yn.propHooks.scrollLeft={set:function(e){e.elem.nodeType&&e.elem.parentNode&&(e.elem[e.prop]=e.now)}},v.each(["toggle","show","hide"],function(e,t){var n=v.fn[t];v.fn[t]=function(r,i,s){return r==null||typeof r=="boolean"||!e&&v.isFunction(r)&&v.isFunction(i)?n.apply(this,arguments):this.animate(Zn(t,!0),r,i,s)}}),v.fn.extend({fadeTo:function(e,t,n,r){return this.filter(Gt).css("opacity",0).show().end().animate({opacity:t},e,n,r)},animate:function(e,t,n,r){var i=v.isEmptyObject(e),s=v.speed(t,n,r),o=function(){var t=Kn(this,v.extend({},e),s);i&&t.stop(!0)};return i||s.queue===!1?this.each(o):this.queue(s.queue,o)},stop:function(e,n,r){var i=function(e){var t=e.stop;delete e.stop,t(r)};return typeof e!="string"&&(r=n,n=e,e=t),n&&e!==!1&&this.queue(e||"fx",[]),this.each(function(){var t=!0,n=e!=null&&e+"queueHooks",s=v.timers,o=v._data(this);if(n)o[n]&&o[n].stop&&i(o[n]);else for(n in o)o[n]&&o[n].stop&&Wn.test(n)&&i(o[n]);for(n=s.length;n--;)s[n].elem===this&&(e==null||s[n].queue===e)&&(s[n].anim.stop(r),t=!1,s.splice(n,1));(t||!r)&&v.dequeue(this,e)})}}),v.each({slideDown:Zn("show"),slideUp:Zn("hide"),slideToggle:Zn("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(e,t){v.fn[e]=function(e,n,r){return this.animate(t,e,n,r)}}),v.speed=function(e,t,n){var r=e&&typeof e=="object"?v.extend({},e):{complete:n||!n&&t||v.isFunction(e)&&e,duration:e,easing:n&&t||t&&!v.isFunction(t)&&t};r.duration=v.fx.off?0:typeof r.duration=="number"?r.duration:r.duration in v.fx.speeds?v.fx.speeds[r.duration]:v.fx.speeds._default;if(r.queue==null||r.queue===!0)r.queue="fx";return r.old=r.complete,r.complete=function(){v.isFunction(r.old)&&r.old.call(this),r.queue&&v.dequeue(this,r.queue)},r},v.easing={linear:function(e){return e},swing:function(e){return.5-Math.cos(e*Math.PI)/2}},v.timers=[],v.fx=Yn.prototype.init,v.fx.tick=function(){var e,n=v.timers,r=0;qn=v.now();for(;r<n.length;r++)e=n[r],!e()&&n[r]===e&&n.splice(r--,1);n.length||v.fx.stop(),qn=t},v.fx.timer=function(e){e()&&v.timers.push(e)&&!Rn&&(Rn=setInterval(v.fx.tick,v.fx.interval))},v.fx.interval=13,v.fx.stop=function(){clearInterval(Rn),Rn=null},v.fx.speeds={slow:600,fast:200,_default:400},v.fx.step={},v.expr&&v.expr.filters&&(v.expr.filters.animated=function(e){return v.grep(v.timers,function(t){return e===t.elem}).length});var er=/^(?:body|html)$/i;v.fn.offset=function(e){if(arguments.length)return e===t?this:this.each(function(t){v.offset.setOffset(this,e,t)});var n,r,i,s,o,u,a,f={top:0,left:0},l=this[0],c=l&&l.ownerDocument;if(!c)return;return(r=c.body)===l?v.offset.bodyOffset(l):(n=c.documentElement,v.contains(n,l)?(typeof l.getBoundingClientRect!="undefined"&&(f=l.getBoundingClientRect()),i=tr(c),s=n.clientTop||r.clientTop||0,o=n.clientLeft||r.clientLeft||0,u=i.pageYOffset||n.scrollTop,a=i.pageXOffset||n.scrollLeft,{top:f.top+u-s,left:f.left+a-o}):f)},v.offset={bodyOffset:function(e){var t=e.offsetTop,n=e.offsetLeft;return v.support.doesNotIncludeMarginInBodyOffset&&(t+=parseFloat(v.css(e,"marginTop"))||0,n+=parseFloat(v.css(e,"marginLeft"))||0),{top:t,left:n}},setOffset:function(e,t,n){var r=v.css(e,"position");r==="static"&&(e.style.position="relative");var i=v(e),s=i.offset(),o=v.css(e,"top"),u=v.css(e,"left"),a=(r==="absolute"||r==="fixed")&&v.inArray("auto",[o,u])>-1,f={},l={},c,h;a?(l=i.position(),c=l.top,h=l.left):(c=parseFloat(o)||0,h=parseFloat(u)||0),v.isFunction(t)&&(t=t.call(e,n,s)),t.top!=null&&(f.top=t.top-s.top+c),t.left!=null&&(f.left=t.left-s.left+h),"using"in t?t.using.call(e,f):i.css(f)}},v.fn.extend({position:function(){if(!this[0])return;var e=this[0],t=this.offsetParent(),n=this.offset(),r=er.test(t[0].nodeName)?{top:0,left:0}:t.offset();return n.top-=parseFloat(v.css(e,"marginTop"))||0,n.left-=parseFloat(v.css(e,"marginLeft"))||0,r.top+=parseFloat(v.css(t[0],"borderTopWidth"))||0,r.left+=parseFloat(v.css(t[0],"borderLeftWidth"))||0,{top:n.top-r.top,left:n.left-r.left}},offsetParent:function(){return this.map(function(){var e=this.offsetParent||i.body;while(e&&!er.test(e.nodeName)&&v.css(e,"position")==="static")e=e.offsetParent;return e||i.body})}}),v.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(e,n){var r=/Y/.test(n);v.fn[e]=function(i){return v.access(this,function(e,i,s){var o=tr(e);if(s===t)return o?n in o?o[n]:o.document.documentElement[i]:e[i];o?o.scrollTo(r?v(o).scrollLeft():s,r?s:v(o).scrollTop()):e[i]=s},e,i,arguments.length,null)}}),v.each({Height:"height",Width:"width"},function(e,n){v.each({padding:"inner"+e,content:n,"":"outer"+e},function(r,i){v.fn[i]=function(i,s){var o=arguments.length&&(r||typeof i!="boolean"),u=r||(i===!0||s===!0?"margin":"border");return v.access(this,function(n,r,i){var s;return v.isWindow(n)?n.document.documentElement["client"+e]:n.nodeType===9?(s=n.documentElement,Math.max(n.body["scroll"+e],s["scroll"+e],n.body["offset"+e],s["offset"+e],s["client"+e])):i===t?v.css(n,r,i,u):v.style(n,r,i,u)},n,o?i:t,o,null)}})}),e.jQuery=e.$=v,typeof define=="function"&&define.amd&&define.amd.jQuery&&define("jquery",[],function(){return v})})(window);
/**
 * Cookie plugin
 *
 * Copyright (c) 2006 Klaus Hartl (stilbuero.de)
 * Dual licensed under the MIT and GPL licenses:
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 *
 */

/**
 * Create a cookie with the given name and value and other optional parameters.
 *
 * @example $.cookie('the_cookie', 'the_value');
 * @desc Set the value of a cookie.
 * @example $.cookie('the_cookie', 'the_value', { expires: 7, path: '/', domain: 'http://image.tongshuai.com/tongshuai/images/jquery.com', secure: true });
 * @desc Create a cookie with all available options.
 * @example $.cookie('the_cookie', 'the_value');
 * @desc Create a session cookie.
 * @example $.cookie('the_cookie', null);
 * @desc Delete a cookie by passing null as value. Keep in mind that you have to use the same path and domain
 *       used when the cookie was set.
 *
 * @param String name The name of the cookie.
 * @param String value The value of the cookie.
 * @param Object options An object literal containing key/value pairs to provide optional cookie attributes.
 * @option Number|Date expires Either an integer specifying the expiration date from now on in days or a Date object.
 *                             If a negative value is specified (e.g. a date in the past), the cookie will be deleted.
 *                             If set to null or omitted, the cookie will be a session cookie and will not be retained
 *                             when the the browser exits.
 * @option String path The value of the path atribute of the cookie (default: path of page that created the cookie).
 * @option String domain The value of the domain attribute of the cookie (default: domain of page that created the cookie).
 * @option Boolean secure If true, the secure attribute of the cookie will be set and the cookie transmission will
 *                        require a secure protocol (like HTTPS).
 * @type undefined
 *
 * @name $.cookie
 * @cat Plugins/Cookie
 * @author Klaus Hartl/klaus.hartl@stilbuero.de
 */

/**
 * Get the value of a cookie with the given name.
 *
 * @example $.cookie('the_cookie');
 * @desc Get the value of a cookie.
 *
 * @param String name The name of the cookie.
 * @return The value of the cookie.
 * @type String
 *
 * @name $.cookie
 * @cat Plugins/Cookie
 * @author Klaus Hartl/klaus.hartl@stilbuero.de
 */
jQuery.cookie = function(name, value, options) {
    if (typeof value != 'undefined') { // name and value given, set cookie
        options = options || {};
        if (value === null) {
            value = '';
            options = $.extend({}, options); // clone object since it's unexpected behavior if the expired property were changed
            options.expires = -1;
        }
        var expires = '';
        if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
            var date;
            if (typeof options.expires == 'number') {
                date = new Date();
                date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
            } else {
                date = options.expires;
            }
            expires = '; expires=' + date.toUTCString(); // use expires attribute, max-age is not supported by IE
        }
        // NOTE Needed to parenthesize options.path and options.domain
        // in the following expressions, otherwise they evaluate to undefined
        // in the packed version for some reason...
        var path = options.path ? '; path=' + (options.path) : '';
        var domain = options.domain ? '; domain=' + (options.domain) : '';
        var secure = options.secure ? '; secure' : '';
        document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
    } else { // only name given, get cookie
        var cookieValue = null;
        if (document.cookie && document.cookie != '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) == (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
};
// Snap.svg 0.4.1
//
// Copyright (c) 2013 – 2015 Adobe Systems Incorporated. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// build: 2015-04-13

!function(a){var b,c,d="0.4.2",e="hasOwnProperty",f=/[\.\/]/,g=/\s*,\s*/,h="*",i=function(a,b){return a-b},j={n:{}},k=function(){for(var a=0,b=this.length;b>a;a++)if("undefined"!=typeof this[a])return this[a]},l=function(){for(var a=this.length;--a;)if("undefined"!=typeof this[a])return this[a]},m=function(a,d){a=String(a);var e,f=c,g=Array.prototype.slice.call(arguments,2),h=m.listeners(a),j=0,n=[],o={},p=[],q=b;p.firstDefined=k,p.lastDefined=l,b=a,c=0;for(var r=0,s=h.length;s>r;r++)"zIndex"in h[r]&&(n.push(h[r].zIndex),h[r].zIndex<0&&(o[h[r].zIndex]=h[r]));for(n.sort(i);n[j]<0;)if(e=o[n[j++]],p.push(e.apply(d,g)),c)return c=f,p;for(r=0;s>r;r++)if(e=h[r],"zIndex"in e)if(e.zIndex==n[j]){if(p.push(e.apply(d,g)),c)break;do if(j++,e=o[n[j]],e&&p.push(e.apply(d,g)),c)break;while(e)}else o[e.zIndex]=e;else if(p.push(e.apply(d,g)),c)break;return c=f,b=q,p};m._events=j,m.listeners=function(a){var b,c,d,e,g,i,k,l,m=a.split(f),n=j,o=[n],p=[];for(e=0,g=m.length;g>e;e++){for(l=[],i=0,k=o.length;k>i;i++)for(n=o[i].n,c=[n[m[e]],n[h]],d=2;d--;)b=c[d],b&&(l.push(b),p=p.concat(b.f||[]));o=l}return p},m.on=function(a,b){if(a=String(a),"function"!=typeof b)return function(){};for(var c=a.split(g),d=0,e=c.length;e>d;d++)!function(a){for(var c,d=a.split(f),e=j,g=0,h=d.length;h>g;g++)e=e.n,e=e.hasOwnProperty(d[g])&&e[d[g]]||(e[d[g]]={n:{}});for(e.f=e.f||[],g=0,h=e.f.length;h>g;g++)if(e.f[g]==b){c=!0;break}!c&&e.f.push(b)}(c[d]);return function(a){+a==+a&&(b.zIndex=+a)}},m.f=function(a){var b=[].slice.call(arguments,1);return function(){m.apply(null,[a,null].concat(b).concat([].slice.call(arguments,0)))}},m.stop=function(){c=1},m.nt=function(a){return a?new RegExp("(?:\\.|\\/|^)"+a+"(?:\\.|\\/|$)").test(b):b},m.nts=function(){return b.split(f)},m.off=m.unbind=function(a,b){if(!a)return void(m._events=j={n:{}});var c=a.split(g);if(c.length>1)for(var d=0,i=c.length;i>d;d++)m.off(c[d],b);else{c=a.split(f);var k,l,n,d,i,o,p,q=[j];for(d=0,i=c.length;i>d;d++)for(o=0;o<q.length;o+=n.length-2){if(n=[o,1],k=q[o].n,c[d]!=h)k[c[d]]&&n.push(k[c[d]]);else for(l in k)k[e](l)&&n.push(k[l]);q.splice.apply(q,n)}for(d=0,i=q.length;i>d;d++)for(k=q[d];k.n;){if(b){if(k.f){for(o=0,p=k.f.length;p>o;o++)if(k.f[o]==b){k.f.splice(o,1);break}!k.f.length&&delete k.f}for(l in k.n)if(k.n[e](l)&&k.n[l].f){var r=k.n[l].f;for(o=0,p=r.length;p>o;o++)if(r[o]==b){r.splice(o,1);break}!r.length&&delete k.n[l].f}}else{delete k.f;for(l in k.n)k.n[e](l)&&k.n[l].f&&delete k.n[l].f}k=k.n}}},m.once=function(a,b){var c=function(){return m.unbind(a,c),b.apply(this,arguments)};return m.on(a,c)},m.version=d,m.toString=function(){return"You are running Eve "+d},"undefined"!=typeof module&&module.exports?module.exports=m:"function"http://image.tongshuai.com/tongshuai/images/==typeof define&&define.amd?define("eve",[],function(){return m}):a.eve=m}(this),function(a,b){if("function"==typeof define&&define.amd)define(["eve"],function(c){return b(a,c)});else if("undefined"!=typeof exports){var c=require("eve");module.exports=b(a,c)}else b(a,a.eve)}(window||this,function(a,b){var c=function(b){var c={},d=a.requestAnimationFrame||a.webkitRequestAnimationFrame||a.mozRequestAnimationFrame||a.oRequestAnimationFrame||a.msRequestAnimationFrame||function(a){setTimeout(a,16)},e=Array.isArray||function(a){return a instanceof Array||"[object Array]"==Object.prototype.toString.call(a)},f=0,g="M"+(+new Date).toString(36),h=function(){return g+(f++).toString(36)},i=Date.now||function(){return+new Date},j=function(a){var b=this;if(null==a)return b.s;var c=b.s-a;b.b+=b.dur*c,b.B+=b.dur*c,b.s=a},k=function(a){var b=this;return null==a?b.spd:void(b.spd=a)},l=function(a){var b=this;return null==a?b.dur:(b.s=b.s*a/b.dur,void(b.dur=a))},m=function(){var a=this;delete c[a.id],a.update(),b("mina.stop."+a.id,a)},n=function(){var a=this;a.pdif||(delete c[a.id],a.update(),a.pdif=a.get()-a.b)},o=function(){var a=this;a.pdif&&(a.b=a.get()-a.pdif,delete a.pdif,c[a.id]=a)},p=function(){var a,b=this;if(e(b.start)){a=[];for(var c=0,d=b.start.length;d>c;c++)a[c]=+b.start[c]+(b.end[c]-b.start[c])*b.easing(b.s)}else a=+b.start+(b.end-b.start)*b.easing(b.s);b.set(a)},q=function(){var a=0;for(var e in c)if(c.hasOwnProperty(e)){var f=c[e],g=f.get();a++,f.s=(g-f.b)/(f.dur/f.spd),f.s>=1&&(delete c[e],f.s=1,a--,function(a){setTimeout(function(){b("mina.finish."+a.id,a)})}(f)),f.update()}a&&d(q)},r=function(a,b,e,f,g,i,s){var t={id:h(),start:a,end:b,b:e,s:0,dur:f-e,spd:1,get:g,set:i,easing:s||r.linear,status:j,speed:k,duration:l,stop:m,pause:n,resume:o,update:p};c[t.id]=t;var u,v=0;for(u in c)if(c.hasOwnProperty(u)&&(v++,2==v))break;return 1==v&&d(q),t};return r.time=i,r.getById=function(a){return c[a]||null},r.linear=function(a){return a},r.easeout=function(a){return Math.pow(a,1.7)},r.easein=function(a){return Math.pow(a,.48)},r.easeinout=function(a){if(1==a)return 1;if(0==a)return 0;var b=.48-a/1.04,c=Math.sqrt(.1734+b*b),d=c-b,e=Math.pow(Math.abs(d),1/3)*(0>d?-1:1),f=-c-b,g=Math.pow(Math.abs(f),1/3)*(0>f?-1:1),h=e+g+.5;return 3*(1-h)*h*h+h*h*h},r.backin=function(a){if(1==a)return 1;var b=1.70158;return a*a*((b+1)*a-b)},r.backout=function(a){if(0==a)return 0;a-=1;var b=1.70158;return a*a*((b+1)*a+b)+1},r.elastic=function(a){return a==!!a?a:Math.pow(2,-10*a)*Math.sin(2*(a-.075)*Math.PI/.3)+1},r.bounce=function(a){var b,c=7.5625,d=2.75;return 1/d>a?b=c*a*a:2/d>a?(a-=1.5/d,b=c*a*a+.75):2.5/d>a?(a-=2.25/d,b=c*a*a+.9375):(a-=2.625/d,b=c*a*a+.984375),b},a.mina=r,r}("undefined"==typeof b?function(){}:b),d=function(a){function c(a,b){if(a){if(a.nodeType)return w(a);if(e(a,"array")&&c.set)return c.set.apply(c,a);if(a instanceof s)return a;if(null==b)return a=y.doc.querySelector(String(a)),w(a)}return a=null==a?"100%":a,b=null==b?"100%":b,new v(a,b)}function d(a,b){if(b){if("#text"==a&&(a=y.doc.createTextNode(b.text||b["#text"]||"")),"#comment"==a&&(a=y.doc.createComment(b.text||b["#text"]||"")),"string"==typeof a&&(a=d(a)),"string"==typeof b)return 1==a.nodeType?"xlink:"==b.substring(0,6)?a.getAttributeNS(T,b.substring(6)):"xml:"==b.substring(0,4)?a.getAttributeNS(U,b.substring(4)):a.getAttribute(b):"text"==b?a.nodeValue:null;if(1==a.nodeType){for(var c in b)if(b[z](c)){var e=A(b[c]);e?"xlink:"==c.substring(0,6)?a.setAttributeNS(T,c.substring(6),e):"xml:"==c.substring(0,4)?a.setAttributeNS(U,c.substring(4),e):a.setAttribute(c,e):a.removeAttribute(c)}}else"text"in b&&(a.nodeValue=b.text)}else a=y.doc.createElementNS(U,a);return a}function e(a,b){return b=A.prototype.toLowerCase.call(b),"finite"==b?isFinite(a):"array"==b&&(a instanceof Array||Array.isArray&&Array.isArray(a))?!0:"null"==b&&null===a||b==typeof a&&null!==a||"object"==b&&a===Object(a)||J.call(a).slice(8,-1).toLowerCase()==b}function f(a){if("function"==typeof a||Object(a)!==a)return a;var b=new a.constructor;for(var c in a)a[z](c)&&(b[c]=f(a[c]));return b}function h(a,b){for(var c=0,d=a.length;d>c;c++)if(a[c]===b)return a.push(a.splice(c,1)[0])}function i(a,b,c){function d(){var e=Array.prototype.slice.call(arguments,0),f=e.join("␀"),g=d.cache=d.cache||{},i=d.count=d.count||[];return g[z](f)?(h(i,f),c?c(g[f]):g[f]):(i.length>=1e3&&delete g[i.shift()],i.push(f),g[f]=a.apply(b,e),c?c(g[f]):g[f])}return d}function j(a,b,c,d,e,f){if(null==e){var g=a-c,h=b-d;return g||h?(180+180*D.atan2(-h,-g)/H+360)%360:0}return j(a,b,e,f)-j(c,d,e,f)}function k(a){return a%360*H/180}function l(a){return 180*a/H%360}function m(a){var b=[];return a=a.replace(/(?:^|\s)(\w+)\(([^)]+)\)/g,function(a,c,d){return d=d.split(/\s*,\s*|\s+/),"rotate"==c&&1==d.length&&d.push(0,0),"scale"==c&&(d.length>2?d=d.slice(0,2):2==d.length&&d.push(0,0),1==d.length&&d.push(d[0],0,0)),b.push("skewX"==c?["m",1,0,D.tan(k(d[0])),1,0,0]:"skewY"==c?["m",1,D.tan(k(d[0])),0,1,0,0]:[c.charAt(0)].concat(d)),a}),b}function n(a,b){var d=ab(a),e=new c.Matrix;if(d)for(var f=0,g=d.length;g>f;f++){var h,i,j,k,l,m=d[f],n=m.length,o=A(m[0]).toLowerCase(),p=m[0]!=o,q=p?e.invert():0;"t"==o&&2==n?e.translate(m[1],0):"t"==o&&3==n?p?(h=q.x(0,0),i=q.y(0,0),j=q.x(m[1],m[2]),k=q.y(m[1],m[2]),e.translate(j-h,k-i)):e.translate(m[1],m[2]):"r"==o?2==n?(l=l||b,e.rotate(m[1],l.x+l.width/2,l.y+l.height/2)):4==n&&(p?(j=q.x(m[2],m[3]),k=q.y(m[2],m[3]),e.rotate(m[1],j,k)):e.rotate(m[1],m[2],m[3])):"s"==o?2==n||3==n?(l=l||b,e.scale(m[1],m[n-1],l.x+l.width/2,l.y+l.height/2)):4==n?p?(j=q.x(m[2],m[3]),k=q.y(m[2],m[3]),e.scale(m[1],m[1],j,k)):e.scale(m[1],m[1],m[2],m[3]):5==n&&(p?(j=q.x(m[3],m[4]),k=q.y(m[3],m[4]),e.scale(m[1],m[2],j,k)):e.scale(m[1],m[2],m[3],m[4])):"m"==o&&7==n&&e.add(m[1],m[2],m[3],m[4],m[5],m[6])}return e}function o(a){var b=a.node.ownerSVGElement&&w(a.node.ownerSVGElement)||a.node.parentNode&&w(a.node.parentNode)||c.select("svg")||c(0,0),d=b.select("defs"),e=null==d?!1:d.node;return e||(e=u("defs",b.node).node),e}function p(a){return a.node.ownerSVGElement&&w(a.node.ownerSVGElement)||c.select("svg")}function q(a,b,c){function e(a){if(null==a)return I;if(a==+a)return a;d(j,{width:a});try{return j.getBBox().width}catch(b){return 0}}function f(a){if(null==a)return I;if(a==+a)return a;d(j,{height:a});try{return j.getBBox().height}catch(b){return 0}}function g(d,e){null==b?i[d]=e(a.attr(d)||0):d==b&&(i=e(null==c?a.attr(d)||0:c))}var h=p(a).node,i={},j=h.querySelector(".svg---mgr");switch(j||(j=d("rect"),d(j,{x:-9e9,y:-9e9,width:10,height:10,"class":"svg---mgr",fill:"none"}),h.appendChild(j)),a.type){case"rect":g("rx",e),g("ry",f);case"image":g("width",e),g("height",f);case"text":g("x",e),g("y",f);break;case"circle":g("cx",e),g("cy",f),g("r",e);break;case"ellipse":g("cx",e),g("cy",f),g("rx",e),g("ry",f);break;case"line":g("x1",e),g("x2",e),g("y1",f),g("y2",f);break;case"marker":g("refX",e),g("markerWidth",e),g("refY",f),g("markerHeight",f);break;case"radialGradient":g("fx",e),g("fy",f);break;case"tspan":g("dx",e),g("dy",f);break;default:g(b,e)}return h.removeChild(j),i}function r(a){e(a,"array")||(a=Array.prototype.slice.call(arguments,0));for(var b=0,c=0,d=this.node;this[b];)delete this[b++];for(b=0;b<a.length;b++)"set"http://image.tongshuai.com/tongshuai/images/==a[b].type?a[b].forEach(function(a){d.appendChild(a.node)}):d.appendChild(a[b].node);var f=d.childNodes;for(b=0;b<f.length;b++)this[c++]=w(f[b]);return this}function s(a){if(a.snap in V)return V[a.snap];var b;try{b=a.ownerSVGElement}catch(c){}this.node=a,b&&(this.paper=new v(b)),this.type=a.tagName||a.nodeName;var d=this.id=S(this);if(this.anims={},this._={transform:[]},a.snap=d,V[d]=this,"g"==this.type&&(this.add=r),this.type in{g:1,mask:1,pattern:1,symbol:1})for(var e in v.prototype)v.prototype[z](e)&&(this[e]=v.prototype[e])}function t(a){this.node=a}function u(a,b){var c=d(a);b.appendChild(c);var e=w(c);return e}function v(a,b){var c,e,f,g=v.prototype;if(a&&"svg"==a.tagName){if(a.snap in V)return V[a.snap];var h=a.ownerDocument;c=new s(a),e=a.getElementsByTagName("desc")[0],f=a.getElementsByTagName("defs")[0],e||(e=d("desc"),e.appendChild(h.createTextNode("Created with Snap")),c.node.appendChild(e)),f||(f=d("defs"),c.node.appendChild(f)),c.defs=f;for(var i in g)g[z](i)&&(c[i]=g[i]);c.paper=c.root=c}else c=u("svg",y.doc.body),d(c.node,{height:b,version:1.1,width:a,xmlns:U});return c}function w(a){return a?a instanceof s||a instanceof t?a:a.tagName&&"svg"==a.tagName.toLowerCase()?new v(a):a.tagName&&"object"==a.tagName.toLowerCase()&&"image/svg+xml"http://image.tongshuai.com/tongshuai/images/==a.type?new v(a.contentDocument.getElementsByTagName("svg")[0]):new s(a):a}function x(a,b){for(var c=0,d=a.length;d>c;c++){var e={type:a[c].type,attr:a[c].attr()},f=a[c].children();b.push(e),f.length&&x(f,e.childNodes=[])}}c.version="0.4.0",c.toString=function(){return"Snap v"+this.version},c._={};var y={win:a.window,doc:a.window.document};c._.glob=y;{var z="hasOwnProperty",A=String,B=parseFloat,C=parseInt,D=Math,E=D.max,F=D.min,G=D.abs,H=(D.pow,D.PI),I=(D.round,""),J=Object.prototype.toString,K=/^\s*((#[a-f\d]{6})|(#[a-f\d]{3})|rgba?\(\s*([\d\.]+%?\s*,\s*[\d\.]+%?\s*,\s*[\d\.]+%?(?:\s*,\s*[\d\.]+%?)?)\s*\)|hsba?\(\s*([\d\.]+(?:deg|\xb0|%)?\s*,\s*[\d\.]+%?\s*,\s*[\d\.]+(?:%?\s*,\s*[\d\.]+)?%?)\s*\)|hsla?\(\s*([\d\.]+(?:deg|\xb0|%)?\s*,\s*[\d\.]+%?\s*,\s*[\d\.]+(?:%?\s*,\s*[\d\.]+)?%?)\s*\))\s*$/i,L=(c._.separator=/[,\s]+/,/[\s]*,[\s]*/),M={hs:1,rg:1},N=/([a-z])[\s,]*((-?\d*\.?\d*(?:e[\-+]?\d+)?[\s]*,?[\s]*)+)/gi,O=/([rstm])[\s,]*((-?\d*\.?\d*(?:e[\-+]?\d+)?[\s]*,?[\s]*)+)/gi,P=/(-?\d*\.?\d*(?:e[\-+]?\\d+)?)[\s]*,?[\s]*/gi,Q=0,R="S"http://image.tongshuai.com/tongshuai/images/+(+new Date).toString(36),S=function(a){return(a&&a.type?a.type:I)+R+(Q++).toString(36)},T="http://www.w3.org/1999/xlink",U="http://www.w3.org/2000/svg",V={};c.url=function(a){return"url('#"+a+"')"}}c._.$=d,c._.id=S,c.format=function(){var a=/\{([^\}]+)\}/g,b=/(?:(?:^|\.)(.+?)(?=\[|\.|$|\()|\[('|")(.+?)\2\])(\(\))?/g,c=function(a,c,d){var e=d;return c.replace(b,function(a,b,c,d,f){b=b||d,e&&(b in e&&(e=e[b]),"function"==typeof e&&f&&(e=e()))}),e=(null==e||e==d?a:e)+""};return function(b,d){return A(b).replace(a,function(a,b){return c(a,b,d)})}}(),c._.clone=f,c._.cacher=i,c.rad=k,c.deg=l,c.sin=function(a){return D.sin(c.rad(a))},c.tan=function(a){return D.tan(c.rad(a))},c.cos=function(a){return D.cos(c.rad(a))},c.asin=function(a){return c.deg(D.asin(a))},c.acos=function(a){return c.deg(D.acos(a))},c.atan=function(a){return c.deg(D.atan(a))},c.atan2=function(a){return c.deg(D.atan2(a))},c.angle=j,c.len=function(a,b,d,e){return Math.sqrt(c.len2(a,b,d,e))},c.len2=function(a,b,c,d){return(a-c)*(a-c)+(b-d)*(b-d)},c.closestPoint=function(a,b,c){function d(a){var d=a.x-b,e=a.y-c;return d*d+e*e}for(var e,f,g,h,i=a.node,j=i.getTotalLength(),k=j/i.pathSegList.numberOfItems*.125,l=1/0,m=0;j>=m;m+=k)(h=d(g=i.getPointAtLength(m)))<l&&(e=g,f=m,l=h);for(k*=.5;k>.5;){var n,o,p,q,r,s;(p=f-k)>=0&&(r=d(n=i.getPointAtLength(p)))<l?(e=n,f=p,l=r):(q=f+k)<=j&&(s=d(o=i.getPointAtLength(q)))<l?(e=o,f=q,l=s):k*=.5}return e={x:e.x,y:e.y,length:f,distance:Math.sqrt(l)}},c.is=e,c.snapTo=function(a,b,c){if(c=e(c,"finite")?c:10,e(a,"array")){for(var d=a.length;d--;)if(G(a[d]-b)<=c)return a[d]}else{a=+a;var f=b%a;if(c>f)return b-f;if(f>a-c)return b-f+a}return b},c.getRGB=i(function(a){if(!a||(a=A(a)).indexOf("-")+1)return{r:-1,g:-1,b:-1,hex:"none",error:1,toString:Z};if("none"==a)return{r:-1,g:-1,b:-1,hex:"none",toString:Z};if(!(M[z](a.toLowerCase().substring(0,2))||"#"==a.charAt())&&(a=W(a)),!a)return{r:-1,g:-1,b:-1,hex:"none",error:1,toString:Z};var b,d,f,g,h,i,j=a.match(K);return j?(j[2]&&(f=C(j[2].substring(5),16),d=C(j[2].substring(3,5),16),b=C(j[2].substring(1,3),16)),j[3]&&(f=C((h=j[3].charAt(3))+h,16),d=C((h=j[3].charAt(2))+h,16),b=C((h=j[3].charAt(1))+h,16)),j[4]&&(i=j[4].split(L),b=B(i[0]),"%"==i[0].slice(-1)&&(b*=2.55),d=B(i[1]),"%"==i[1].slice(-1)&&(d*=2.55),f=B(i[2]),"%"==i[2].slice(-1)&&(f*=2.55),"rgba"==j[1].toLowerCase().slice(0,4)&&(g=B(i[3])),i[3]&&"%"==i[3].slice(-1)&&(g/=100)),j[5]?(i=j[5].split(L),b=B(i[0]),"%"==i[0].slice(-1)&&(b/=100),d=B(i[1]),"%"==i[1].slice(-1)&&(d/=100),f=B(i[2]),"%"==i[2].slice(-1)&&(f/=100),("deg"==i[0].slice(-3)||"°"==i[0].slice(-1))&&(b/=360),"hsba"==j[1].toLowerCase().slice(0,4)&&(g=B(i[3])),i[3]&&"%"==i[3].slice(-1)&&(g/=100),c.hsb2rgb(b,d,f,g)):j[6]?(i=j[6].split(L),b=B(i[0]),"%"==i[0].slice(-1)&&(b/=100),d=B(i[1]),"%"==i[1].slice(-1)&&(d/=100),f=B(i[2]),"%"==i[2].slice(-1)&&(f/=100),("deg"==i[0].slice(-3)||"°"==i[0].slice(-1))&&(b/=360),"hsla"==j[1].toLowerCase().slice(0,4)&&(g=B(i[3])),i[3]&&"%"==i[3].slice(-1)&&(g/=100),c.hsl2rgb(b,d,f,g)):(b=F(D.round(b),255),d=F(D.round(d),255),f=F(D.round(f),255),g=F(E(g,0),1),j={r:b,g:d,b:f,toString:Z},j.hex="#"+(16777216|f|d<<8|b<<16).toString(16).slice(1),j.opacity=e(g,"finite")?g:1,j)):{r:-1,g:-1,b:-1,hex:"none",error:1,toString:Z}},c),c.hsb=i(function(a,b,d){return c.hsb2rgb(a,b,d).hex}),c.hsl=i(function(a,b,d){return c.hsl2rgb(a,b,d).hex}),c.rgb=i(function(a,b,c,d){if(e(d,"finite")){var f=D.round;return"rgba("+[f(a),f(b),f(c),+d.toFixed(2)]+")"}return"#"+(16777216|c|b<<8|a<<16).toString(16).slice(1)});var W=function(a){var b=y.doc.getElementsByTagName("head")[0]||y.doc.getElementsByTagName("svg")[0],c="rgb(255, 0, 0)";return(W=i(function(a){if("red"==a.toLowerCase())return c;b.style.color=c,b.style.color=a;var d=y.doc.defaultView.getComputedStyle(b,I).getPropertyValue("color");return d==c?null:d}))(a)},X=function(){return"hsb("+[this.h,this.s,this.b]+")"},Y=function(){return"hsl("+[this.h,this.s,this.l]+")"},Z=function(){return 1==this.opacity||null==this.opacity?this.hex:"rgba("+[this.r,this.g,this.b,this.opacity]+")"},$=function(a,b,d){if(null==b&&e(a,"object")&&"r"in a&&"g"in a&&"b"in a&&(d=a.b,b=a.g,a=a.r),null==b&&e(a,string)){var f=c.getRGB(a);a=f.r,b=f.g,d=f.b}return(a>1||b>1||d>1)&&(a/=255,b/=255,d/=255),[a,b,d]},_=function(a,b,d,f){a=D.round(255*a),b=D.round(255*b),d=D.round(255*d);var g={r:a,g:b,b:d,opacity:e(f,"finite")?f:1,hex:c.rgb(a,b,d),toString:Z};return e(f,"finite")&&(g.opacity=f),g};c.color=function(a){var b;return e(a,"object")&&"h"in a&&"s"in a&&"b"in a?(b=c.hsb2rgb(a),a.r=b.r,a.g=b.g,a.b=b.b,a.opacity=1,a.hex=b.hex):e(a,"object")&&"h"in a&&"s"in a&&"l"in a?(b=c.hsl2rgb(a),a.r=b.r,a.g=b.g,a.b=b.b,a.opacity=1,a.hex=b.hex):(e(a,"string")&&(a=c.getRGB(a)),e(a,"object")&&"r"in a&&"g"in a&&"b"in a&&!("error"in a)?(b=c.rgb2hsl(a),a.h=b.h,a.s=b.s,a.l=b.l,b=c.rgb2hsb(a),a.v=b.b):(a={hex:"none"},a.r=a.g=a.b=a.h=a.s=a.v=a.l=-1,a.error=1)),a.toString=Z,a},c.hsb2rgb=function(a,b,c,d){e(a,"object")&&"h"in a&&"s"in a&&"b"in a&&(c=a.b,b=a.s,d=a.o,a=a.h),a*=360;var f,g,h,i,j;return a=a%360/60,j=c*b,i=j*(1-G(a%2-1)),f=g=h=c-j,a=~~a,f+=[j,i,0,0,i,j][a],g+=[i,j,j,i,0,0][a],h+=[0,0,i,j,j,i][a],_(f,g,h,d)},c.hsl2rgb=function(a,b,c,d){e(a,"object")&&"h"in a&&"s"in a&&"l"in a&&(c=a.l,b=a.s,a=a.h),(a>1||b>1||c>1)&&(a/=360,b/=100,c/=100),a*=360;var f,g,h,i,j;return a=a%360/60,j=2*b*(.5>c?c:1-c),i=j*(1-G(a%2-1)),f=g=h=c-j/2,a=~~a,f+=[j,i,0,0,i,j][a],g+=[i,j,j,i,0,0][a],h+=[0,0,i,j,j,i][a],_(f,g,h,d)},c.rgb2hsb=function(a,b,c){c=$(a,b,c),a=c[0],b=c[1],c=c[2];var d,e,f,g;return f=E(a,b,c),g=f-F(a,b,c),d=0==g?null:f==a?(b-c)/g:f==b?(c-a)/g+2:(a-b)/g+4,d=(d+360)%6*60/360,e=0==g?0:g/f,{h:d,s:e,b:f,toString:X}},c.rgb2hsl=function(a,b,c){c=$(a,b,c),a=c[0],b=c[1],c=c[2];var d,e,f,g,h,i;return g=E(a,b,c),h=F(a,b,c),i=g-h,d=0==i?null:g==a?(b-c)/i:g==b?(c-a)/i+2:(a-b)/i+4,d=(d+360)%6*60/360,f=(g+h)/2,e=0==i?0:.5>f?i/(2*f):i/(2-2*f),{h:d,s:e,l:f,toString:Y}},c.parsePathString=function(a){if(!a)return null;var b=c.path(a);if(b.arr)return c.path.clone(b.arr);var d={a:7,c:6,o:2,h:1,l:2,m:2,r:4,q:4,s:4,t:2,v:1,u:3,z:0},f=[];return e(a,"array")&&e(a[0],"array")&&(f=c.path.clone(a)),f.length||A(a).replace(N,function(a,b,c){var e=[],g=b.toLowerCase();if(c.replace(P,function(a,b){b&&e.push(+b)}),"m"==g&&e.length>2&&(f.push([b].concat(e.splice(0,2))),g="l",b="m"==b?"l":"L"),"o"==g&&1==e.length&&f.push([b,e[0]]),"r"==g)f.push([b].concat(e));else for(;e.length>=d[g]&&(f.push([b].concat(e.splice(0,d[g]))),d[g]););}),f.toString=c.path.toString,b.arr=c.path.clone(f),f};var ab=c.parseTransformString=function(a){if(!a)return null;var b=[];return e(a,"array")&&e(a[0],"array")&&(b=c.path.clone(a)),b.length||A(a).replace(O,function(a,c,d){{var e=[];c.toLowerCase()}d.replace(P,function(a,b){b&&e.push(+b)}),b.push([c].concat(e))}),b.toString=c.path.toString,b};c._.svgTransform2string=m,c._.rgTransform=/^[a-z][\s]*-?\.?\d/i,c._.transform2matrix=n,c._unit2px=q;y.doc.contains||y.doc.compareDocumentPosition?function(a,b){var c=9==a.nodeType?a.documentElement:a,d=b&&b.parentNode;return a==d||!(!d||1!=d.nodeType||!(c.contains?c.contains(d):a.compareDocumentPosition&&16&a.compareDocumentPosition(d)))}:function(a,b){if(b)for(;b;)if(b=b.parentNode,b==a)return!0;return!1};c._.getSomeDefs=o,c._.getSomeSVG=p,c.select=function(a){return a=A(a).replace(/([^\\]):/g,"$1\\:"),w(y.doc.querySelector(a))},c.selectAll=function(a){for(var b=y.doc.querySelectorAll(a),d=(c.set||Array)(),e=0;e<b.length;e++)d.push(w(b[e]));return d},setInterval(function(){for(var a in V)if(V[z](a)){var b=V[a],c=b.node;("svg"!=b.type&&!c.ownerSVGElement||"svg"==b.type&&(!c.parentNode||"ownerSVGElement"in c.parentNode&&!c.ownerSVGElement))&&delete V[a]}},1e4),s.prototype.attr=function(a,c){var d=this,f=d.node;if(!a){if(1!=f.nodeType)return{text:f.nodeValue};for(var g=f.attributes,h={},i=0,j=g.length;j>i;i++)h[g[i].nodeName]=g[i].nodeValue;return h}if(e(a,"string")){if(!(arguments.length>1))return b("snap.util.getattr."+a,d).firstDefined();var k={};k[a]=c,a=k}for(var l in a)a[z](l)&&b("snap.util.attr."+l,d,a[l]);return d},c.parse=function(a){var b=y.doc.createDocumentFragment(),c=!0,d=y.doc.createElement("div");if(a=A(a),a.match(/^\s*<\s*svg(?:\s|>)/)||(a="<svg>"+a+"</svg>",c=!1),d.innerHTML=a,a=d.getElementsByTagName("svg")[0])if(c)b=a;else for(;a.firstChild;)b.appendChild(a.firstChild);return new t(b)},c.fragment=function(){for(var a=Array.prototype.slice.call(arguments,0),b=y.doc.createDocumentFragment(),d=0,e=a.length;e>d;d++){var f=a[d];f.node&&f.node.nodeType&&b.appendChild(f.node),f.nodeType&&b.appendChild(f),"string"==typeof f&&b.appendChild(c.parse(f).node)}return new t(b)},c._.make=u,c._.wrap=w,v.prototype.el=function(a,b){var c=u(a,this.node);return b&&c.attr(b),c},s.prototype.children=function(){for(var a=[],b=this.node.childNodes,d=0,e=b.length;e>d;d++)a[d]=c(b[d]);return a},s.prototype.toJSON=function(){var a=[];return x([this],a),a[0]},b.on("snap.util.getattr",function(){var a=b.nt();a=a.substring(a.lastIndexOf(".")+1);var c=a.replace(/[A-Z]/g,function(a){return"-"+a.toLowerCase()});return bb[z](c)?this.node.ownerDocument.defaultView.getComputedStyle(this.node,null).getPropertyValue(c):d(this.node,a)});var bb={"alignment-baseline":0,"baseline-shift":0,clip:0,"clip-path":0,"clip-rule":0,color:0,"color-interpolation":0,"color-interpolation-filters":0,"color-profile":0,"color-rendering":0,cursor:0,direction:0,display:0,"dominant-baseline":0,"enable-background":0,fill:0,"fill-opacity":0,"fill-rule":0,filter:0,"flood-color":0,"flood-opacity":0,font:0,"font-family":0,"font-size":0,"font-size-adjust":0,"font-stretch":0,"font-style":0,"font-variant":0,"font-weight":0,"glyph-orientation-horizontal":0,"glyph-orientation-vertical":0,"image-rendering":0,kerning:0,"letter-spacing":0,"lighting-color":0,marker:0,"marker-end":0,"marker-mid":0,"marker-start":0,mask:0,opacity:0,overflow:0,"pointer-events":0,"shape-rendering":0,"stop-color":0,"stop-opacity":0,stroke:0,"stroke-dasharray":0,"stroke-dashoffset":0,"stroke-linecap":0,"stroke-linejoin":0,"stroke-miterlimit":0,"stroke-opacity":0,"stroke-width":0,"text-anchor":0,"text-decoration":0,"text-rendering":0,"unicode-bidi":0,visibility:0,"word-spacing":0,"writing-mode":0};b.on("http://image.tongshuai.com/tongshuai/images/snap.util.attr",function(a){var c=b.nt(),e={};c=c.substring(c.lastIndexOf(".")+1),e[c]=a;var f=c.replace(/-(\w)/gi,function(a,b){return b.toUpperCase()}),g=c.replace(/[A-Z]/g,function(a){return"-"+a.toLowerCase()});bb[z](g)?this.node.style[f]=null==a?I:a:d(this.node,e)}),function(){}(v.prototype),c.ajax=function(a,c,d,f){var g=new XMLHttpRequest,h=S();if(g){if(e(c,"function"))f=d,d=c,c=null;else if(e(c,"object")){var i=[];for(var j in c)c.hasOwnProperty(j)&&i.push(encodeURIComponent(j)+"="+encodeURIComponent(c[j]));c=i.join("&")}return g.open(c?"POST":"GET",a,!0),c&&(g.setRequestHeader("X-Requested-With","XMLHttpRequest"),g.setRequestHeader("Content-type","application/x-www-form-urlencoded")),d&&(b.once("snap.ajax."+h+".0",d),b.once("snap.ajax."+h+".200",d),b.once("snap.ajax."+h+".304",d)),g.onreadystatechange=function(){4==g.readyState&&b("snap.ajax."+h+"."+g.status,f,g)},4==g.readyState?g:(g.send(c),g)}},c.load=function(a,b,d){c.ajax(a,function(a){var e=c.parse(a.responseText);d?b.call(d,e):b(e)})};var cb=function(a){var b=a.getBoundingClientRect(),c=a.ownerDocument,d=c.body,e=c.documentElement,f=e.clientTop||d.clientTop||0,h=e.clientLeft||d.clientLeft||0,i=b.top+(g.win.pageYOffset||e.scrollTop||d.scrollTop)-f,j=b.left+(g.win.pageXOffset||e.scrollLeft||d.scrollLeft)-h;return{y:i,x:j}};return c.getElementByPoint=function(a,b){var c=this,d=(c.canvas,y.doc.elementFromPoint(a,b));if(y.win.opera&&"svg"==d.tagName){var e=cb(d),f=d.createSVGRect();f.x=a-e.x,f.y=b-e.y,f.width=f.height=1;var g=d.getIntersectionList(f,null);g.length&&(d=g[g.length-1])}return d?w(d):null},c.plugin=function(a){a(c,s,v,y,t)},y.win.Snap=c,c}(a||this);return d.plugin(function(d,e,f,g,h){function i(a,b){if(null==b){var c=!0;if(b=a.node.getAttribute("linearGradient"==a.type||"radialGradient"http://image.tongshuai.com/tongshuai/images/==a.type?"gradientTransform":"pattern"http://image.tongshuai.com/tongshuai/images/==a.type?"patternTransform":"transform"),!b)return new d.Matrix;b=d._.svgTransform2string(b)}else b=d._.rgTransform.test(b)?o(b).replace(/\.{3}|\u2026/g,a._.transform||""):d._.svgTransform2string(b),n(b,"array")&&(b=d.path?d.path.toString.call(b):o(b)),a._.transform=b;var e=d._.transform2matrix(b,a.getBBox(1));return c?e:void(a.matrix=e)}function j(a){function b(a,b){var c=q(a.node,b);c=c&&c.match(f),c=c&&c[2],c&&"#"==c.charAt()&&(c=c.substring(1),c&&(h[c]=(h[c]||[]).concat(function(c){var d={};d[b]=URL(c),q(a.node,d)})))}function c(a){var b=q(a.node,"xlink:href");b&&"#"==b.charAt()&&(b=b.substring(1),b&&(h[b]=(h[b]||[]).concat(function(b){a.attr("xlink:href","#"+b)})))}for(var d,e=a.selectAll("*"),f=/^\s*url\(("|'|)(.*)\1\)\s*$/,g=[],h={},i=0,j=e.length;j>i;i++){d=e[i],b(d,"fill"),b(d,"stroke"),b(d,"filter"),b(d,"mask"),b(d,"clip-path"),c(d);var k=q(d.node,"id");k&&(q(d.node,{id:d.id}),g.push({old:k,id:d.id}))}for(i=0,j=g.length;j>i;i++){var l=h[g[i].old];if(l)for(var m=0,n=l.length;n>m;m++)l[m](g[i].id)}}function k(a,b,c){return function(d){var e=d.slice(a,b);return 1==e.length&&(e=e[0]),c?c(e):e}}function l(a){return function(){var b=a?"<"+this.type:"",c=this.node.attributes,d=this.node.childNodes;if(a)for(var e=0,f=c.length;f>e;e++)b+=" "+c[e].name+'="'+c[e].value.replace(/"/g,'\\"')+'"';if(d.length){for(a&&(b+=">"),e=0,f=d.length;f>e;e++)3==d[e].nodeType?b+=d[e].nodeValue:1==d[e].nodeType&&(b+=u(d[e]).toString());a&&(b+="</"+this.type+">")}else a&&(b+="/>");return b}}var m=e.prototype,n=d.is,o=String,p=d._unit2px,q=d._.$,r=d._.make,s=d._.getSomeDefs,t="hasOwnProperty",u=d._.wrap;m.getBBox=function(a){if(!d.Matrix||!d.path)return this.node.getBBox();var b=this,c=new d.Matrix;if(b.removed)return d._.box();for(;"use"==b.type;)if(a||(c=c.add(b.transform().localMatrix.translate(b.attr("x")||0,b.attr("y")||0))),b.original)b=b.original;else{var e=b.attr("xlink:href");b=b.original=b.node.ownerDocument.getElementById(e.substring(e.indexOf("#")+1))}var f=b._,g=d.path.get[b.type]||d.path.get.deflt;try{return a?(f.bboxwt=g?d.path.getBBox(b.realPath=g(b)):d._.box(b.node.getBBox()),d._.box(f.bboxwt)):(b.realPath=g(b),b.matrix=b.transform().localMatrix,f.bbox=d.path.getBBox(d.path.map(b.realPath,c.add(b.matrix))),d._.box(f.bbox))}catch(h){return d._.box()}};var v=function(){return this.string};m.transform=function(a){var b=this._;if(null==a){for(var c,e=this,f=new d.Matrix(this.node.getCTM()),g=i(this),h=[g],j=new d.Matrix,k=g.toTransformString(),l=o(g)==o(this.matrix)?o(b.transform):k;"svg"!=e.type&&(e=e.parent());)h.push(i(e));for(c=h.length;c--;)j.add(h[c]);return{string:l,globalMatrix:f,totalMatrix:j,localMatrix:g,diffMatrix:f.clone().add(g.invert()),global:f.toTransformString(),total:j.toTransformString(),local:k,toString:v}}return a instanceof d.Matrix?(this.matrix=a,this._.transform=a.toTransformString()):i(this,a),this.node&&("linearGradient"==this.type||"radialGradient"http://image.tongshuai.com/tongshuai/images/==this.type?q(this.node,{gradientTransform:this.matrix}):"pattern"http://image.tongshuai.com/tongshuai/images/==this.type?q(this.node,{patternTransform:this.matrix}):q(this.node,{transform:this.matrix})),this},m.parent=function(){return u(this.node.parentNode)},m.append=m.add=function(a){if(a){if("set"==a.type){var b=this;return a.forEach(function(a){b.add(a)}),this}a=u(a),this.node.appendChild(a.node),a.paper=this.paper}return this},m.appendTo=function(a){return a&&(a=u(a),a.append(this)),this},m.prepend=function(a){if(a){if("set"==a.type){var b,c=this;return a.forEach(function(a){b?b.after(a):c.prepend(a),b=a}),this}a=u(a);var d=a.parent();this.node.insertBefore(a.node,this.node.firstChild),this.add&&this.add(),a.paper=this.paper,this.parent()&&this.parent().add(),d&&d.add()}return this},m.prependTo=function(a){return a=u(a),a.prepend(this),this},m.before=function(a){if("set"==a.type){var b=this;return a.forEach(function(a){var c=a.parent();b.node.parentNode.insertBefore(a.node,b.node),c&&c.add()}),this.parent().add(),this}a=u(a);var c=a.parent();return this.node.parentNode.insertBefore(a.node,this.node),this.parent()&&this.parent().add(),c&&c.add(),a.paper=this.paper,this},m.after=function(a){a=u(a);var b=a.parent();return this.node.nextSibling?this.node.parentNode.insertBefore(a.node,this.node.nextSibling):this.node.parentNode.appendChild(a.node),this.parent()&&this.parent().add(),b&&b.add(),a.paper=this.paper,this},m.insertBefore=function(a){a=u(a);var b=this.parent();return a.node.parentNode.insertBefore(this.node,a.node),this.paper=a.paper,b&&b.add(),a.parent()&&a.parent().add(),this},m.insertAfter=function(a){a=u(a);var b=this.parent();return a.node.parentNode.insertBefore(this.node,a.node.nextSibling),this.paper=a.paper,b&&b.add(),a.parent()&&a.parent().add(),this},m.remove=function(){var a=this.parent();return this.node.parentNode&&this.node.parentNode.removeChild(this.node),delete this.paper,this.removed=!0,a&&a.add(),this},m.select=function(a){return u(this.node.querySelector(a))},m.selectAll=function(a){for(var b=this.node.querySelectorAll(a),c=(d.set||Array)(),e=0;e<b.length;e++)c.push(u(b[e]));return c},m.asPX=function(a,b){return null==b&&(b=this.attr(a)),+p(this,a,b)},m.use=function(){var a,b=this.node.id;return b||(b=this.id,q(this.node,{id:b})),a="linearGradient"==this.type||"radialGradient"==this.type||"pattern"http://image.tongshuai.com/tongshuai/images/==this.type?r(this.type,this.node.parentNode):r("use",this.node.parentNode),q(a.node,{"xlink:href":"#"+b}),a.original=this,a},m.clone=function(){var a=u(this.node.cloneNode(!0));return q(a.node,"id")&&q(a.node,{id:a.id}),j(a),a.insertAfter(this),a},m.toDefs=function(){var a=s(this);return a.appendChild(this.node),this},m.pattern=m.toPattern=function(a,b,c,d){var e=r("pattern",s(this));return null==a&&(a=this.getBBox()),n(a,"object")&&"x"in a&&(b=a.y,c=a.width,d=a.height,a=a.x),q(e.node,{x:a,y:b,width:c,height:d,patternUnits:"userSpaceOnUse",id:e.id,viewBox:[a,b,c,d].join(" ")}),e.node.appendChild(this.node),e},m.marker=function(a,b,c,d,e,f){var g=r("marker",s(this));return null==a&&(a=this.getBBox()),n(a,"object")&&"x"in a&&(b=a.y,c=a.width,d=a.height,e=a.refX||a.cx,f=a.refY||a.cy,a=a.x),q(g.node,{viewBox:[a,b,c,d].join(" "),markerWidth:c,markerHeight:d,orient:"auto",refX:e||0,refY:f||0,id:g.id}),g.node.appendChild(this.node),g};var w=function(a,b,d,e){"function"!=typeof d||d.length||(e=d,d=c.linear),this.attr=a,this.dur=b,d&&(this.easing=d),e&&(this.callback=e)};d._.Animation=w,d.animation=function(a,b,c,d){return new w(a,b,c,d)},m.inAnim=function(){var a=this,b=[];for(var c in a.anims)a.anims[t](c)&&!function(a){b.push({anim:new w(a._attrs,a.dur,a.easing,a._callback),mina:a,curStatus:a.status(),status:function(b){return a.status(b)},stop:function(){a.stop()}})}(a.anims[c]);return b},d.animate=function(a,d,e,f,g,h){"function"!=typeof g||g.length||(h=g,g=c.linear);var i=c.time(),j=c(a,d,i,i+f,c.time,e,g);return h&&b.once("mina.finish."+j.id,h),j},m.stop=function(){for(var a=this.inAnim(),b=0,c=a.length;c>b;b++)a[b].stop();return this},m.animate=function(a,d,e,f){"function"!=typeof e||e.length||(f=e,e=c.linear),a instanceof w&&(f=a.callback,e=a.easing,d=a.dur,a=a.attr);var g,h,i,j,l=[],m=[],p={},q=this;for(var r in a)if(a[t](r)){q.equal?(j=q.equal(r,o(a[r])),g=j.from,h=j.to,i=j.f):(g=+q.attr(r),h=+a[r]);var s=n(g,"array")?g.length:1;p[r]=k(l.length,l.length+s,i),l=l.concat(g),m=m.concat(h)}var u=c.time(),v=c(l,m,u,u+d,c.time,function(a){var b={};for(var c in p)p[t](c)&&(b[c]=p[c](a));q.attr(b)},e);return q.anims[v.id]=v,v._attrs=a,v._callback=f,b("snap.animcreated."+q.id,v),b.once("mina.finish."+v.id,function(){delete q.anims[v.id],f&&f.call(q)}),b.once("mina.stop."+v.id,function(){delete q.anims[v.id]}),q};var x={};m.data=function(a,c){var e=x[this.id]=x[this.id]||{};if(0==arguments.length)return b("snap.data.get."+this.id,this,e,null),e;
if(1==arguments.length){if(d.is(a,"object")){for(var f in a)a[t](f)&&this.data(f,a[f]);return this}return b("snap.data.get."+this.id,this,e[a],a),e[a]}return e[a]=c,b("snap.data.set."+this.id,this,c,a),this},m.removeData=function(a){return null==a?x[this.id]={}:x[this.id]&&delete x[this.id][a],this},m.outerSVG=m.toString=l(1),m.innerSVG=l(),m.toDataURL=function(){if(a&&a.btoa){var b=this.getBBox(),c=d.format('<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="{width}" height="{height}" viewBox="{x} {y} {width} {height}">{contents}</svg>',{x:+b.x.toFixed(3),y:+b.y.toFixed(3),width:+b.width.toFixed(3),height:+b.height.toFixed(3),contents:this.outerSVG()});return"data:image/svg+xml;base64,"+btoa(unescape(encodeURIComponent(c)))}},h.prototype.select=m.select,h.prototype.selectAll=m.selectAll}),d.plugin(function(a){function b(a,b,d,e,f,g){return null==b&&"[object SVGMatrix]"==c.call(a)?(this.a=a.a,this.b=a.b,this.c=a.c,this.d=a.d,this.e=a.e,void(this.f=a.f)):void(null!=a?(this.a=+a,this.b=+b,this.c=+d,this.d=+e,this.e=+f,this.f=+g):(this.a=1,this.b=0,this.c=0,this.d=1,this.e=0,this.f=0))}var c=Object.prototype.toString,d=String,e=Math,f="";!function(c){function g(a){return a[0]*a[0]+a[1]*a[1]}function h(a){var b=e.sqrt(g(a));a[0]&&(a[0]/=b),a[1]&&(a[1]/=b)}c.add=function(a,c,d,e,f,g){var h,i,j,k,l=[[],[],[]],m=[[this.a,this.c,this.e],[this.b,this.d,this.f],[0,0,1]],n=[[a,d,f],[c,e,g],[0,0,1]];for(a&&a instanceof b&&(n=[[a.a,a.c,a.e],[a.b,a.d,a.f],[0,0,1]]),h=0;3>h;h++)for(i=0;3>i;i++){for(k=0,j=0;3>j;j++)k+=m[h][j]*n[j][i];l[h][i]=k}return this.a=l[0][0],this.b=l[1][0],this.c=l[0][1],this.d=l[1][1],this.e=l[0][2],this.f=l[1][2],this},c.invert=function(){var a=this,c=a.a*a.d-a.b*a.c;return new b(a.d/c,-a.b/c,-a.c/c,a.a/c,(a.c*a.f-a.d*a.e)/c,(a.b*a.e-a.a*a.f)/c)},c.clone=function(){return new b(this.a,this.b,this.c,this.d,this.e,this.f)},c.translate=function(a,b){return this.add(1,0,0,1,a,b)},c.scale=function(a,b,c,d){return null==b&&(b=a),(c||d)&&this.add(1,0,0,1,c,d),this.add(a,0,0,b,0,0),(c||d)&&this.add(1,0,0,1,-c,-d),this},c.rotate=function(b,c,d){b=a.rad(b),c=c||0,d=d||0;var f=+e.cos(b).toFixed(9),g=+e.sin(b).toFixed(9);return this.add(f,g,-g,f,c,d),this.add(1,0,0,1,-c,-d)},c.x=function(a,b){return a*this.a+b*this.c+this.e},c.y=function(a,b){return a*this.b+b*this.d+this.f},c.get=function(a){return+this[d.fromCharCode(97+a)].toFixed(4)},c.toString=function(){return"matrix("+[this.get(0),this.get(1),this.get(2),this.get(3),this.get(4),this.get(5)].join()+")"},c.offset=function(){return[this.e.toFixed(4),this.f.toFixed(4)]},c.determinant=function(){return this.a*this.d-this.b*this.c},c.split=function(){var b={};b.dx=this.e,b.dy=this.f;var c=[[this.a,this.c],[this.b,this.d]];b.scalex=e.sqrt(g(c[0])),h(c[0]),b.shear=c[0][0]*c[1][0]+c[0][1]*c[1][1],c[1]=[c[1][0]-c[0][0]*b.shear,c[1][1]-c[0][1]*b.shear],b.scaley=e.sqrt(g(c[1])),h(c[1]),b.shear/=b.scaley,this.determinant()<0&&(b.scalex=-b.scalex);var d=-c[0][1],f=c[1][1];return 0>f?(b.rotate=a.deg(e.acos(f)),0>d&&(b.rotate=360-b.rotate)):b.rotate=a.deg(e.asin(d)),b.isSimple=!(+b.shear.toFixed(9)||b.scalex.toFixed(9)!=b.scaley.toFixed(9)&&b.rotate),b.isSuperSimple=!+b.shear.toFixed(9)&&b.scalex.toFixed(9)==b.scaley.toFixed(9)&&!b.rotate,b.noRotation=!+b.shear.toFixed(9)&&!b.rotate,b},c.toTransformString=function(a){var b=a||this.split();return+b.shear.toFixed(9)?"m"+[this.get(0),this.get(1),this.get(2),this.get(3),this.get(4),this.get(5)]:(b.scalex=+b.scalex.toFixed(4),b.scaley=+b.scaley.toFixed(4),b.rotate=+b.rotate.toFixed(4),(b.dx||b.dy?"t"+[+b.dx.toFixed(4),+b.dy.toFixed(4)]:f)+(1!=b.scalex||1!=b.scaley?"s"+[b.scalex,b.scaley,0,0]:f)+(b.rotate?"r"+[+b.rotate.toFixed(4),0,0]:f))}}(b.prototype),a.Matrix=b,a.matrix=function(a,c,d,e,f,g){return new b(a,c,d,e,f,g)}}),d.plugin(function(a,c,d,e,f){function g(d){return function(e){if(b.stop(),e instanceof f&&1==e.node.childNodes.length&&("radialGradient"==e.node.firstChild.tagName||"linearGradient"==e.node.firstChild.tagName||"pattern"==e.node.firstChild.tagName)&&(e=e.node.firstChild,n(this).appendChild(e),e=l(e)),e instanceof c)if("radialGradient"==e.type||"linearGradient"==e.type||"pattern"==e.type){e.node.id||p(e.node,{id:e.id});var g=q(e.node.id)}else g=e.attr(d);else if(g=a.color(e),g.error){var h=a(n(this).ownerSVGElement).gradient(e);h?(h.node.id||p(h.node,{id:h.id}),g=q(h.node.id)):g=e}else g=r(g);var i={};i[d]=g,p(this.node,i),this.node.style[d]=t}}function h(a){b.stop(),a==+a&&(a+="px"),this.node.style.fontSize=a}function i(a){for(var b=[],c=a.childNodes,d=0,e=c.length;e>d;d++){var f=c[d];3==f.nodeType&&b.push(f.nodeValue),"tspan"==f.tagName&&b.push(1==f.childNodes.length&&3==f.firstChild.nodeType?f.firstChild.nodeValue:i(f))}return b}function j(){return b.stop(),this.node.style.fontSize}var k=a._.make,l=a._.wrap,m=a.is,n=a._.getSomeDefs,o=/^url\(#?([^)]+)\)$/,p=a._.$,q=a.url,r=String,s=a._.separator,t="";b.on("http://image.tongshuai.com/tongshuai/images/snap.util.attr.mask",function(a){if(a instanceof c||a instanceof f){if(b.stop(),a instanceof f&&1==a.node.childNodes.length&&(a=a.node.firstChild,n(this).appendChild(a),a=l(a)),"mask"==a.type)var d=a;else d=k("mask",n(this)),d.node.appendChild(a.node);!d.node.id&&p(d.node,{id:d.id}),p(this.node,{mask:q(d.id)})}}),function(a){b.on("http://image.tongshuai.com/tongshuai/images/snap.util.attr.clip",a),b.on("snap.util.attr.clip-path",a),b.on("snap.util.attr.clipPath",a)}(function(a){if(a instanceof c||a instanceof f){if(b.stop(),"clipPath"==a.type)var d=a;else d=k("clipPath",n(this)),d.node.appendChild(a.node),!d.node.id&&p(d.node,{id:d.id});p(this.node,{"clip-path":q(d.node.id||d.id)})}}),b.on("http://image.tongshuai.com/tongshuai/images/snap.util.attr.fill",g("fill")),b.on("snap.util.attr.stroke",g("stroke"));var u=/^([lr])(?:\(([^)]*)\))?(.*)$/i;b.on("snap.util.grad.parse",function(a){a=r(a);var b=a.match(u);if(!b)return null;var c=b[1],d=b[2],e=b[3];return d=d.split(/\s*,\s*/).map(function(a){return+a==a?+a:a}),1==d.length&&0==d[0]&&(d=[]),e=e.split("-"),e=e.map(function(a){a=a.split(":");var b={color:a[0]};return a[1]&&(b.offset=parseFloat(a[1])),b}),{type:c,params:d,stops:e}}),b.on("snap.util.attr.d",function(c){b.stop(),m(c,"array")&&m(c[0],"array")&&(c=a.path.toString.call(c)),c=r(c),c.match(/[ruo]/i)&&(c=a.path.toAbsolute(c)),p(this.node,{d:c})})(-1),b.on("snap.util.attr.#text",function(a){b.stop(),a=r(a);for(var c=e.doc.createTextNode(a);this.node.firstChild;)this.node.removeChild(this.node.firstChild);this.node.appendChild(c)})(-1),b.on("http://image.tongshuai.com/tongshuai/images/snap.util.attr.path",function(a){b.stop(),this.attr({d:a})})(-1),b.on("snap.util.attr.class",function(a){b.stop(),this.node.className.baseVal=a})(-1),b.on("snap.util.attr.viewBox",function(a){var c;c=m(a,"object")&&"x"in a?[a.x,a.y,a.width,a.height].join(" "):m(a,"array")?a.join(" "):a,p(this.node,{viewBox:c}),b.stop()})(-1),b.on("snap.util.attr.transform",function(a){this.transform(a),b.stop()})(-1),b.on("snap.util.attr.r",function(a){"rect"==this.type&&(b.stop(),p(this.node,{rx:a,ry:a}))})(-1),b.on("snap.util.attr.textpath",function(a){if(b.stop(),"text"==this.type){var d,e,f;if(!a&&this.textPath){for(e=this.textPath;e.node.firstChild;)this.node.appendChild(e.node.firstChild);return e.remove(),void delete this.textPath}if(m(a,"string")){var g=n(this),h=l(g.parentNode).path(a);g.appendChild(h.node),d=h.id,h.attr({id:d})}else a=l(a),a instanceof c&&(d=a.attr("id"),d||(d=a.id,a.attr({id:d})));if(d)if(e=this.textPath,f=this.node,e)e.attr({"xlink:href":"#"+d});else{for(e=p("textPath",{"xlink:href":"#"+d});f.firstChild;)e.appendChild(f.firstChild);f.appendChild(e),this.textPath=l(e)}}})(-1),b.on("http://image.tongshuai.com/tongshuai/images/snap.util.attr.text",function(a){if("text"==this.type){for(var c=this.node,d=function(a){var b=p("tspan");if(m(a,"array"))for(var c=0;c<a.length;c++)b.appendChild(d(a[c]));else b.appendChild(e.doc.createTextNode(a));return b.normalize&&b.normalize(),b};c.firstChild;)c.removeChild(c.firstChild);for(var f=d(a);f.firstChild;)c.appendChild(f.firstChild)}b.stop()})(-1),b.on("snap.util.attr.fontSize",h)(-1),b.on("snap.util.attr.font-size",h)(-1),b.on("snap.util.getattr.transform",function(){return b.stop(),this.transform()})(-1),b.on("snap.util.getattr.textpath",function(){return b.stop(),this.textPath})(-1),function(){function c(c){return function(){b.stop();var d=e.doc.defaultView.getComputedStyle(this.node,null).getPropertyValue("marker-"+c);return"none"==d?d:a(e.doc.getElementById(d.match(o)[1]))}}function d(a){return function(c){b.stop();var d="marker"+a.charAt(0).toUpperCase()+a.substring(1);if(""==c||!c)return void(this.node.style[d]="none");if("marker"==c.type){var e=c.node.id;return e||p(c.node,{id:c.id}),void(this.node.style[d]=q(e))}}}b.on("snap.util.getattr.marker-end",c("end"))(-1),b.on("snap.util.getattr.markerEnd",c("end"))(-1),b.on("snap.util.getattr.marker-start",c("start"))(-1),b.on("snap.util.getattr.markerStart",c("start"))(-1),b.on("snap.util.getattr.marker-mid",c("mid"))(-1),b.on("snap.util.getattr.markerMid",c("mid"))(-1),b.on("snap.util.attr.marker-end",d("end"))(-1),b.on("snap.util.attr.markerEnd",d("end"))(-1),b.on("snap.util.attr.marker-start",d("start"))(-1),b.on("snap.util.attr.markerStart",d("start"))(-1),b.on("snap.util.attr.marker-mid",d("mid"))(-1),b.on("snap.util.attr.markerMid",d("mid"))(-1)}(),b.on("snap.util.getattr.r",function(){return"rect"==this.type&&p(this.node,"rx")==p(this.node,"ry")?(b.stop(),p(this.node,"rx")):void 0})(-1),b.on("http://image.tongshuai.com/tongshuai/images/snap.util.getattr.text",function(){if("text"==this.type||"tspan"==this.type){b.stop();var a=i(this.node);return 1==a.length?a[0]:a}})(-1),b.on("snap.util.getattr.#text",function(){return this.node.textContent})(-1),b.on("snap.util.getattr.viewBox",function(){b.stop();var c=p(this.node,"viewBox");return c?(c=c.split(s),a._.box(+c[0],+c[1],+c[2],+c[3])):void 0})(-1),b.on("snap.util.getattr.points",function(){var a=p(this.node,"points");return b.stop(),a?a.split(s):void 0})(-1),b.on("http://image.tongshuai.com/tongshuai/images/snap.util.getattr.path",function(){var a=p(this.node,"d");return b.stop(),a})(-1),b.on("snap.util.getattr.class",function(){return this.node.className.baseVal})(-1),b.on("snap.util.getattr.fontSize",j)(-1),b.on("snap.util.getattr.font-size",j)(-1)}),d.plugin(function(a,b){var c=/\S+/g,d=String,e=b.prototype;e.addClass=function(a){var b,e,f,g,h=d(a||"").match(c)||[],i=this.node,j=i.className.baseVal,k=j.match(c)||[];if(h.length){for(b=0;f=h[b++];)e=k.indexOf(f),~e||k.push(f);g=k.join(" "),j!=g&&(i.className.baseVal=g)}return this},e.removeClass=function(a){var b,e,f,g,h=d(a||"").match(c)||[],i=this.node,j=i.className.baseVal,k=j.match(c)||[];if(k.length){for(b=0;f=h[b++];)e=k.indexOf(f),~e&&k.splice(e,1);g=k.join(" "),j!=g&&(i.className.baseVal=g)}return this},e.hasClass=function(a){var b=this.node,d=b.className.baseVal,e=d.match(c)||[];return!!~e.indexOf(a)},e.toggleClass=function(a,b){if(null!=b)return b?this.addClass(a):this.removeClass(a);var d,e,f,g,h=(a||"").match(c)||[],i=this.node,j=i.className.baseVal,k=j.match(c)||[];for(d=0;f=h[d++];)e=k.indexOf(f),~e?k.splice(e,1):k.push(f);return g=k.join(" "),j!=g&&(i.className.baseVal=g),this}}),d.plugin(function(){function a(a){return a}function c(a){return function(b){return+b.toFixed(3)+a}}var d={"+":function(a,b){return a+b},"-":function(a,b){return a-b},"/":function(a,b){return a/b},"*":function(a,b){return a*b}},e=String,f=/[a-z]+$/i,g=/^\s*([+\-\/*])\s*=\s*([\d.eE+\-]+)\s*([^\d\s]+)?\s*$/;b.on("http://image.tongshuai.com/tongshuai/images/snap.util.attr",function(a){var c=e(a).match(g);if(c){var h=b.nt(),i=h.substring(h.lastIndexOf(".")+1),j=this.attr(i),k={};b.stop();var l=c[3]||"",m=j.match(f),n=d[c[1]];if(m&&m==l?a=n(parseFloat(j),+c[2]):(j=this.asPX(i),a=n(this.asPX(i),this.asPX(i,c[2]+l))),isNaN(j)||isNaN(a))return;k[i]=a,this.attr(k)}})(-10),b.on("snap.util.equal",function(h,i){var j=e(this.attr(h)||""),k=e(i).match(g);if(k){b.stop();var l=k[3]||"",m=j.match(f),n=d[k[1]];return m&&m==l?{from:parseFloat(j),to:n(parseFloat(j),+k[2]),f:c(m)}:(j=this.asPX(h),{from:j,to:n(j,this.asPX(h,k[2]+l)),f:a})}})(-10)}),d.plugin(function(c,d,e,f){var g=e.prototype,h=c.is;g.rect=function(a,b,c,d,e,f){var g;return null==f&&(f=e),h(a,"object")&&"[object Object]"==a?g=a:null!=a&&(g={x:a,y:b,width:c,height:d},null!=e&&(g.rx=e,g.ry=f)),this.el("rect",g)},g.circle=function(a,b,c){var d;return h(a,"object")&&"[object Object]"==a?d=a:null!=a&&(d={cx:a,cy:b,r:c}),this.el("circle",d)};var i=function(){function a(){this.parentNode.removeChild(this)}return function(b,c){var d=f.doc.createElement("img"),e=f.doc.body;d.style.cssText="position:absolute;left:-9999em;top:-9999em",d.onload=function(){c.call(d),d.onload=d.onerror=null,e.removeChild(d)},d.onerror=a,e.appendChild(d),d.src=b}}();g.image=function(a,b,d,e,f){var g=this.el("image");if(h(a,"object")&&"src"in a)g.attr(a);else if(null!=a){var j={"xlink:href":a,preserveAspectRatio:"none"};null!=b&&null!=d&&(j.x=b,j.y=d),null!=e&&null!=f?(j.width=e,j.height=f):i(a,function(){c._.$(g.node,{width:this.offsetWidth,height:this.offsetHeight})}),c._.$(g.node,j)}return g},g.ellipse=function(a,b,c,d){var e;return h(a,"object")&&"[object Object]"==a?e=a:null!=a&&(e={cx:a,cy:b,rx:c,ry:d}),this.el("ellipse",e)},g.path=function(a){var b;return h(a,"object")&&!h(a,"array")?b=a:a&&(b={d:a}),this.el("path",b)},g.group=g.g=function(a){var b=this.el("g"http://image.tongshuai.com/tongshuai/images/);return 1==arguments.length&&a&&!a.type?b.attr(a):arguments.length&&b.add(Array.prototype.slice.call(arguments,0)),b},g.svg=function(a,b,c,d,e,f,g,i){var j={};return h(a,"object")&&null==b?j=a:(null!=a&&(j.x=a),null!=b&&(j.y=b),null!=c&&(j.width=c),null!=d&&(j.height=d),null!=e&&null!=f&&null!=g&&null!=i&&(j.viewBox=[e,f,g,i])),this.el("svg",j)},g.mask=function(a){var b=this.el("mask"http://image.tongshuai.com/tongshuai/images/);return 1==arguments.length&&a&&!a.type?b.attr(a):arguments.length&&b.add(Array.prototype.slice.call(arguments,0)),b},g.ptrn=function(a,b,c,d,e,f,g,i){if(h(a,"object"))var j=a;else j={patternUnits:"userSpaceOnUse"},a&&(j.x=a),b&&(j.y=b),null!=c&&(j.width=c),null!=d&&(j.height=d),j.viewBox=null!=e&&null!=f&&null!=g&&null!=i?[e,f,g,i]:[a||0,b||0,c||0,d||0];return this.el("pattern",j)},g.use=function(a){return null!=a?(a instanceof d&&(a.attr("id")||a.attr({id:c._.id(a)}),a=a.attr("id")),"#"==String(a).charAt()&&(a=a.substring(1)),this.el("use",{"xlink:href":"#"+a})):d.prototype.use.call(this)},g.symbol=function(a,b,c,d){var e={};return null!=a&&null!=b&&null!=c&&null!=d&&(e.viewBox=[a,b,c,d]),this.el("symbol",e)},g.text=function(a,b,c){var d={};return h(a,"object")?d=a:null!=a&&(d={x:a,y:b,text:c||""}),this.el("text",d)},g.line=function(a,b,c,d){var e={};return h(a,"object")?e=a:null!=a&&(e={x1:a,x2:c,y1:b,y2:d}),this.el("line",e)},g.polyline=function(a){arguments.length>1&&(a=Array.prototype.slice.call(arguments,0));var b={};return h(a,"object")&&!h(a,"array")?b=a:null!=a&&(b={points:a}),this.el("polyline",b)},g.polygon=function(a){arguments.length>1&&(a=Array.prototype.slice.call(arguments,0));var b={};return h(a,"object")&&!h(a,"array")?b=a:null!=a&&(b={points:a}),this.el("polygon",b)},function(){function d(){return this.selectAll("stop")}function e(a,b){var d=k("stop"),e={offset:+b+"%"};return a=c.color(a),e["stop-color"]=a.hex,a.opacity<1&&(e["stop-opacity"]=a.opacity),k(d,e),this.node.appendChild(d),this}function f(){if("linearGradient"==this.type){var a=k(this.node,"x1")||0,b=k(this.node,"x2")||1,d=k(this.node,"y1")||0,e=k(this.node,"y2")||0;return c._.box(a,d,math.abs(b-a),math.abs(e-d))}var f=this.node.cx||.5,g=this.node.cy||.5,h=this.node.r||0;return c._.box(f-h,g-h,2*h,2*h)}function h(a,c){function d(a,b){for(var c=(b-l)/(a-m),d=m;a>d;d++)g[d].offset=+(+l+c*(d-m)).toFixed(2);m=a,l=b}var e,f=b("snap.util.grad.parse",null,c).firstDefined();if(!f)return null;f.params.unshift(a),e="l"==f.type.toLowerCase()?i.apply(0,f.params):j.apply(0,f.params),f.type!=f.type.toLowerCase()&&k(e.node,{gradientUnits:"userSpaceOnUse"});var g=f.stops,h=g.length,l=0,m=0;h--;for(var n=0;h>n;n++)"offset"in g[n]&&d(n,g[n].offset);for(g[h].offset=g[h].offset||100,d(h,g[h].offset),n=0;h>=n;n++){var o=g[n];e.addStop(o.color,o.offset)}return e}function i(a,b,g,h,i){var j=c._.make("linearGradient",a);return j.stops=d,j.addStop=e,j.getBBox=f,null!=b&&k(j.node,{x1:b,y1:g,x2:h,y2:i}),j}function j(a,b,g,h,i,j){var l=c._.make("radialGradient",a);return l.stops=d,l.addStop=e,l.getBBox=f,null!=b&&k(l.node,{cx:b,cy:g,r:h}),null!=i&&null!=j&&k(l.node,{fx:i,fy:j}),l}var k=c._.$;g.gradient=function(a){return h(this.defs,a)},g.gradientLinear=function(a,b,c,d){return i(this.defs,a,b,c,d)},g.gradientRadial=function(a,b,c,d,e){return j(this.defs,a,b,c,d,e)},g.toString=function(){var a,b=this.node.ownerDocument,d=b.createDocumentFragment(),e=b.createElement("div"),f=this.node.cloneNode(!0);return d.appendChild(e),e.appendChild(f),c._.$(f,{xmlns:"http://www.w3.org/2000/svg"}),a=e.innerHTML,d.removeChild(d.firstChild),a},g.toDataURL=function(){return a&&a.btoa?"data:image/svg+xml;base64,"+btoa(unescape(encodeURIComponent(this))):void 0},g.clear=function(){for(var a,b=this.node.firstChild;b;)a=b.nextSibling,"defs"!=b.tagName?b.parentNode.removeChild(b):g.clear.call({node:b}),b=a}}()}),d.plugin(function(a,b){function c(a){var b=c.ps=c.ps||{};return b[a]?b[a].sleep=100:b[a]={sleep:100},setTimeout(function(){for(var c in b)b[K](c)&&c!=a&&(b[c].sleep--,!b[c].sleep&&delete b[c])}),b[a]}function d(a,b,c,d){return null==a&&(a=b=c=d=0),null==b&&(b=a.y,c=a.width,d=a.height,a=a.x),{x:a,y:b,width:c,w:c,height:d,h:d,x2:a+c,y2:b+d,cx:a+c/2,cy:b+d/2,r1:N.min(c,d)/2,r2:N.max(c,d)/2,r0:N.sqrt(c*c+d*d)/2,path:w(a,b,c,d),vb:[a,b,c,d].join(" ")}}function e(){return this.join(",").replace(L,"$1")}function f(a){var b=J(a);return b.toString=e,b}function g(a,b,c,d,e,f,g,h,j){return null==j?n(a,b,c,d,e,f,g,h):i(a,b,c,d,e,f,g,h,o(a,b,c,d,e,f,g,h,j))}function h(c,d){function e(a){return+(+a).toFixed(3)}return a._.cacher(function(a,f,h){a instanceof b&&(a=a.attr("d")),a=E(a);for(var j,k,l,m,n,o="",p={},q=0,r=0,s=a.length;s>r;r++){if(l=a[r],"M"==l[0])j=+l[1],k=+l[2];else{if(m=g(j,k,l[1],l[2],l[3],l[4],l[5],l[6]),q+m>f){if(d&&!p.start){if(n=g(j,k,l[1],l[2],l[3],l[4],l[5],l[6],f-q),o+=["C"+e(n.start.x),e(n.start.y),e(n.m.x),e(n.m.y),e(n.x),e(n.y)],h)return o;p.start=o,o=["M"+e(n.x),e(n.y)+"C"+e(n.n.x),e(n.n.y),e(n.end.x),e(n.end.y),e(l[5]),e(l[6])].join(),q+=m,j=+l[5],k=+l[6];continue}if(!c&&!d)return n=g(j,k,l[1],l[2],l[3],l[4],l[5],l[6],f-q)}q+=m,j=+l[5],k=+l[6]}o+=l.shift()+l}return p.end=o,n=c?q:d?p:i(j,k,l[0],l[1],l[2],l[3],l[4],l[5],1)},null,a._.clone)}function i(a,b,c,d,e,f,g,h,i){var j=1-i,k=R(j,3),l=R(j,2),m=i*i,n=m*i,o=k*a+3*l*i*c+3*j*i*i*e+n*g,p=k*b+3*l*i*d+3*j*i*i*f+n*h,q=a+2*i*(c-a)+m*(e-2*c+a),r=b+2*i*(d-b)+m*(f-2*d+b),s=c+2*i*(e-c)+m*(g-2*e+c),t=d+2*i*(f-d)+m*(h-2*f+d),u=j*a+i*c,v=j*b+i*d,w=j*e+i*g,x=j*f+i*h,y=90-180*N.atan2(q-s,r-t)/O;return{x:o,y:p,m:{x:q,y:r},n:{x:s,y:t},start:{x:u,y:v},end:{x:w,y:x},alpha:y}}function j(b,c,e,f,g,h,i,j){a.is(b,"array")||(b=[b,c,e,f,g,h,i,j]);var k=D.apply(null,b);return d(k.min.x,k.min.y,k.max.x-k.min.x,k.max.y-k.min.y)}function k(a,b,c){return b>=a.x&&b<=a.x+a.width&&c>=a.y&&c<=a.y+a.height}function l(a,b){return a=d(a),b=d(b),k(b,a.x,a.y)||k(b,a.x2,a.y)||k(b,a.x,a.y2)||k(b,a.x2,a.y2)||k(a,b.x,b.y)||k(a,b.x2,b.y)||k(a,b.x,b.y2)||k(a,b.x2,b.y2)||(a.x<b.x2&&a.x>b.x||b.x<a.x2&&b.x>a.x)&&(a.y<b.y2&&a.y>b.y||b.y<a.y2&&b.y>a.y)}function m(a,b,c,d,e){var f=-3*b+9*c-9*d+3*e,g=a*f+6*b-12*c+6*d;return a*g-3*b+3*c}function n(a,b,c,d,e,f,g,h,i){null==i&&(i=1),i=i>1?1:0>i?0:i;for(var j=i/2,k=12,l=[-.1252,.1252,-.3678,.3678,-.5873,.5873,-.7699,.7699,-.9041,.9041,-.9816,.9816],n=[.2491,.2491,.2335,.2335,.2032,.2032,.1601,.1601,.1069,.1069,.0472,.0472],o=0,p=0;k>p;p++){var q=j*l[p]+j,r=m(q,a,c,e,g),s=m(q,b,d,f,h),t=r*r+s*s;o+=n[p]*N.sqrt(t)}return j*o}function o(a,b,c,d,e,f,g,h,i){if(!(0>i||n(a,b,c,d,e,f,g,h)<i)){var j,k=1,l=k/2,m=k-l,o=.01;for(j=n(a,b,c,d,e,f,g,h,m);S(j-i)>o;)l/=2,m+=(i>j?1:-1)*l,j=n(a,b,c,d,e,f,g,h,m);return m}}function p(a,b,c,d,e,f,g,h){if(!(Q(a,c)<P(e,g)||P(a,c)>Q(e,g)||Q(b,d)<P(f,h)||P(b,d)>Q(f,h))){var i=(a*d-b*c)*(e-g)-(a-c)*(e*h-f*g),j=(a*d-b*c)*(f-h)-(b-d)*(e*h-f*g),k=(a-c)*(f-h)-(b-d)*(e-g);if(k){var l=i/k,m=j/k,n=+l.toFixed(2),o=+m.toFixed(2);if(!(n<+P(a,c).toFixed(2)||n>+Q(a,c).toFixed(2)||n<+P(e,g).toFixed(2)||n>+Q(e,g).toFixed(2)||o<+P(b,d).toFixed(2)||o>+Q(b,d).toFixed(2)||o<+P(f,h).toFixed(2)||o>+Q(f,h).toFixed(2)))return{x:l,y:m}}}}function q(a,b,c){var d=j(a),e=j(b);if(!l(d,e))return c?0:[];for(var f=n.apply(0,a),g=n.apply(0,b),h=~~(f/8),k=~~(g/8),m=[],o=[],q={},r=c?0:[],s=0;h+1>s;s++){var t=i.apply(0,a.concat(s/h));m.push({x:t.x,y:t.y,t:s/h})}for(s=0;k+1>s;s++)t=i.apply(0,b.concat(s/k)),o.push({x:t.x,y:t.y,t:s/k});for(s=0;h>s;s++)for(var u=0;k>u;u++){var v=m[s],w=m[s+1],x=o[u],y=o[u+1],z=S(w.x-v.x)<.001?"y":"x",A=S(y.x-x.x)<.001?"y":"x",B=p(v.x,v.y,w.x,w.y,x.x,x.y,y.x,y.y);if(B){if(q[B.x.toFixed(4)]==B.y.toFixed(4))continue;q[B.x.toFixed(4)]=B.y.toFixed(4);var C=v.t+S((B[z]-v[z])/(w[z]-v[z]))*(w.t-v.t),D=x.t+S((B[A]-x[A])/(y[A]-x[A]))*(y.t-x.t);C>=0&&1>=C&&D>=0&&1>=D&&(c?r++:r.push({x:B.x,y:B.y,t1:C,t2:D}))}}return r}function r(a,b){return t(a,b)}function s(a,b){return t(a,b,1)}function t(a,b,c){a=E(a),b=E(b);for(var d,e,f,g,h,i,j,k,l,m,n=c?0:[],o=0,p=a.length;p>o;o++){var r=a[o];if("M"==r[0])d=h=r[1],e=i=r[2];else{"C"==r[0]?(l=[d,e].concat(r.slice(1)),d=l[6],e=l[7]):(l=[d,e,d,e,h,i,h,i],d=h,e=i);for(var s=0,t=b.length;t>s;s++){var u=b[s];if("M"==u[0])f=j=u[1],g=k=u[2];else{"C"==u[0]?(m=[f,g].concat(u.slice(1)),f=m[6],g=m[7]):(m=[f,g,f,g,j,k,j,k],f=j,g=k);var v=q(l,m,c);if(c)n+=v;else{for(var w=0,x=v.length;x>w;w++)v[w].segment1=o,v[w].segment2=s,v[w].bez1=l,v[w].bez2=m;n=n.concat(v)}}}}}return n}function u(a,b,c){var d=v(a);return k(d,b,c)&&t(a,[["M",b,c],["H",d.x2+10]],1)%2==1}function v(a){var b=c(a);if(b.bbox)return J(b.bbox);if(!a)return d();a=E(a);for(var e,f=0,g=0,h=[],i=[],j=0,k=a.length;k>j;j++)if(e=a[j],"M"==e[0])f=e[1],g=e[2],h.push(f),i.push(g);else{var l=D(f,g,e[1],e[2],e[3],e[4],e[5],e[6]);h=h.concat(l.min.x,l.max.x),i=i.concat(l.min.y,l.max.y),f=e[5],g=e[6]}var m=P.apply(0,h),n=P.apply(0,i),o=Q.apply(0,h),p=Q.apply(0,i),q=d(m,n,o-m,p-n);return b.bbox=J(q),q}function w(a,b,c,d,f){if(f)return[["M",+a+ +f,b],["l",c-2*f,0],["a",f,f,0,0,1,f,f],["l",0,d-2*f],["a",f,f,0,0,1,-f,f],["l",2*f-c,0],["a",f,f,0,0,1,-f,-f],["l",0,2*f-d],["a",f,f,0,0,1,f,-f],["z"]];var g=[["M",a,b],["l",c,0],["l",0,d],["l",-c,0],["z"]];return g.toString=e,g}function x(a,b,c,d,f){if(null==f&&null==d&&(d=c),a=+a,b=+b,c=+c,d=+d,null!=f)var g=Math.PI/180,h=a+c*Math.cos(-d*g),i=a+c*Math.cos(-f*g),j=b+c*Math.sin(-d*g),k=b+c*Math.sin(-f*g),l=[["M",h,j],["A",c,c,0,+(f-d>180),0,i,k]];else l=[["M",a,b],["m",0,-d],["a",c,d,0,1,1,0,2*d],["a",c,d,0,1,1,0,-2*d],["z"]];return l.toString=e,l}function y(b){var d=c(b),g=String.prototype.toLowerCase;if(d.rel)return f(d.rel);a.is(b,"array")&&a.is(b&&b[0],"array")||(b=a.parsePathString(b));var h=[],i=0,j=0,k=0,l=0,m=0;"M"==b[0][0]&&(i=b[0][1],j=b[0][2],k=i,l=j,m++,h.push(["M",i,j]));for(var n=m,o=b.length;o>n;n++){var p=h[n]=[],q=b[n];if(q[0]!=g.call(q[0]))switch(p[0]=g.call(q[0]),p[0]){case"a":p[1]=q[1],p[2]=q[2],p[3]=q[3],p[4]=q[4],p[5]=q[5],p[6]=+(q[6]-i).toFixed(3),p[7]=+(q[7]-j).toFixed(3);break;case"v":p[1]=+(q[1]-j).toFixed(3);break;case"m":k=q[1],l=q[2];default:for(var r=1,s=q.length;s>r;r++)p[r]=+(q[r]-(r%2?i:j)).toFixed(3)}else{p=h[n]=[],"m"==q[0]&&(k=q[1]+i,l=q[2]+j);for(var t=0,u=q.length;u>t;t++)h[n][t]=q[t]}var v=h[n].length;switch(h[n][0]){case"z":i=k,j=l;break;case"h":i+=+h[n][v-1];break;case"v":j+=+h[n][v-1];break;default:i+=+h[n][v-2],j+=+h[n][v-1]}}return h.toString=e,d.rel=f(h),h}function z(b){var d=c(b);if(d.abs)return f(d.abs);if(I(b,"array")&&I(b&&b[0],"array")||(b=a.parsePathString(b)),!b||!b.length)return[["M",0,0]];var g,h=[],i=0,j=0,k=0,l=0,m=0;"M"==b[0][0]&&(i=+b[0][1],j=+b[0][2],k=i,l=j,m++,h[0]=["M",i,j]);for(var n,o,p=3==b.length&&"M"==b[0][0]&&"R"==b[1][0].toUpperCase()&&"Z"==b[2][0].toUpperCase(),q=m,r=b.length;r>q;q++){if(h.push(n=[]),o=b[q],g=o[0],g!=g.toUpperCase())switch(n[0]=g.toUpperCase(),n[0]){case"A":n[1]=o[1],n[2]=o[2],n[3]=o[3],n[4]=o[4],n[5]=o[5],n[6]=+o[6]+i,n[7]=+o[7]+j;break;case"V":n[1]=+o[1]+j;break;case"H":n[1]=+o[1]+i;break;case"R":for(var s=[i,j].concat(o.slice(1)),t=2,u=s.length;u>t;t++)s[t]=+s[t]+i,s[++t]=+s[t]+j;h.pop(),h=h.concat(G(s,p));break;case"O":h.pop(),s=x(i,j,o[1],o[2]),s.push(s[0]),h=h.concat(s);break;case"U":h.pop(),h=h.concat(x(i,j,o[1],o[2],o[3])),n=["U"].concat(h[h.length-1].slice(-2));break;case"M":k=+o[1]+i,l=+o[2]+j;default:for(t=1,u=o.length;u>t;t++)n[t]=+o[t]+(t%2?i:j)}else if("R"==g)s=[i,j].concat(o.slice(1)),h.pop(),h=h.concat(G(s,p)),n=["R"].concat(o.slice(-2));else if("O"==g)h.pop(),s=x(i,j,o[1],o[2]),s.push(s[0]),h=h.concat(s);else if("U"==g)h.pop(),h=h.concat(x(i,j,o[1],o[2],o[3])),n=["U"].concat(h[h.length-1].slice(-2));else for(var v=0,w=o.length;w>v;v++)n[v]=o[v];if(g=g.toUpperCase(),"O"!=g)switch(n[0]){case"Z":i=+k,j=+l;break;case"H":i=n[1];break;case"V":j=n[1];break;case"M":k=n[n.length-2],l=n[n.length-1];default:i=n[n.length-2],j=n[n.length-1]}}return h.toString=e,d.abs=f(h),h}function A(a,b,c,d){return[a,b,c,d,c,d]}function B(a,b,c,d,e,f){var g=1/3,h=2/3;return[g*a+h*c,g*b+h*d,g*e+h*c,g*f+h*d,e,f]}function C(b,c,d,e,f,g,h,i,j,k){var l,m=120*O/180,n=O/180*(+f||0),o=[],p=a._.cacher(function(a,b,c){var d=a*N.cos(c)-b*N.sin(c),e=a*N.sin(c)+b*N.cos(c);return{x:d,y:e}});if(k)y=k[0],z=k[1],w=k[2],x=k[3];else{l=p(b,c,-n),b=l.x,c=l.y,l=p(i,j,-n),i=l.x,j=l.y;var q=(N.cos(O/180*f),N.sin(O/180*f),(b-i)/2),r=(c-j)/2,s=q*q/(d*d)+r*r/(e*e);s>1&&(s=N.sqrt(s),d=s*d,e=s*e);var t=d*d,u=e*e,v=(g==h?-1:1)*N.sqrt(S((t*u-t*r*r-u*q*q)/(t*r*r+u*q*q))),w=v*d*r/e+(b+i)/2,x=v*-e*q/d+(c+j)/2,y=N.asin(((c-x)/e).toFixed(9)),z=N.asin(((j-x)/e).toFixed(9));y=w>b?O-y:y,z=w>i?O-z:z,0>y&&(y=2*O+y),0>z&&(z=2*O+z),h&&y>z&&(y-=2*O),!h&&z>y&&(z-=2*O)}var A=z-y;if(S(A)>m){var B=z,D=i,E=j;z=y+m*(h&&z>y?1:-1),i=w+d*N.cos(z),j=x+e*N.sin(z),o=C(i,j,d,e,f,0,h,D,E,[z,B,w,x])}A=z-y;var F=N.cos(y),G=N.sin(y),H=N.cos(z),I=N.sin(z),J=N.tan(A/4),K=4/3*d*J,L=4/3*e*J,M=[b,c],P=[b+K*G,c-L*F],Q=[i+K*I,j-L*H],R=[i,j];if(P[0]=2*M[0]-P[0],P[1]=2*M[1]-P[1],k)return[P,Q,R].concat(o);o=[P,Q,R].concat(o).join().split(",");for(var T=[],U=0,V=o.length;V>U;U++)T[U]=U%2?p(o[U-1],o[U],n).y:p(o[U],o[U+1],n).x;return T}function D(a,b,c,d,e,f,g,h){for(var i,j,k,l,m,n,o,p,q=[],r=[[],[]],s=0;2>s;++s)if(0==s?(j=6*a-12*c+6*e,i=-3*a+9*c-9*e+3*g,k=3*c-3*a):(j=6*b-12*d+6*f,i=-3*b+9*d-9*f+3*h,k=3*d-3*b),S(i)<1e-12){if(S(j)<1e-12)continue;l=-k/j,l>0&&1>l&&q.push(l)}else o=j*j-4*k*i,p=N.sqrt(o),0>o||(m=(-j+p)/(2*i),m>0&&1>m&&q.push(m),n=(-j-p)/(2*i),n>0&&1>n&&q.push(n));for(var t,u=q.length,v=u;u--;)l=q[u],t=1-l,r[0][u]=t*t*t*a+3*t*t*l*c+3*t*l*l*e+l*l*l*g,r[1][u]=t*t*t*b+3*t*t*l*d+3*t*l*l*f+l*l*l*h;return r[0][v]=a,r[1][v]=b,r[0][v+1]=g,r[1][v+1]=h,r[0].length=r[1].length=v+2,{min:{x:P.apply(0,r[0]),y:P.apply(0,r[1])},max:{x:Q.apply(0,r[0]),y:Q.apply(0,r[1])}}}function E(a,b){var d=!b&&c(a);if(!b&&d.curve)return f(d.curve);for(var e=z(a),g=b&&z(b),h={x:0,y:0,bx:0,by:0,X:0,Y:0,qx:null,qy:null},i={x:0,y:0,bx:0,by:0,X:0,Y:0,qx:null,qy:null},j=(function(a,b,c){var d,e;if(!a)return["C",b.x,b.y,b.x,b.y,b.x,b.y];switch(!(a[0]in{T:1,Q:1})&&(b.qx=b.qy=null),a[0]){case"M":b.X=a[1],b.Y=a[2];break;case"A":a=["C"].concat(C.apply(0,[b.x,b.y].concat(a.slice(1))));break;case"S":"C"==c||"S"==c?(d=2*b.x-b.bx,e=2*b.y-b.by):(d=b.x,e=b.y),a=["C",d,e].concat(a.slice(1));break;case"T":"Q"==c||"T"==c?(b.qx=2*b.x-b.qx,b.qy=2*b.y-b.qy):(b.qx=b.x,b.qy=b.y),a=["C"].concat(B(b.x,b.y,b.qx,b.qy,a[1],a[2]));break;case"Q":b.qx=a[1],b.qy=a[2],a=["C"].concat(B(b.x,b.y,a[1],a[2],a[3],a[4]));break;case"L":a=["C"].concat(A(b.x,b.y,a[1],a[2]));break;case"H":a=["C"].concat(A(b.x,b.y,a[1],b.y));break;case"V":a=["C"].concat(A(b.x,b.y,b.x,a[1]));break;case"Z":a=["C"].concat(A(b.x,b.y,b.X,b.Y))}return a}),k=function(a,b){if(a[b].length>7){a[b].shift();for(var c=a[b];c.length;)m[b]="A",g&&(n[b]="A"),a.splice(b++,0,["C"].concat(c.splice(0,6)));a.splice(b,1),r=Q(e.length,g&&g.length||0)}},l=function(a,b,c,d,f){a&&b&&"M"==a[f][0]&&"M"!=b[f][0]&&(b.splice(f,0,["M",d.x,d.y]),c.bx=0,c.by=0,c.x=a[f][1],c.y=a[f][2],r=Q(e.length,g&&g.length||0))},m=[],n=[],o="",p="",q=0,r=Q(e.length,g&&g.length||0);r>q;q++){e[q]&&(o=e[q][0]),"C"!=o&&(m[q]=o,q&&(p=m[q-1])),e[q]=j(e[q],h,p),"A"!=m[q]&&"C"==o&&(m[q]="C"),k(e,q),g&&(g[q]&&(o=g[q][0]),"C"!=o&&(n[q]=o,q&&(p=n[q-1])),g[q]=j(g[q],i,p),"A"!=n[q]&&"C"==o&&(n[q]="C"),k(g,q)),l(e,g,h,i,q),l(g,e,i,h,q);var s=e[q],t=g&&g[q],u=s.length,v=g&&t.length;h.x=s[u-2],h.y=s[u-1],h.bx=M(s[u-4])||h.x,h.by=M(s[u-3])||h.y,i.bx=g&&(M(t[v-4])||i.x),i.by=g&&(M(t[v-3])||i.y),i.x=g&&t[v-2],i.y=g&&t[v-1]}return g||(d.curve=f(e)),g?[e,g]:e}function F(a,b){if(!b)return a;var c,d,e,f,g,h,i;for(a=E(a),e=0,g=a.length;g>e;e++)for(i=a[e],f=1,h=i.length;h>f;f+=2)c=b.x(i[f],i[f+1]),d=b.y(i[f],i[f+1]),i[f]=c,i[f+1]=d;return a}function G(a,b){for(var c=[],d=0,e=a.length;e-2*!b>d;d+=2){var f=[{x:+a[d-2],y:+a[d-1]},{x:+a[d],y:+a[d+1]},{x:+a[d+2],y:+a[d+3]},{x:+a[d+4],y:+a[d+5]}];b?d?e-4==d?f[3]={x:+a[0],y:+a[1]}:e-2==d&&(f[2]={x:+a[0],y:+a[1]},f[3]={x:+a[2],y:+a[3]}):f[0]={x:+a[e-2],y:+a[e-1]}:e-4==d?f[3]=f[2]:d||(f[0]={x:+a[d],y:+a[d+1]}),c.push(["C",(-f[0].x+6*f[1].x+f[2].x)/6,(-f[0].y+6*f[1].y+f[2].y)/6,(f[1].x+6*f[2].x-f[3].x)/6,(f[1].y+6*f[2].y-f[3].y)/6,f[2].x,f[2].y])}return c}var H=b.prototype,I=a.is,J=a._.clone,K="hasOwnProperty",L=/,?([a-z]),?/gi,M=parseFloat,N=Math,O=N.PI,P=N.min,Q=N.max,R=N.pow,S=N.abs,T=h(1),U=h(),V=h(0,1),W=a._unit2px,X={path:function(a){return a.attr("path")},circle:function(a){var b=W(a);return x(b.cx,b.cy,b.r)},ellipse:function(a){var b=W(a);return x(b.cx||0,b.cy||0,b.rx,b.ry)},rect:function(a){var b=W(a);return w(b.x||0,b.y||0,b.width,b.height,b.rx,b.ry)},image:function(a){var b=W(a);return w(b.x||0,b.y||0,b.width,b.height)},line:function(a){return"M"+[a.attr("x1")||0,a.attr("y1")||0,a.attr("x2"),a.attr("y2")]},polyline:function(a){return"M"+a.attr("points")},polygon:function(a){return"M"+a.attr("points")+"z"},deflt:function(a){var b=a.node.getBBox();return w(b.x,b.y,b.width,b.height)}};a.path=c,a.path.getTotalLength=T,a.path.getPointAtLength=U,a.path.getSubpath=function(a,b,c){if(this.getTotalLength(a)-c<1e-6)return V(a,b).end;var d=V(a,c,1);return b?V(d,b).end:d},H.getTotalLength=function(){return this.node.getTotalLength?this.node.getTotalLength():void 0},H.getPointAtLength=function(a){return U(this.attr("d"),a)},H.getSubpath=function(b,c){return a.path.getSubpath(this.attr("d"),b,c)},a._.box=d,a.path.findDotsAtSegment=i,a.path.bezierBBox=j,a.path.isPointInsideBBox=k,a.closest=function(b,c,e,f){for(var g=100,h=d(b-g/2,c-g/2,g,g),i=[],j=e[0].hasOwnProperty("x")?function(a){return{x:e[a].x,y:e[a].y}}:function(a){return{x:e[a],y:f[a]}},l=0;1e6>=g&&!l;){for(var m=0,n=e.length;n>m;m++){var o=j(m);if(k(h,o.x,o.y)){l++,i.push(o);break}}l||(g*=2,h=d(b-g/2,c-g/2,g,g))}if(1e6!=g){var p,q=1/0;for(m=0,n=i.length;n>m;m++){var r=a.len(b,c,i[m].x,i[m].y);q>r&&(q=r,i[m].len=r,p=i[m])}return p}},a.path.isBBoxIntersect=l,a.path.intersection=r,a.path.intersectionNumber=s,a.path.isPointInside=u,a.path.getBBox=v,a.path.get=X,a.path.toRelative=y,a.path.toAbsolute=z,a.path.toCubic=E,a.path.map=F,a.path.toString=e,a.path.clone=f}),d.plugin(function(a){var d=Math.max,e=Math.min,f=function(a){if(this.items=[],this.bindings={},this.length=0,this.type="set",a)for(var b=0,c=a.length;c>b;b++)a[b]&&(this[this.items.length]=this.items[this.items.length]=a[b],this.length++)},g=f.prototype;g.push=function(){for(var a,b,c=0,d=arguments.length;d>c;c++)a=arguments[c],a&&(b=this.items.length,this[b]=this.items[b]=a,this.length++);return this},g.pop=function(){return this.length&&delete this[this.length--],this.items.pop()},g.forEach=function(a,b){for(var c=0,d=this.items.length;d>c;c++)if(a.call(b,this.items[c],c)===!1)return this;return this},g.animate=function(d,e,f,g){"function"!=typeof f||f.length||(g=f,f=c.linear),d instanceof a._.Animation&&(g=d.callback,f=d.easing,e=f.dur,d=d.attr);var h=arguments;if(a.is(d,"array")&&a.is(h[h.length-1],"array"))var i=!0;var j,k=function(){j?this.b=j:j=this.b},l=0,m=this,n=g&&function(){++l==m.length&&g.call(this)
};return this.forEach(function(a,c){b.once("snap.animcreated."+a.id,k),i?h[c]&&a.animate.apply(a,h[c]):a.animate(d,e,f,n)})},g.remove=function(){for(;this.length;)this.pop().remove();return this},g.bind=function(a,b,c){var d={};if("function"==typeof b)this.bindings[a]=b;else{var e=c||a;this.bindings[a]=function(a){d[e]=a,b.attr(d)}}return this},g.attr=function(a){var b={};for(var c in a)this.bindings[c]?this.bindings[c](a[c]):b[c]=a[c];for(var d=0,e=this.items.length;e>d;d++)this.items[d].attr(b);return this},g.clear=function(){for(;this.length;)this.pop()},g.splice=function(a,b){a=0>a?d(this.length+a,0):a,b=d(0,e(this.length-a,b));var c,g=[],h=[],i=[];for(c=2;c<arguments.length;c++)i.push(arguments[c]);for(c=0;b>c;c++)h.push(this[a+c]);for(;c<this.length-a;c++)g.push(this[a+c]);var j=i.length;for(c=0;c<j+g.length;c++)this.items[a+c]=this[a+c]=j>c?i[c]:g[c-j];for(c=this.items.length=this.length-=b-j;this[c];)delete this[c++];return new f(h)},g.exclude=function(a){for(var b=0,c=this.length;c>b;b++)if(this[b]==a)return this.splice(b,1),!0;return!1},g.insertAfter=function(a){for(var b=this.items.length;b--;)this.items[b].insertAfter(a);return this},g.getBBox=function(){for(var a=[],b=[],c=[],f=[],g=this.items.length;g--;)if(!this.items[g].removed){var h=this.items[g].getBBox();a.push(h.x),b.push(h.y),c.push(h.x+h.width),f.push(h.y+h.height)}return a=e.apply(0,a),b=e.apply(0,b),c=d.apply(0,c),f=d.apply(0,f),{x:a,y:b,x2:c,y2:f,width:c-a,height:f-b,cx:a+(c-a)/2,cy:b+(f-b)/2}},g.clone=function(a){a=new f;for(var b=0,c=this.items.length;c>b;b++)a.push(this.items[b].clone());return a},g.toString=function(){return"Snap‘s set"},g.type="set",a.Set=f,a.set=function(){var a=new f;return arguments.length&&a.push.apply(a,Array.prototype.slice.call(arguments,0)),a}}),d.plugin(function(a,c){function d(a){var b=a[0];switch(b.toLowerCase()){case"t":return[b,0,0];case"m":return[b,1,0,0,1,0,0];case"r":return 4==a.length?[b,0,a[2],a[3]]:[b,0];case"s":return 5==a.length?[b,1,1,a[3],a[4]]:3==a.length?[b,1,1]:[b,1]}}function e(b,c,e){c=p(c).replace(/\.{3}|\u2026/g,b),b=a.parseTransformString(b)||[],c=a.parseTransformString(c)||[];for(var f,g,h,i,l=Math.max(b.length,c.length),m=[],n=[],o=0;l>o;o++){if(h=b[o]||d(c[o]),i=c[o]||d(h),h[0]!=i[0]||"r"==h[0].toLowerCase()&&(h[2]!=i[2]||h[3]!=i[3])||"s"==h[0].toLowerCase()&&(h[3]!=i[3]||h[4]!=i[4])){b=a._.transform2matrix(b,e()),c=a._.transform2matrix(c,e()),m=[["m",b.a,b.b,b.c,b.d,b.e,b.f]],n=[["m",c.a,c.b,c.c,c.d,c.e,c.f]];break}for(m[o]=[],n[o]=[],f=0,g=Math.max(h.length,i.length);g>f;f++)f in h&&(m[o][f]=h[f]),f in i&&(n[o][f]=i[f])}return{from:k(m),to:k(n),f:j(m)}}function f(a){return a}function g(a){return function(b){return+b.toFixed(3)+a}}function h(a){return a.join(" ")}function i(b){return a.rgb(b[0],b[1],b[2])}function j(a){var b,c,d,e,f,g,h=0,i=[];for(b=0,c=a.length;c>b;b++){for(f="[",g=['"'+a[b][0]+'"'],d=1,e=a[b].length;e>d;d++)g[d]="val["+h++ +"]";f+=g+"]",i[b]=f}return Function("val","return Snap.path.toString.call(["+i+"])")}function k(a){for(var b=[],c=0,d=a.length;d>c;c++)for(var e=1,f=a[c].length;f>e;e++)b.push(a[c][e]);return b}function l(a){return isFinite(parseFloat(a))}function m(b,c){return a.is(b,"array")&&a.is(c,"array")?b.toString()==c.toString():!1}var n={},o=/[a-z]+$/i,p=String;n.stroke=n.fill="colour",c.prototype.equal=function(a,c){return b("snap.util.equal",this,a,c).firstDefined()},b.on("snap.util.equal",function(b,c){var d,q,r=p(this.attr(b)||""),s=this;if(l(r)&&l(c))return{from:parseFloat(r),to:parseFloat(c),f:f};if("colour"==n[b])return d=a.color(r),q=a.color(c),{from:[d.r,d.g,d.b,d.opacity],to:[q.r,q.g,q.b,q.opacity],f:i};if("viewBox"==b)return d=this.attr(b).vb.split(" ").map(Number),q=c.split(" ").map(Number),{from:d,to:q,f:h};if("transform"==b||"gradientTransform"==b||"patternTransform"==b)return c instanceof a.Matrix&&(c=c.toTransformString()),a._.rgTransform.test(c)||(c=a._.svgTransform2string(c)),e(r,c,function(){return s.getBBox(1)});if("d"==b||"path"==b)return d=a.path.toCubic(r,c),{from:k(d[0]),to:k(d[1]),f:j(d[0])};if("points"==b)return d=p(r).split(a._.separator),q=p(c).split(a._.separator),{from:d,to:q,f:function(a){return a}};var t=r.match(o),u=p(c).match(o);return t&&m(t,u)?{from:parseFloat(r),to:parseFloat(c),f:g(t)}:{from:this.asPX(b),to:this.asPX(b,c),f:f}})}),d.plugin(function(a,c,d,e){for(var f=c.prototype,g="hasOwnProperty",h=("createTouch"in e.doc),i=["click","dblclick","mousedown","mousemove","mouseout","mouseover","mouseup","touchstart","touchmove","touchend","touchcancel"],j={mousedown:"touchstart",mousemove:"touchmove",mouseup:"touchend"},k=(function(a,b){var c="y"==a?"scrollTop":"scrollLeft",d=b&&b.node?b.node.ownerDocument:e.doc;return d[c in d.documentElement?"documentElement":"body"][c]}),l=function(){return this.originalEvent.preventDefault()},m=function(){return this.originalEvent.stopPropagation()},n=function(a,b,c,d){var e=h&&j[b]?j[b]:b,f=function(e){var f=k("y",d),i=k("x",d);if(h&&j[g](b))for(var n=0,o=e.targetTouches&&e.targetTouches.length;o>n;n++)if(e.targetTouches[n].target==a||a.contains(e.targetTouches[n].target)){var p=e;e=e.targetTouches[n],e.originalEvent=p,e.preventDefault=l,e.stopPropagation=m;break}var q=e.clientX+i,r=e.clientY+f;return c.call(d,e,q,r)};return b!==e&&a.addEventListener(b,f,!1),a.addEventListener(e,f,!1),function(){return b!==e&&a.removeEventListener(b,f,!1),a.removeEventListener(e,f,!1),!0}},o=[],p=function(a){for(var c,d=a.clientX,e=a.clientY,f=k("y"),g=k("x"),i=o.length;i--;){if(c=o[i],h){for(var j,l=a.touches&&a.touches.length;l--;)if(j=a.touches[l],j.identifier==c.el._drag.id||c.el.node.contains(j.target)){d=j.clientX,e=j.clientY,(a.originalEvent?a.originalEvent:a).preventDefault();break}}else a.preventDefault();{var m=c.el.node;m.nextSibling,m.parentNode,m.style.display}d+=g,e+=f,b("snap.drag.move."+c.el.id,c.move_scope||c.el,d-c.el._drag.x,e-c.el._drag.y,d,e,a)}},q=function(c){a.unmousemove(p).unmouseup(q);for(var d,e=o.length;e--;)d=o[e],d.el._drag={},b("snap.drag.end."+d.el.id,d.end_scope||d.start_scope||d.move_scope||d.el,c),b.off("snap.drag.*."+d.el.id);o=[]},r=i.length;r--;)!function(b){a[b]=f[b]=function(c,d){if(a.is(c,"function"))this.events=this.events||[],this.events.push({name:b,f:c,unbind:n(this.node||document,b,c,d||this)});else for(var e=0,f=this.events.length;f>e;e++)if(this.events[e].name==b)try{this.events[e].f.call(this)}catch(g){}return this},a["un"+b]=f["un"+b]=function(a){for(var c=this.events||[],d=c.length;d--;)if(c[d].name==b&&(c[d].f==a||!a))return c[d].unbind(),c.splice(d,1),!c.length&&delete this.events,this;return this}}(i[r]);f.hover=function(a,b,c,d){return this.mouseover(a,c).mouseout(b,d||c)},f.unhover=function(a,b){return this.unmouseover(a).unmouseout(b)};var s=[];f.drag=function(c,d,e,f,g,h){function i(i,j,l){(i.originalEvent||i).preventDefault(),k._drag.x=j,k._drag.y=l,k._drag.id=i.identifier,!o.length&&a.mousemove(p).mouseup(q),o.push({el:k,move_scope:f,start_scope:g,end_scope:h}),d&&b.on("snap.drag.start."+k.id,d),c&&b.on("snap.drag.move."+k.id,c),e&&b.on("snap.drag.end."+k.id,e),b("snap.drag.start."+k.id,g||f||k,j,l,i)}function j(a,c,d){b("snap.draginit."+k.id,k,a,c,d)}var k=this;if(!arguments.length){var l;return k.drag(function(a,b){this.attr({transform:l+(l?"T":"t")+[a,b]})},function(){l=this.transform().local})}return b.on("snap.draginit."+k.id,i),k._drag={},s.push({el:k,start:i,init:j}),k.mousedown(j),k},f.undrag=function(){for(var c=s.length;c--;)s[c].el==this&&(this.unmousedown(s[c].init),s.splice(c,1),b.unbind("snap.drag.*."+this.id),b.unbind("snap.draginit."+this.id));return!s.length&&a.unmousemove(p).unmouseup(q),this}}),d.plugin(function(a,c,d){var e=(c.prototype,d.prototype),f=/^\s*url\((.+)\)/,g=String,h=a._.$;a.filter={},e.filter=function(b){var d=this;"svg"!=d.type&&(d=d.paper);var e=a.parse(g(b)),f=a._.id(),i=(d.node.offsetWidth,d.node.offsetHeight,h("filter"));return h(i,{id:f,filterUnits:"userSpaceOnUse"}),i.appendChild(e.node),d.defs.appendChild(i),new c(i)},b.on("snap.util.getattr.filter",function(){b.stop();var c=h(this.node,"filter");if(c){var d=g(c).match(f);return d&&a.select(d[1])}}),b.on("snap.util.attr.filter",function(d){if(d instanceof c&&"filter"==d.type){b.stop();var e=d.node.id;e||(h(d.node,{id:d.id}),e=d.id),h(this.node,{filter:a.url(e)})}d&&"none"!=d||(b.stop(),this.node.removeAttribute("filter"))}),a.filter.blur=function(b,c){null==b&&(b=2);var d=null==c?b:[b,c];return a.format('<feGaussianBlur stdDeviation="{def}"/>',{def:d})},a.filter.blur.toString=function(){return this()},a.filter.shadow=function(b,c,d,e,f){return"string"==typeof d&&(e=d,f=e,d=4),"string"!=typeof e&&(f=e,e="#000"),e=e||"#000",null==d&&(d=4),null==f&&(f=1),null==b&&(b=0,c=2),null==c&&(c=b),e=a.color(e),a.format('<feGaussianBlur in="SourceAlpha" stdDeviation="{blur}"/><feOffset dx="{dx}" dy="{dy}" result="offsetblur"/><feFlood flood-color="{color}"/><feComposite in2="offsetblur" operator="in"/><feComponentTransfer><feFuncA type="linear" slope="{opacity}"/></feComponentTransfer><feMerge><feMergeNode/><feMergeNode in="SourceGraphic"/></feMerge>',{color:e,dx:b,dy:c,blur:d,opacity:f})},a.filter.shadow.toString=function(){return this()},a.filter.grayscale=function(b){return null==b&&(b=1),a.format('<feColorMatrix type="matrix" values="{a} {b} {c} 0 0 {d} {e} {f} 0 0 {g} {b} {h} 0 0 0 0 0 1 0"/>',{a:.2126+.7874*(1-b),b:.7152-.7152*(1-b),c:.0722-.0722*(1-b),d:.2126-.2126*(1-b),e:.7152+.2848*(1-b),f:.0722-.0722*(1-b),g:.2126-.2126*(1-b),h:.0722+.9278*(1-b)})},a.filter.grayscale.toString=function(){return this()},a.filter.sepia=function(b){return null==b&&(b=1),a.format('<feColorMatrix type="matrix" values="{a} {b} {c} 0 0 {d} {e} {f} 0 0 {g} {h} {i} 0 0 0 0 0 1 0"/>',{a:.393+.607*(1-b),b:.769-.769*(1-b),c:.189-.189*(1-b),d:.349-.349*(1-b),e:.686+.314*(1-b),f:.168-.168*(1-b),g:.272-.272*(1-b),h:.534-.534*(1-b),i:.131+.869*(1-b)})},a.filter.sepia.toString=function(){return this()},a.filter.saturate=function(b){return null==b&&(b=1),a.format('<feColorMatrix type="saturate" values="{amount}"/>',{amount:1-b})},a.filter.saturate.toString=function(){return this()},a.filter.hueRotate=function(b){return b=b||0,a.format('<feColorMatrix type="hueRotate" values="{angle}"/>',{angle:b})},a.filter.hueRotate.toString=function(){return this()},a.filter.invert=function(b){return null==b&&(b=1),a.format('<feComponentTransfer><feFuncR type="table" tableValues="{amount} {amount2}"/><feFuncG type="table" tableValues="{amount} {amount2}"/><feFuncB type="table" tableValues="{amount} {amount2}"/></feComponentTransfer>',{amount:b,amount2:1-b})},a.filter.invert.toString=function(){return this()},a.filter.brightness=function(b){return null==b&&(b=1),a.format('<feComponentTransfer><feFuncR type="linear" slope="{amount}"/><feFuncG type="linear" slope="{amount}"/><feFuncB type="linear" slope="{amount}"/></feComponentTransfer>',{amount:b})},a.filter.brightness.toString=function(){return this()},a.filter.contrast=function(b){return null==b&&(b=1),a.format('<feComponentTransfer><feFuncR type="linear" slope="{amount}" intercept="{amount2}"/><feFuncG type="linear" slope="{amount}" intercept="{amount2}"/><feFuncB type="linear" slope="{amount}" intercept="{amount2}"/></feComponentTransfer>',{amount:b,amount2:.5-b/2})},a.filter.contrast.toString=function(){return this()}}),d.plugin(function(a,b){var c=a._.box,d=a.is,e=/^[^a-z]*([tbmlrc])/i,f=function(){return"T"+this.dx+","+this.dy};b.prototype.getAlign=function(a,b){null==b&&d(a,"string")&&(b=a,a=null),a=a||this.paper;var g=a.getBBox?a.getBBox():c(a),h=this.getBBox(),i={};switch(b=b&&b.match(e),b=b?b[1].toLowerCase():"c"){case"t":i.dx=0,i.dy=g.y-h.y;break;case"b":i.dx=0,i.dy=g.y2-h.y2;break;case"m":i.dx=0,i.dy=g.cy-h.cy;break;case"l":i.dx=g.x-h.x,i.dy=0;break;case"r":i.dx=g.x2-h.x2,i.dy=0;break;default:i.dx=g.cx-h.cx,i.dy=0}return i.toString=f,i},b.prototype.align=function(a,b){return this.transform("..."+this.getAlign(a,b))}}),d});

oPoint = {
    sm: 543,
    md: 699,
    lg: 991,
    xl: 1199
};
(function (win, doc, $) {
    //判断浏览器
    // function IETester(userAgent){
    //  var UA =  userAgent || navigator.userAgent;
    //  if(/msie/i.test(UA)){
    //      return UA.match(/msie (\d+\.\d+)/i)[1];
    //  }else if(~UA.toLowerCase().indexOf('trident') && ~UA.indexOf('rv')){
    //      return UA.match(/rv:(\d+\.\d+)/)[1];
    //  }
    //  return false;
    // }

    isIe = (navigator.userAgent.indexOf('MSIE') >= 0) && (navigator.userAgent.indexOf('Opera') < 0);
    // isOpera=$.browser.opera;
    // isSafari=$.browser.safari;
    isIe11 = ie11();
    isIe8 = isIe && navigator.userAgent.indexOf("MSIE 8.0") > 0 && !isIe11;
    isIe9 = isIe && navigator.userAgent.indexOf("MSIE 9.0") > 0 && !isIe11;
    isPC = isPCFn();
    isUC = isUCFn();
    isFirefox = isFoxFn();
    isTouch = canTouch();

    function ie11() {
        if (Object.hasOwnProperty.call(win, "ActiveXObject") && !win.ActiveXObject) {
            return true;
        } else {
            return false;
        }
    }

    function isFoxFn() {
        if (navigator.userAgent.indexOf('Firefox') >= 0) {
            return true;
        } else {
            return false;
        }
    }


    function canTouch() {
        var touchObj = {};
        touchObj.isSupportTouch = "ontouchend" in doc ? true : false;
        touchObj.isEvent = touchObj.isSupportTouch ? "touchstart" : "click";
        if (touchObj.isEvent == "touchstart") {
            return true;
        } else {
            return false;
        }
    }

    function isUCFn() {
        var u = navigator.userAgent;
        if (navigator.userAgent.indexOf('UCBrowser') > -1 || u.indexOf('Android') > -1 || u.indexOf('Linux') > -1) {
            return true;
        } else {
            return false;
        }
    }
    //alert(isUC)
    function isPCFn() {
        var userAgentInfo = navigator.userAgent;
        var Agents = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod");
        var flag = true;
        for (var v = 0; v < Agents.length; v++) {
            if (userAgentInfo.indexOf(Agents[v]) > 0) {
                flag = false;
                break;
            }
        }
        return flag;
    }

    $.fn.oClear = function () {
        $(this).contents().filter(function () {
            if ($(this)[0].nodeType === 3) {
                $(this).remove();
            }
        });
    };

    $.fn.oSelect = function (p) {
        var defaults = {
            "go": true,
            showLenght: 5,
            cont: $(this).parent(),
            openfn: function () {},
            closefn: function () {}
        };
        var $p = $.extend(defaults, p);
        var $this = $(this),
            $autotext = $this.attr("autotext"),
            $cont = $p.cont,
            $box = $("<div>").addClass("o_Dropdown"),
            $ico = $("<i>").addClass("i_down"),
            $name = $("<span>").addClass("name").html($autotext),
            $listbox = $("<div>").addClass("list"),
            $ul = $("<ul>"),
            $option = $this.find("option"),
            $optGroup = $this.find("optgroup"),
            $li = $("<li>"),
            $h2 = $("<h2>"),
            $span = $("<span>"),
            $showLenght = $p.showLenght,
            $autoi,
            $openfn = $p.openfn,
            $closefn = $p.closefn,
            $go = $p.go;
        $box.css("cursor", "default");
        $cont.css({
            "position": "relative",
            "z-index": "0"
        });

        $option.each(function (i) {
            if (i > 0) {
                if ($(this).attr("selected")) {
                    var $val = $(this).html();
                    $name.html($val);
                    return false;
                }
            }
        });

        $ul.appendTo($listbox);
        $box.append($ico).append($name).append($listbox);
        $this.before($box).css("display", "none");
        $this.appendTo($box);

        $this.bar = $ul.oScrollBar();
        $box.addClass("lose");

        $this.init = function () {
            $this.lose();
            $ul.find("li").on("click", function (e) {
                //$ul.find("li").removeClass("cur");
                $(this).addClass("cur").siblings().removeClass("cur");
                $i = $ul.find("li").index(this);
                $option = $this.find("option");
                $option.attr("selected", false).eq($i + 1).attr("selected", true);

                $val = $(this).find("span").html();
                $listbox.css("display", "none");
                $cont.css({
                    "z-index": "0",
                     "height": "auto"
                }).removeClass("o_DropdownBox");
                $box.removeClass("o_back_red");
                $name.html($val);
                $this.change();
                e.stopPropagation();
            });
            if (!isPC) {
                $box.on("change", "select", function (e) {
                    var $val = $(this).find("option:selected").html();
                    //$i=$option.index($(this).find("option:selected"));
                    //console.log($(this).find("option:selected").text())
                    //$ul.find("li").removeClass("cur").eq($i-1).addClass("cur");
                    $name.html($val);
                });
            }

            $this.resetting();
            $box.removeClass("lose");
        };

        $this.lose = function () {
            $box.addClass("lose");
            $box.attr("style", "");
            $option = $this.find("option");
            $optGroup = $this.find("optgroup");
            $ul.html("");
            $name.html($autotext);
            if ($optGroup.length > 0) //有标题
            {
                $optGroup.each(function () {
                    var tit = $(this).attr("label");
                    var $h2_1 = $h2.clone();
                    $h2_1.html(tit);
                    $ul.append($h2_1);

                    $(this).find("option").each(function () {
                        var $val = $(this).html();
                        var $li_1 = $li.clone();
                        var $span_1 = $span.clone();
                        if ($(this).attr("selected")) {
                            $val = $(this).html();
                            $name.html($val);
                            $autoi = $option.index(this);
                            $li_1.addClass("cur");
                        }
                        $span_1.html($val);
                        $li_1.append($span_1);
                        $ul.append($li_1);
                    });

                });

            } else { //没有标题
                $option.each(function (i) {
                    if (i > 0) {
                        var $val = $(this).html();
                        var $li_1 = $li.clone();
                        var $span_1 = $span.clone();
                        if (i === 1) {
                            // $li_1.addClass("cur");
                            // $name.html($val);
                        }
                        if ($(this).attr("selected")) {
                            $val = $(this).html();
                            $name.html($val);
                            $autoi = $option.index(this);
                            $li_1.addClass("cur");
                        }
                        $span_1.html($val);
                        $li_1.append($span_1);
                        $ul.append($li_1);
                    }
                });
            }

            $name.off();
            $box.css("cursor", "pointer");
            $this.css({
                display: "none"
            });
        };

        $this.resetting = function () {
            if (isPC) {
                $name.on("click", function () {
                
                    $listbox.css({"display":"inline-block","width": $box.width() - 30});
                    $cont.css({
                        "z-index": "1",
                        "height": $ul.height() + 80,
                        "max-height": "280px"
                    }).addClass("o_DropdownBox");
                    if ($ul.height() <= 200) {
                        $listbox.css("height", $ul.height());
                    } else {
                        $listbox.css("height", "200px");
                    }
                    $box.addClass("o_back_red");

                    $openfn($box);
                    $this.bar.init();
                });
                $box.hover(function () {}, function () {
                    $listbox.css("display", "none");
                    $cont.css({
                        "z-index": "0",
                         "height": "auto"
                    }).removeClass("o_DropdownBox");
                    $box.removeClass("o_back_red");
                    $closefn($box);
                });
                $cont.hover(function(){},function(){
                    $listbox.css("display", "none");
                    $cont.css({
                        "z-index": "0",
                         "height": "auto"
                    }).removeClass("o_DropdownBox");
                    $box.removeClass("o_back_red");
                    $closefn($box);
                });
                $this.css({
                    display: "none"
                });
            } else {
                $name.off();
                $this.css({
                    display: "block"
                });
            }
        };

        // $(window).resize(function(){
        //  $this.resetting();
        // });

        return $this;
    };

    $.fn.oMenu = function (p) {
        var defaults = {
            "menu": "",
            "mainbox": ".o_main",
            "linkage": true,
            /*"position":null,*/ "btnbox": $(this),
            "zztop": 0,
            "openfn": null,
            "closefn": null,
            "menuwidth": null,
            "zzclass": "o_m_zz"
        };
        var $p = $.extend(defaults, p);
        var $this = $(this),
            $mainbox = $($p.mainbox),
            $zz = $("<div>").addClass($p.zzclass),
            $linkage = $p.linkage,
            $btnbox = $($p.btnbox),
            $menu = $($p.menu),
            //$position=$p.position,
            $menu_w = $p.menuwidth ? $p.menuwidth : $menu.width(),
            $positionNum,
            $direction,
            $main_left,
            $main_right,
            $left,
            $right;

        //初始化方向
        //$this.css("float",$position);


        $this.on("click", function () {
            $zz.attr("style", "margin-top:" + $p.zztop + "px");
            $main_left = Math.abs(parseFloat($mainbox.css("left")));
            $main_right = Math.abs(parseFloat($mainbox.css("right")));
            $left = parseFloat($menu.css("left"));
            $right = parseFloat($menu.css("right"));
            if ($linkage) {
                //联动

                if ($main_left > 0 || $main_right > 0) {
                    if ($direction == "left") {
                        $mainbox.oCss3({
                            "transform": "translate3d(" + Math.abs($left) + "px,0px,0px)",
                            "transition-duration": "0s"
                        }, false);
                        $mainbox.css({
                            left: "0px"
                        });
                        setTimeout(function () {
                            $mainbox.oCss3({
                                "transform": "translate3d(0px,0px,0px)",
                                "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                            }, false);
                        }, 10);
                        $this.removezz();
                        if ($p.closefn) {
                            $p.closefn($this);
                        }

                    } else if ($direction == "right") {
                        $mainbox.oCss3({
                            "transform": "translate3d(" + -Math.abs($right) + "px,0px,0px)",
                            "transition-duration": "0s"
                        }, false);
                        $mainbox.css({
                            right: "0px"
                        });
                        setTimeout(function () {
                            $mainbox.oCss3({
                                "transform": "translate3d(0px,0px,0px)",
                                "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                            }, false);
                        }, 10);


                        $this.removezz();
                        if ($p.closefn) {
                            $p.closefn($this);
                        }
                    }

                    $this.removeClass("cur");

                } else {
                    //$mainbox.attr("style","");
                    if ($right < 0) {
                        $mainbox.oCss3({
                            "transform": "translate3d(" + -Math.abs($right) + "px,0px,0px)",
                            "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                        }, false);
                        $menu.css({
                            height: $(window).height()
                        });
                        setTimeout(function () {
                            $mainbox.oCss3({
                                "transform": "translate3d(0px,0px,0px)",
                                "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.0s"
                            }, false);
                            $mainbox.css({
                                "right": Math.abs($right) + "px",
                                "position": "relative"
                            });
                            $direction = "right";
                        }, 500);

                        $mainbox.append($zz);
                        if ($p.openfn) {
                            $p.openfn($this);
                        }

                    } else if ($left < 0) {
                        $mainbox.oCss3({
                            "transform": "translate3d(" + Math.abs($left) + "px,0px,0px)",
                            "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                        }, false);
                        $menu.css({
                            height: $(window).height()
                        });
                        setTimeout(function () {
                            $mainbox.oCss3({
                                "transform": "translate3d(0px,0px,0px)",
                                "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.0s"
                            }, false);
                            $mainbox.css({
                                "left": Math.abs($left) + "px",
                                "position": "relative"
                            });
                            $direction = "left";
                        }, 500);

                        $mainbox.append($zz);
                        if ($p.openfn) {
                            $p.openfn($this);
                        }
                    }

                    $this.addClass("cur");
                }

            } else {
                if ($left === 0 || $right === 0) {
                    if ($direction == "left") {
                        $menu.oCss3({
                            "transform": "translate3d(100%,0px,0px)",
                            "transition-duration": "0s"
                        }, false);
                        $menu.css({
                            "left": "-" + $menu_w + "px"
                        });
                        setTimeout(function () {
                            $menu.oCss3({
                                "transform": "translate3d(0px,0px,0px)",
                                "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                            }, false);
                        }, 10);

                        if ($btnbox) {
                            $btnbox.stop().animate({
                                marginLeft: 0
                            }, 300);
                        }
                        $this.removezz();
                        if ($p.closefn) {
                            $p.closefn($this);
                        }
                    } else if ($direction == "right") {
                        $menu.oCss3({
                            "transform": "translate3d(-100%,0px,0px)",
                            "transition-duration": "0s"
                        }, false);
                        $menu.css({
                            "right": "-" + $menu_w + "px"
                        });
                        setTimeout(function () {
                            $menu.oCss3({
                                "transform": "translate3d(0px,0px,0px)",
                                "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                            }, false);
                        }, 10);

                        if ($btnbox) {
                            $btnbox.stop().animate({
                                marginRight: 0
                            }, 300);
                        }
                        $this.removezz();
                        if ($p.closefn) {
                            $p.closefn($this);
                        }
                    }
                    $this.removeClass("cur");
                } else {

                    if ($right < 0) {
                        $menu.oCss3({
                            "transform": "translate3d(-100%,0px,0px)",
                            "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s",
                            height: $(window).height() + "px"
                        }, false);
                        setTimeout(function () {
                            $menu.oCss3({
                                "transform": "translate3d(0px,0px,0px)",
                                "transition-duration": "0s",
                                height: $(window).height() + "px"
                            }, false);
                            $menu.css({
                                "right": "0px"
                            });
                            $direction = "right";
                        }, 300);
                        if ($btnbox) {
                            $btnbox.stop().animate({
                                marginRight: $menu_w
                            }, 300);
                        }
                        $mainbox.append($zz);
                        if ($p.openfn) {
                            $p.openfn($this);
                        }

                    } else if ($left < 0) {
                        $menu.oCss3({
                            "transform": "translate3d(100%,0px,0px)",
                            "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s",
                            height: $(window).height() + "px"
                        }, false);
                        setTimeout(function () {
                            $menu.oCss3({
                                "transform": "translate3d(0px,0px,0px)",
                                "transition-duration": "0s",
                                height: $(window).height() + "px"
                            }, false);
                            $menu.css({
                                "left": "0px"
                            });
                            $direction = "left";
                        }, 300);
                        if ($btnbox) {
                            $btnbox.stop().animate({
                                marginLeft: $menu_w
                            }, 300);
                        }
                        $mainbox.append($zz);
                        if ($p.openfn) {
                            $p.openfn($this);
                        }
                    }

                    $this.addClass("cur");
                }
            }

        });

        $this.init = function () {
            if ($linkage) {
                $mainbox.attr("style", "");
            } else {
                if ($btnbox) {
                    $btnbox.attr("style", "");
                }
                $menu.attr("style", "");
            }
            $this.removeClass("cur").removezz();
        };
        $(window).resize(function () {
            $this.init();
        });

        $this.removezz = function () {
            $zz.oCss3({
                opacity: 0,
                "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.5s"
            }, false);
            setTimeout(function () {
                $zz.detach();
            }, 500);
        };

        $zz.click(function () {
            $this.click();
        });


        $this.allback = function () {
            if ($linkage) {
                $mainbox.animate({
                    right: "0px"
                }, 300);
                $zz.detach();
                $this.removeClass("cur");
            } else {
                if ($direction == "left") {
                    $menu.stop().animate({
                        left: "-" + $menu_w
                    }, 300);
                    $btnbox.stop().animate({
                        marginLeft: "0px"
                    }, 300);
                    //$mainbox.animate({left:"0px"},300);
                    $zz.detach();

                } else if ($direction == "right") {
                    $menu.stop().animate({
                        right: "-" + $menu_w
                    }, 300);
                    $btnbox.stop().animate({
                        marginRight: "0px"
                    }, 300);
                    //$mainbox.animate({right:"0px"},300);
                    $zz.detach();
                }
                $this.removeClass("cur");
            }
        };
        $this.menuback = function () {
            if ($linkage) {
                $mainbox.animate({
                    right: "0px"
                }, 300);
                $zz.remove();
                $this.removeClass("cur");
            } else {
                if ($direction == "left") {
                    $menu.stop().animate({
                        opacity: "0.5"
                    }, 300, function () {
                        $menu.css({
                            "left": "-" + $menu_w,
                            "opacity": "1"
                        });
                    });
                    //$btnbox.stop().animate({marginLeft:"0px"},300);
                    //$mainbox.animate({left:"0px"},300);
                    $zz.detach();

                } else if ($direction == "right") {
                    $menu.stop().animate({
                        opacity: "0.5"
                    }, 300, function () {
                        $menu.css({
                            "right": "-" + $menu_w,
                            "opacity": "1"
                        });
                    });
                    //$btnbox.stop().animate({marginRight:"0px"},300);
                    //$mainbox.animate({right:"0px"},300);
                    $zz.detach();
                }
                $this.removeClass("cur");
            }
        };
        return $this;
    };

    $.fn.oAutoH = function (p) {
        var defaults = {
            "targetObj": window,
            "inner": false,
            callback: function () {},
            resize: true,
            minH: false
        };
        var $p = $.extend(defaults, p);
        var $this = $(this),
            $targetH_obj = $($p.targetObj),
            $parent = $this.parent(),
            $siblings = $this.siblings(".o_fixH"),
            $fixbox_list = $siblings,
            $this_h,
            $innerH = 0,
            $child_allH = $this.find(".o_H100");
        if ($p.inner) {
            $targetH_obj = $parent;
        }

        $this.init = function () {
            $parent.oClear();
            $this_h = $targetH_obj.height();
            if ($fixbox_list.length > 0) {
                $fixbox_list.each(function () {
                    if ($(this).css("display") !== "none") {
                        $this_h -= $(this).height();
                    }
                });
            }
            if ($p.minH) {
                $this.css({
                    "min-height": $this_h + "px"
                });
            } else {
                $this.css({
                    "min-height": $this_h + "px",
                    "height": $this_h + "px"
                });
            }


            $child_allH.each(function () {
                $(this).css("height", $this_h + "px");
            });
            $p.callback();
        };
        //$this.init();

        $(window).resize(function () {
            if ($p.resize && !isUC) {
                $this.init();
            }
        });
        return $this;
    };

    $.fn.oAutoW = function (p) {
        var defaults = {
            "obj1": $(this).prev(),
            "obj2": $(this).next(),
            "targetObj": $(this).parent(),
            callback: function () {},
            resize: true
        };
        var $p = $.extend(defaults, p);
        var $this = $(this),
            $obj1 = $p.obj1 ? $($p.obj1) : 0,
            $obj2 = $p.obj2 ? $($p.obj2) : 0,
            $targetW_obj = $($p.targetObj),
            $parent = $this.parent(),
            $siblings = $this.siblings(".o_fixW"),
            $this_w,
            $fixW_list = $siblings;

        $this.init = function () {
            $parent.oClear();
            $this_w = Math.floor($targetW_obj.width() - 1);
            //$this_w=document.body.clientWidth;
            $fixW_list.each(function () {
                if ($(this).css("display") !== "none") {
                    $this_w -= $(this).width();
                    //$(this).css("float","left");
                }
                $this_w = Math.floor($this_w);
                $this.css({
                    "width": $this_w + "px"
                });
                //$parent.css("font-size","0");
            });
            $p.callback();
        };

        $(window).resize(function () {
            if ($p.resize) {
                $this.init();
            }
        });
        return $this;
    };

    $.fn.oPicture = function (p) {
        var defaults = {
            sm: oPoint.sm,
            md: oPoint.md,
            lg: oPoint.lg,
            xl: oPoint.xl
        };
        var $p = $.extend(defaults, p);
        var $this = $(this),
            $window_w,
            $sm = $p.sm,
            $md = $p.md,
            $lg = $p.lg,
            $xl = $p.xl,
            xsImg = $this.attr("xs"),
            smImg = $this.attr("sm"),
            mdImg = $this.attr("md"),
            lgImg = $this.attr("lg"),
            xlImg = $this.attr("xl"),
            dfImg = $this.attr("df"),
            ie8Img = $this.attr("ie8");

        $this.init = function () {
            $window_w = $(window).width();
            if (isIe8 && ie8Img !== undefined) {
                $this.attr("src", ie8Img);
                return false;
            }

            if ($window_w < $sm + 1) {
                if (xsImg === undefined) {
                    $this.attr("src", dfImg);
                } else {
                    $this.attr("src", xsImg);
                }

            } else if ($window_w >= $sm && $window_w < $md + 1) {
                if (smImg === undefined) {
                    $this.attr("src", dfImg);
                } else {
                    $this.attr("src", smImg);
                }

            } else if ($window_w >= $md && $window_w < $lg + 1) {
                if (mdImg === undefined) {
                    $this.attr("src", dfImg);
                } else {
                    $this.attr("src", mdImg);
                }

            } else if ($window_w >= $lg && $window_w < $xl + 1) {
                if (lgImg === undefined) {
                    $this.attr("src", dfImg);
                } else {
                    $this.attr("src", lgImg);
                }
            } else if ($window_w >= $xl) {
                if (xlImg === undefined) {
                    $this.attr("src", dfImg);
                } else {
                    $this.attr("src", xlImg);
                }
            }
        };

        $(window).resize(function () {
            $this.init();
        });

        return $this;
    };

    $.fn.oInputclear = function () {
        var autotext = $(this).attr("autotext");
        $(this).val(autotext);
        $(this).focus(function () {
            if ($(this).val() == autotext) {
                $(this).attr("value", "");
            }
        });
        $(this).blur(function () {
            if ($(this).val() === "") {
                $(this).val(autotext);
            }
        });
    };

    $.fn.oTextareaclear = function () {
        var autotext = $(this).attr("autotext");
        $(this).html(autotext);

        $(this).focus(function () {
            if ($(this).html() === autotext) {
                $(this).html("");
            }
        });
        $(this).blur(function () {
            if ($(this).html() === "") {
                $(this).html(autotext);
            }
        });
    };

    $.fn.oSlider = function (p) {
        defaults = {
            "showBoxClass": "showbox",
            "autoWidth": false,
            "loop": false,
            "directionVertical": false,
            "scrollbar": false,
            "windowResize": true,
            "pager": null,
            "touch": true,
            speed: false,
            "pagerShow": false,
            "touchClear": false,
            /*"gotoFn":null,*/ "nextFn": null,
            "prevFn": null,
            "moveOne": false,
            "moveTouch": true,
            "playFn": null,
            "btnHobj": null
        };
        $p = $.extend(defaults, p);

        $(this).oCss3({
            "transform": "translateZ(0)"
        });
        $(this).oClear();
        $(this).find("ul").oClear();
        $(this).find("." + $p.showBoxClass).oClear();
        var $this = $(this),
            $showbox = $this.find("." + $p.showBoxClass),
            $originalH = $(this).height(),
            $cont = $showbox.find("ul"),
            $li = $cont.find("li"),
            $autoLi;
            $this.amount_yuan=$li.length;
        var $amount = $li.length,
            $moveOne = $p.moveOne,
            $moveTouch = $p.moveTouch,
            $moveDistance = null,
            $movebox = $("<div>"),
            $nextLeft,
            $directionVertical = $p.directionVertical,
            $moveDirection = "left",
            $loop = $p.loop,
            $havescroll = $p.scrollbar,
            $boxautoW = $p.autoWidth,
            $pager = $this.find($p.pager),
            $pagerShow = $p.pagerShow,
            $showpage = 0,
            $pagerNum,
            $page /*=Math.ceil($amount/$showAmt)*/ ,
            $yu = true,
            $newli = $("<li></li>"),
            $showWidth,
            $showHeight,
            $wResize = $p.windowResize,
            $showHeigh,
            $canTouch = $p.touch,
            $speed = $p.speed,
            $t,
            $touchEvent = null,
            $canMove = true,
            $playFn = $p.playFn,
            //$gotoFn=$p.gotoFn,
            $nextFn = $p.nextFn,
            $prevFn = $p.prevFn,
            $added = false,
            $touchI = 1,
            $liW,
            $pianyi,
            $nextA,
            $prevA,
            $playing = false,
            $active = false,
            $btnHobj = $p.btnHobj;

        if ($directionVertical) {
            $this.css("height", $originalH + "px");
        }

        $li.css("display", "inline-block");

        if ($directionVertical) {
            $moveDirection = "top";
            $cont.css({
                "font-size": "0",
                "width": "100%",
                "display": "inline"
            });
        } else {
            $cont.css({
                "font-size": "0",
                "white-space": "nowrap",
                "width": "100%",
                "display": "inline"
            });
        }

        $showbox.css({
            "overflow": "hidden",
            "position": "relative"
        });

        $this.showAmt = 0;
        $this.i = 0;
        $this.prevBtn = $("<span class='btn_prev'></span>");
        $this.nextBtn = $("<span class='btn_next'></span>");
        $this.clickI = null;

        $cont.appendTo($movebox);
        $movebox.appendTo($showbox);
        $li.on("click", function () {
            $this.clickI = $li.index(this);
        });
        if ($loop) {
            $movebox.addClass("o_font0");
            var $clone = $cont.clone(),
                $listers = $clone.find("li"),
                $listers2 = $listers.clone();
            $listers.on("click", function () {
                $this.clickI = $listers.index(this);
            });
            $listers2.on("click", function () {
                $this.clickI = $listers2.index(this);
            });
        }

        function isInteger(obj) {
            return Math.floor(obj) === obj;
        }
        $this.prepend($this.prevBtn);
        $this.prepend($this.nextBtn);
        $this.oNoSelect();

        $this.init = function () {
            $this.removeLi();
            if ($this.width() > 0) {

                if ($directionVertical) {
                    $originalH = $showbox.height();
                    $this.css("height", $originalH + "px");
                }
                //初始化 样式
                $movebox.attr("style", "");
                $cont.css("margin-" + $moveDirection, "0");
                $this.prevBtn.css({
                    "display": "inline-block",
                    "position": "absolute",
                    "z-index": 1
                });
                $this.nextBtn.css({
                    "display": "inline-block",
                    "position": "absolute",
                    "z-index": 1
                });
                $showWidth = $this.width() - $this.prevBtn.width() - $this.nextBtn.width();
                if ($directionVertical) {
                    $showHeight = $this.height() - $this.prevBtn.height() - $this.nextBtn.height();
                } else {
                    $showHeight = $showbox.height();
                }


                for (var i = 0; i < $li.length; i++) {
                    if (!$li.eq(i).hasClass('cur')) {
                        $autoLi = $li.eq(i);
                        break;
                    }
                }
                
                //重置显示个数
                if ($directionVertical) {
                    $this.showAmt = Math.round($showbox.height() / ($autoLi.height() + parseInt($autoLi.css("padding-top")) + parseInt($autoLi.css("padding-bottom"))) - 0.4);
                    $amount=$this.amount_yuan<=Math.ceil($cont.height()/$autoLi.height())?$this.amount_yuan:Math.ceil($cont.height()/$autoLi.height());
                } else {
                    $this.showAmt = Math.round($showbox.width() / ($autoLi.width() + parseInt($autoLi.css("padding-left")) + parseInt($autoLi.css("padding-right"))) - 0.4);
                    $amount=$this.amount_yuan<=Math.ceil($cont.width()/$autoLi.width())?$this.amount_yuan:Math.ceil($cont.width()/$autoLi.width());
                }
                //console.log($amount);
                // if($p.moveNum!=null){
                //  console.log($this.showAmt);
                // }
                //$movebox.attr("style","");
                
                $showPage = Math.ceil($amount / $this.showAmt);
                $this.i = 0;
                $movebox.css({
                    "position": "relative",
                    "left": "0px",
                    "top": "0px"
                });
                if (isInteger($speed) && $amount > $this.showAmt) {
                    if (isPC) {
                        $this.hover(function () {
                            $this.stop();
                        }, function () {
                            $this.play($speed);
                        });
                    }
                }
                //初始化计算
                if ($amount <= $this.showAmt) {
                    //如果 位置个数 >实际个数
                    //$showbox.attr("style","").css({"position":"relative"/*,"text-align":"center"*/});
                    $showWidth = $this.width();
                    // if($amount<$this.showAmt){
                    //  $li.css("width",$showWidth/$amount+"px");
                    // }
                    $showbox.css("width", "");
                    // $movebox.css({"position":"absolute","left":"0px","top":"0px"});
                    $this.prevBtn.hide();
                    $this.nextBtn.hide();
                    clearInterval($t);

                    if ($canTouch && $touchEvent !== null) {
                        $touchEvent.touchClear();
                        $canTouch = false;
                        $touchEvent = null;
                    }
                    $pager.empty();
                    return false;

                } else {

                    $canTouch = true;
                    //修改
                    if ($moveOne || $moveTouch) {

                        $yu = false;

                    } else {
                        if ($amount % $this.showAmt === 0) {
                            $yu = false;
                        } else {
                            $yu = true;
                        }
                    }

                    $li.attr("style", "");
                    if ($boxautoW) {
                        if ($directionVertical) {
                            $showbox.css({
                                "height": $showHeight + "px"
                            });
                            $showWidth = $showbox.width();
                            $cont.find("li").css("height", Math.ceil($showHeight / $this.showAmt) + "px");
                            $this.showHeightFn();
                        } else {
                            $showbox.css({
                                "width": $showWidth + "px"
                            });
                            $this.prevBtn.css({
                                "position": "relative",
                                "float": "left"
                            });
                            $this.nextBtn.css({
                                "position": "relative",
                                "float": "right"
                            });
                            $showHeight = $showbox.height();
                            $this.showWidthFn();
                        }

                    }
                    if ($directionVertical) {
                        if ($btnHobj === null) {
                            $this.prevBtn.css({
                                "width": $showbox.width() + "px"
                            });
                            $this.nextBtn.css({
                                "width": $showbox.width() + "px"
                            });
                        } else {
                            $this.prevBtn.css({
                                "width": $this.find($btnHobj).eq(0).width() + "px"
                            });
                            $this.nextBtn.css({
                                "width": $this.find($btnHobj).eq(0).width() + "px"
                            });
                        }
                    } else {
                        if ($btnHobj === null) {
                            $this.prevBtn.css({
                                "height": $showHeight + "px",
                                "line-height": $showHeight + "px"
                            });
                            $this.nextBtn.css({
                                "height": $showHeight + "px",
                                "line-height": $showHeight + "px"
                            });
                        } else {
                            $this.prevBtn.css({
                                "height": $this.find($btnHobj).eq(0).height() + "px",
                                "line-height": $this.find($btnHobj).eq(0).height() + "px"
                            });
                            $this.nextBtn.css({
                                "height": $this.find($btnHobj).eq(0).height() + "px",
                                "line-height": $this.find($btnHobj).eq(0).height() + "px"
                            });
                        }
                    }
                }


                if ($moveTouch || $moveOne) {
                    if ($directionVertical) {
                        $liW = Math.ceil($autoLi.height() + parseInt($autoLi.css("padding-top")) + parseInt($autoLi.css("padding-bottom")));
                    } else {
                        $liW = Math.ceil($autoLi.width() + parseInt($autoLi.css("padding-left")) + parseInt($autoLi.css("padding-right")));
                    }

                } else {
                    if ($directionVertical) {
                        $liW = $showbox.height();
                    } else {
                        $liW = $showbox.width();
                    }
                }

                if ($moveOne || $moveTouch) { /*移动1个 或 随机移动*/
                    if ($this.showAmt > 1 && !$loop) {
                        $page = Math.ceil(($amount - $this.showAmt + 1));
                        $pagerNum = $amount;

                    } else {
                        $page = $amount;
                        $pagerNum = $amount;
                    }

                } else { /*移动普通*/

                    $page = Math.ceil($amount / $this.showAmt);
                    $pagerNum = $page;
                }


                if ($moveOne) {
                    $moveDistance = $autoLi.width();
                }

                if ($loop && !$yu) {
                    if ($cont.find("li").length == $amount) {
                        $this.removeLi();
                        $this.addLi();
                    }
                    if ($directionVertical) {
                        $pianyi = -$amount * ($autoLi.height() + parseInt($autoLi.css("padding-top")) + parseInt($autoLi.css("padding-bottom"))) + "px";
                    } else {
                        $pianyi = -$amount * ($autoLi.width() + parseInt($autoLi.css("padding-left")) + parseInt($autoLi.css("padding-right"))) + "px";
                    }

                    $cont.css("margin-" + $moveDirection, $pianyi);
                } else {
                    if ($cont.find("li").length > $amount) {
                        $this.removeLi();
                    }
                    $cont.css("margin-" + $moveDirection, "0px");
                }

                //pager
                if ($pager) {

                    $pager.empty();
                    for (var i = 0; i < $pagerNum; i++) {

                        if ($pagerShow) {
                            var $pagerli = $newli.clone();
                            var img = $li.eq(i).html();
                            $pagerli.html(img);
                            $this.find($pager).append($pagerli);
                        } else {
                            $this.find($pager).append($newli.clone());
                        }

                    }
                    $this.find($pager).find("li").eq(0).addClass("cur");
                }

                $this.find($pager).find("li").on("click", function () {
                    var i = $this.find($pager).find("li").index($(this));
                    if (i > $page - 1) {
                        i = $page - 1;
                    }
                    $this.goto(i);
                });

                if (isInteger($speed) && !$playing) {
                    $this.play($speed);
                }

                if ($canTouch && $touchEvent === null) {
                    if ($directionVertical) { //纵向
                        $touchEvent = $showbox.oTouch({
                            touchStart: function ($p) {
                                if (isInteger($speed) && $playing) {
                                    $this.stop();
                                }
                                $active = true;
                            },
                            touchMoveV: function ($p) {

                                if ($page > 1) {
                                    if (isIe8 || isIe9 || isUC) {

                                        if ($moveDistance === null) {

                                            $movebox.css("top", -$this.i * $liW + ($p.moveY - $p.startY) + "px");
                                        } else {
                                            if ($this.showAmt + $this.i >= $amount) {
                                                $movebox.css("top", -$this.i * $moveDistance + ($p.moveY - $p.startY) + "px");
                                            } else {
                                                $movebox.css("top", -$this.i * $moveDistance + ($p.moveY - $p.startY) + "px");
                                            }
                                        }

                                    } else {

                                        if ($moveDistance === null) {
                                            $movebox.oCss3({
                                                transform: "translate3d(0px," + -($this.i * $liW + ($p.startY - $p.moveY)) + "px,0px)",
                                                "transition-duration": "0s"
                                            });
                                        } else {
                                            if ($this.showAmt + $this.i >= $amount) {
                                                $movebox.oCss3({
                                                    transform: "translate3d(0px," + -($this.i * $moveDistance + ($p.startY - $p.moveY)) + "px,0px)",
                                                    "transition-duration": "0s"
                                                });
                                            } else {
                                                $movebox.oCss3({
                                                    transform: "translate3d(0px," + -($this.i * $moveDistance + ($p.startY - $p.moveY)) + "px,0px)",
                                                    "transition-duration": "0s"
                                                });
                                            }
                                        }
                                    }
                                }

                            },
                            touchUp: function ($p) {

                                if ($page > 1) {
                                    if ($p.startY - $p.endY > 20 && $canMove) {
                                        $touchI = Math.abs(Math.ceil(($p.startY - $p.endY) / $liW));
                                        $this.next();
                                    } else {

                                        if (isIe8 || isIe9 || isUC) {
                                            if ($moveDistance === null) {
                                                $movebox.stop().animate({
                                                    "top": -$this.i * $liW + "px"
                                                }, 300);
                                            } else {
                                                $movebox.stop().animate({
                                                    "top": -$this.i * $moveDistance + "px"
                                                }, 300);
                                            }

                                        } else {
                                            if ($moveDistance === null) {
                                                $movebox.oCss3({
                                                    transform: "translate3d(0px," + -($this.i * $liW) + "px,0px)",
                                                    "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                                                });
                                            } else {
                                                $movebox.oCss3({
                                                    transform: "translate3d(0px," + -($this.i * $moveDistance) + "px,0px)",
                                                    "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                                                });
                                            }
                                        }

                                    }

                                    // if($gotoFn!==null){
                                    //  $gotoFn($this.i);
                                    // }
                                }

                            },
                            touchDown: function ($p) {

                                if ($page > 1) {

                                    if ($p.startY - $p.endY < -20 && $canMove) {

                                        $touchI = Math.abs(Math.ceil(($p.endY - $p.startY) / $liW));

                                        $this.prev();
                                    } else {
                                        if (isIe8 || isIe9 || isUC) {
                                            if ($moveDistance === null) {
                                                $movebox.stop().animate({
                                                    "top": -$this.i * $liW + "px"
                                                }, 300);
                                            } else {
                                                $movebox.stop().animate({
                                                    "top": -$this.i * $moveDistance + "px"
                                                }, 300);
                                            }

                                        } else {

                                            if ($moveDistance === null) {
                                                $movebox.oCss3({
                                                    transform: "translate3d(0px," + -($this.i * $liW) + "px,0px)",
                                                    "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                                                });
                                            } else {
                                                $movebox.oCss3({
                                                    transform: "translate3d(0px," + -($this.i * $moveDistance) + "px,0px)",
                                                    "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                                                });
                                            }
                                        }

                                    }
                                    // if($gotoFn!==null){
                                    //  $gotoFn($this.i);
                                    // }
                                }

                            },
                            touchEnd: function () {
                                if (!isPC) {
                                    if (isInteger($speed) && !$playing) {
                                        $this.play($speed);
                                    }
                                }
                            }
                        });
                    } else { //横向
                        $touchEvent = $showbox.oTouch({
                            touchStart: function () {
                                if (isInteger($speed) && $playing) {
                                    $this.stop();
                                }
                                $active = true;
                            },
                            touchMoveH: function ($p) {

                                if ($page > 1) {
                                    if (isIe8 || isIe9 || isUC) {
                                        if ($moveDistance === null) {
                                            $movebox.css("left", -$this.i * $liW + ($p.moveX - $p.startX) + "px");
                                        } else {
                                            if ($this.showAmt + $this.i >= $amount) {

                                                $movebox.css("left", -$this.i * $moveDistance + ($p.moveX - $p.startX) + "px");
                                            } else {
                                                $movebox.css("left", -$this.i * $moveDistance + ($p.moveX - $p.startX) + "px");
                                            }
                                        }

                                    } else {

                                        if ($moveDistance === null) {
                                            $movebox.oCss3({
                                                transform: "translate3d(" + -($this.i * $liW + ($p.startX - $p.moveX)) + "px,0px,0px)",
                                                "transition-duration": "0s"
                                            });
                                        } else {
                                            if ($this.showAmt + $this.i >= $amount) {
                                                $movebox.oCss3({
                                                    transform: "translate3d(" + -($this.i * $moveDistance + ($p.startX - $p.moveX)) + "px,0px,0px)",
                                                    "transition-duration": "0s"
                                                });
                                            } else {
                                                $movebox.oCss3({
                                                    transform: "translate3d(" + -($this.i * $moveDistance + ($p.startX - $p.moveX)) + "px,0px,0px)",
                                                    "transition-duration": "0s"
                                                });
                                            }
                                        }
                                    }
                                }

                            },
                            touchLeft: function ($p) {

                                if ($page > 1) {
                                    if ($p.startX - $p.endX > 50 && $canMove) {
                                        $touchI = Math.abs(Math.ceil(($p.startX - $p.endX) / $liW));
                                        $this.next();
                                    } else {

                                        if (isIe8 || isIe9 || isUC) {
                                            if ($moveDistance === null) {
                                                $movebox.stop().animate({
                                                    "left": -$this.i * $liW + "px"
                                                }, 300);
                                            } else {
                                                $movebox.stop().animate({
                                                    "left": -$this.i * $moveDistance + "px"
                                                }, 300);
                                            }

                                        } else {
                                            if ($moveDistance === null) {
                                                $movebox.oCss3({
                                                    transform: "translate3d(" + -($this.i * $liW) + "px,0px,0px)",
                                                    "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                                                });
                                            } else {
                                                $movebox.oCss3({
                                                    transform: "translate3d(" + -($this.i * $moveDistance) + "px,0px,0px)",
                                                    "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                                                });
                                            }
                                        }

                                    }

                                    // if($gotoFn!==null){
                                    //  $gotoFn($this.i);
                                    // }
                                }

                            },
                            touchRight: function ($p) {

                                if ($page > 1) {
                                    if ($p.startX - $p.endX < -50 && $canMove) {
                                        $touchI = Math.abs(Math.ceil(($p.endX - $p.startX) / $liW));

                                        $this.prev();
                                    } else {
                                        if (isIe8 || isIe9 || isUC) {
                                            if ($moveDistance === null) {
                                                $movebox.stop().animate({
                                                    "left": -$this.i * $liW + "px"
                                                }, 300);
                                            } else {
                                                $movebox.stop().animate({
                                                    "left": -$this.i * $moveDistance + "px"
                                                }, 300);
                                            }

                                        } else {

                                            if ($moveDistance === null) {
                                                $movebox.oCss3({
                                                    transform: "translate3d(" + -($this.i * $liW) + "px,0px,0px)",
                                                    "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                                                });
                                            } else {
                                                $movebox.oCss3({
                                                    transform: "translate3d(" + -($this.i * $moveDistance) + "px,0px,0px)",
                                                    "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                                                });
                                            }
                                        }

                                    }
                                    // if($gotoFn!==null){
                                    //  $gotoFn($this.i);
                                    // }
                                }

                            },
                            touchEnd: function () {
                                if (!isPC) {
                                    if (isInteger($speed) && !$playing) {
                                        $this.play($speed);
                                    }
                                }
                            }
                        });
                    }

                }
                if ($p.touchClear) {
                    $showbox.oTouch({
                        "clearE": true
                    });
                }
                //$this.oClear();
                $this.pagerlist();
            }
        };

        $this.play = function (t) {
            setTimeout(function () {
                clearInterval($t);
                $t = setInterval(function () {
                    //$touchI=1;
                    $this.next();
                }, t);
                $playing = true;
            }, 500);
        };

        $this.showWidthFn = function () { //显示区域宽度重置

            if ($showWidth % $autoLi.width() !== 0) {
                $showWidth = Math.ceil($autoLi.width()) * $this.showAmt;

                $showbox.css({
                    "width": $showWidth + "px"
                });
                if ($boxautoW) {
                    $this.prevBtn.css("width", Math.floor(($this.width() - $showWidth) / 2) + "px");
                    $this.nextBtn.css("width", Math.floor(($this.width() - $showWidth) / 2) + "px");
                }
            }
        };
        $this.showHeightFn = function () { //显示区域高度重置
            if ($showHeight % $autoLi.height() !== 0) {
                $showHeight = Math.ceil($autoLi.height()) * $this.showAmt;
                $showbox.css({
                    "height": $showHeight + "px"
                });
                if ($boxautoW) {
                    $this.prevBtn.css("height", Math.floor(($originalH - $showHeight) / 2) + "px");
                    $this.nextBtn.css("height", Math.floor(($originalH - $showHeight) / 2) + "px");
                    $showbox.css({
                        top: Math.floor(($originalH - $showHeight) / 2) + "px"
                    });
                }
            }
        };

        $this.stop = function () {
            clearInterval($t);
            $playing = false;
        };

        $this.change = function () {
            //初始化
            $li = $showbox.find("li");
            $amount = $li.length;
            $cont = $showbox.find("ul");
            if ($loop) {
                $clone = $cont.clone();
                $listers = $clone.find("li");
                $listers2 = $listers.clone();
            }
            $this.init();
        };

        $this.goto = function (i) {
            $canMove = false;
            if ($loop && !$yu) {

                //循环通常
                if ($moveDistance === null) {
                    $nextLeft = (-i * $liW) + "px";

                } else {
                    $nextLeft = (-i * $moveDistance) + "px";
                    // if(/*$this.showAmt+*/i>=$amount){
                    //  //$nextLeft=($amount-$this.showAmt)/$moveOne*$moveDistance+"px";
                    // }
                }
                $this.i = i;

                if (isIe8 || isIe9 || isUC) {
                    if ($directionVertical) {
                        $movebox.stop().animate({
                            top: $nextLeft
                        }, 300, function () {
                            if (i >= $page) {
                                $movebox.css({
                                    top: -$this.i * $liW
                                });
                            } else if (i <= -1) {
                                $movebox.css({
                                    top: -$this.i * $liW
                                });
                            }
                        });
                    } else {
                        $movebox.stop().animate({
                            left: $nextLeft
                        }, 300, function () {
                            if (i >= $page) {
                                $movebox.css({
                                    left: -$this.i * $liW
                                });
                            } else if (i <= -1) {
                                $movebox.css({
                                    left: -$this.i * $liW
                                });
                            }
                        });
                    }

                } else {
                    if ($directionVertical) {
                        $movebox.oCss3({
                            transform: "translate3d(0px," + $nextLeft + ",0px)",
                            "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                        });
                    } else {
                        $movebox.oCss3({
                            transform: "translate3d(" + $nextLeft + ",0px,0px)",
                            "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                        });
                    }

                }

                if (i >= $page) {

                    //$cont.css("margin-left",$pianyi);

                    $this.i = i - $page;

                    setTimeout(function () {
                        //重置位置

                        if (isIe8 || isIe9 || isUC) {
                            //$movebox.css({left:-$this.i*$liW});


                        } else {
                            if ($directionVertical) {
                                $movebox.oCss3({
                                    transform: "translate3d(0px," + -$this.i * $liW + "px" + ",0px)",
                                    "transition-duration": "0s"
                                });
                            } else {
                                $movebox.oCss3({
                                    transform: "translate3d(" + -$this.i * $liW + "px" + ",0px,0px)",
                                    "transition-duration": "0s"
                                });
                            }
                        }



                        if (isInteger($speed) && !isPC && !$playing) {
                            $this.play($speed);
                        }

                    }, 200);



                } else if (i <= -1) {
                    //$cont.css("margin-left",$pianyi);
                    $this.i = $page + i;

                    setTimeout(function () {
                        //重置位置
                        if (isIe8 || isIe9 || isUC) {
                            //  $movebox.css({left:-$this.i*$liW+"px"});
                        } else {
                            if ($directionVertical) {
                                $movebox.oCss3({
                                    transform: "translate3d(0px," + -$this.i * $liW + "px" + ",0px)",
                                    "transition-duration": "0s"
                                });
                            } else {
                                $movebox.oCss3({
                                    transform: "translate3d(" + -$this.i * $liW + "px" + ",0px,0px)",
                                    "transition-duration": "0s"
                                });
                            }
                        }


                        if (isInteger($speed) && !isPC && !$playing) {
                            $this.play($speed);
                        }
                    }, 200);

                } else {

                    setTimeout(function () {

                        if (isInteger($speed) && !isPC && !$playing) {
                            $this.play($speed);
                        }
                    }, 200);
                }
                setTimeout(function () {
                    $canMove = true;
                }, 300);

            } else {

                //不循环通常
                if ($moveDistance === null) {
                    $nextLeft = i * $liW + "px";
                } else {
                    $nextLeft = i * $moveDistance + "px";
                    if ($this.showAmt + i > $amount) {
                        $nextLeft = ($amount - $this.showAmt) / $moveDistance + "px";
                    }
                }

                $this.i = i;
                if (isIe8 || isIe9 || isUC) {
                    if ($directionVertical) {
                        $movebox.stop().animate({
                            top: "-" + $nextLeft
                        }, 300, function () {});
                    } else {
                        $movebox.stop().animate({
                            left: "-" + $nextLeft
                        }, 300, function () {});
                    }

                } else {
                    if ($directionVertical) {
                        $movebox.oCss3({
                            transform: "translate3d(0px,-" + $nextLeft + ",0px)",
                            "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                        });
                    } else {
                        $movebox.oCss3({
                            transform: "translate3d(-" + $nextLeft + ",0px,0px)",
                            "transition-duration": "http://image.tongshuai.com/tongshuai/images/0.3s"
                        });
                    }

                }


                setTimeout(function () {
                    $canMove = true;
                    if (isInteger($speed) && !isPC && !$playing) {
                        $this.play($speed);
                    }
                }, 300);

            }
            $this.prevOrNextFn();
            if ($playFn !== null) {
                $playFn({
                    i: $this.i,
                    next: $this.nextBtn,
                    prev: $this.prevBtn
                });
            }

            $this.pagerlist();

        };

        $this.prevOrNextFn = function () {
            if ($nextFn !== null && $next) {
                $nextFn($this.i);
            } else if ($prevFn !== null && $prev) {
                $prevFn($this.i);
            }
        };


        $this.pagerlist = function () {
            if ($this.showAmt > 1) {
                if ($moveTouch || $moveOne) {
                    if ($loop) {
                        $pager.find("li").removeClass("cur").removeClass("firstcur");
                        for (var i = 0; i < $this.showAmt; i++) {
                            if ($this.i + i >= $amount) {
                                $pager.find("li").eq($this.i - $amount + i).addClass("cur");
                            } else {
                                $pager.find("li").eq($this.i + i).addClass("cur");
                            }
                        }
                        $pager.find("li").eq($this.i).addClass("firstcur");
                    } else {
                        $pager.find("li").removeClass("cur").removeClass("firstcur");
                        for (var i = 0; i < $this.showAmt; i++) {
                            if ($this.i > $amount - $this.showAmt) {
                                $pager.find("li").eq($amount - $this.showAmt + i).addClass("cur");
                            } else {
                                $pager.find("li").eq($this.i + i).addClass("cur");
                            }
                        }
                        $pager.find("li").eq($this.i).addClass("firstcur");
                    }
                } else {
                    $pager.find("li").eq($this.i).addClass("cur").siblings().removeClass("cur");
                }

            } else {
                $pager.find("li").eq($this.i).addClass("cur").siblings().removeClass("cur");
            }

            if ($loop) {
                $listers.removeClass("cur").eq($this.i).addClass("cur");
                $listers2.removeClass("cur").eq($this.i).addClass("cur");
            }
            $li.removeClass("cur").eq($this.i).addClass("cur");

            $touchI = 1;

        };


        //轮播个数大于显示个数
        if ($havescroll) {
            var $scrollbar = $("<div class='scroll'></div>");
            var $scrollmark = $("<span></span>");
            $scrollbar.append($scrollmark);

        }

        $this.addLi = function () {
            if ($added === false) {
                $listers.appendTo($cont);
                $listers2.appendTo($cont);
                $listers.on("click",function () {
                    $this.clickI = $listers.index(this);
                });
                $listers2.on("click",function () {
                    $this.clickI = $listers2.index(this);
                });
                $added = true;
            }

        };

        $this.removeLi = function () {
            if ($added === true) {
                $listers.remove();
                $listers2.remove();
                $added = false;
            }

        };

        $this.prevBtn.click(function () {
            $this.prev();

        });

        $this.prev = function () {

            $next = false;
            $prev = true;
            if ($canMove) {
                if ($moveOne) {
                    $this.i--;
                } else {
                    $touchI > $this.showAmt ? $this.showAmt : $touchI;
                    $this.i -= $touchI;
                }

                if ($loop && !$yu) {
                    $this.goto($this.i);

                } else if ($this.i < 0) {
                    if (!$loop || $yu) {
                        if ($active) { //滑动触发第一个
                            if ($moveOne) {
                                $this.i++;
                            } else {
                                $this.i = 0;
                            }
                            $prev = false;
                            $active = false;
                        } else {
                            $this.i = $page - 1;
                        }
                    }
                    $this.goto($this.i);

                } else {
                    $this.goto($this.i);

                }

                // else if($gotoFn!==null){
                //  $gotoFn($this.i);
                // }
            }
        };

        $this.nextBtn.click(function () {
            //$touchI=1;
            $this.next();
        });

        $this.next = function () {

            $next = true;
            $prev = false;
            if ($canMove) {

                if ($moveOne) {
                    $this.i++;
                } else {
                    $touchI > $this.showAmt ? $this.showAmt : $touchI;
                    $this.i += $touchI;
                }

                if ($loop && !$yu) { //循环
                    $this.goto($this.i);
                    if ($nextFn !== null) {
                        $nextFn($this.i);
                    }
                } else if ($this.i > $page - 1) {
                    if (!$loop || $yu) {
                        if ($active) { //滑动触发最后一个
                            if ($moveOne) {
                                $this.i--;
                            } else {
                                $this.i = $page - 1;
                            }
                            $next = false;
                            $active = false;
                        } else {
                            $this.i = 0;
                        }

                    } //else{
                    //  $this.i=$page-1;
                    //}
                    $this.goto($this.i);
                } else {
                    $this.goto($this.i);

                }

                // else if($gotoFn!==null){
                //  $gotoFn($this.i);
                // }
            }

        };

        if ($wResize) {
            $(window).resize(function () {
                $this.init();
            });
        }

        return $this;
    };

    //高度跟随
    $.fn.oHrel = function (p) {
        var ele = $(this),
            backEle = [];
        ele.each(function () {
            var defaults = {
                resize: true,
                obj: null
            };
            var $p = $.extend(defaults, p);
            var $this = {};
            $this.obj = $(this);
            if ($this.obj.attr("obj") !== null) {
                $this.target = $($this.obj.attr("obj"));
            }
            if ($p.obj !== null) {
                $this.target = eval($p.obj);
            }
            $this.h = 0;

            $this.init = function () {
                $this.h = $this.target.height();
                $this.obj.css("height", $this.h + "px");
            };

            if ($p.resize) {
                $(window).resize(function () {
                    $this.init();
                });
            }
            backEle.push($this);
        });
        var $backEle = $(backEle);
        $backEle.init = function (a) {
            if (a) {
                backEle[a].init();
            } else {
                $backEle.each(function (i) {
                    backEle[i].init();
                });
            }
        };
        return $backEle;
    };

    $.fn.oCss3 = function ($p, a) {
        var $this = $(this),
            $style = "",
            // $styleJson=jquery.press,
            $qz = ["-webkit-", "-o-", "-moz-"];
        if (a === false) {
            $style = $this.attr("style");
        }
        for (var o in $p) {
            $style += ";" + o + ":" + $p[o];

            for (var i = 0; i < $qz.length; i++) {
                $style += ";" + $qz[i] + o + ":" + $p[o];
            }
        }
        $this.attr("style", $style);
    };

    $.fn.oRotate = function ($p) {
        var $this = $(this);
        if (isIe8) {
            var m11 = Math.cos($p),
                m12 = -Math.sin($p),
                m21 = Math.sin($p),
                m22 = Math.cos($p),
                $width = $this.width(),
                $height = $this.height(),
                dx = -$width / 2 * Math.cos($p) + $height / 2 * Math.sin($p) + $width / 2,
                dy = -$width / 2 * Math.sin($p) - $height / 2 * Math.cos($p) + $height / 2,
                $style = $this.attr("style");
            $style += ";filter:progid:DXImageTransform.Microsoft.Matrix(M11=" + m11 + ",M12=" + m12 + ",M21=" + m21 + ",M22=" + m22 + ",SizingMethod='auto expand');";
            $this.attr("style", $style);
        } else {
            $this.oCss3({
                "transform": "rotate(" + $p + "deg)"
            }, false);
        }
    };

    // $.fn.oAnimate=function($p){
    //  defaults=({css:({}),speed:300});
    //  var $this=$(this);
    // }

    $.fn.oPopup = function (p) {

        defaults = {
            "confirm": ".js_confirm",
            "confirmFn": null,
            "zz": "<div class='o_shade'></div>",
            "closeFn": null,
            absolute: false
        };
        $p = $.extend(defaults, p);

        var $this = $(this);
        $this.obj = $(this);
        $this.target = null;
        if ($(this).attr("oData-popup") !== null) {
            $this.target = $($(this).attr("oData-popup"));
        }
        $this.zz = $($p.zz);
        $this.confirm = $this.target.find($p.confirm);
        $this.closebtn = $this.target.find(".js_popupClose");
        $this.confirmFn = $p.confirmFn;
        $this.closeFn = $p.closeFn;
        $this.absolute = $p.absolute;
        $this.top = 0;

        if ($this.absolute) {
            $this.target.addClass("absolute");
        }

        $this.on("click", function () {
            $this.open();
        });

        $this.open = function () {
            $this.zz.appendTo($(".o_body")).addClass("show");
            $this.target.show().addClass("show");

            if ($this.confirm.length > 0) {
                $this.confirm.off();
                $this.confirm.on("click", function () {
                    $this.closebtn.click();
                    if ($this.confirmFn) {
                        $this.confirmFn({
                            selfEle: $this.obj,
                            targetEle: $this.target,
                            self: $this
                        });
                    }

                });
            }
            $this.init();
        };

        $this.closebtn.on("click", function () {
            $this.close();
        });

        $this.close = function () {
            $this.target.addClass("hide");
            $this.zz.removeClass("show");
            setTimeout(function () {
                $this.zz.detach();
                $this.target.removeClass("hide").removeClass("show").hide();
                if ($this.closeFn !== null) {
                    $this.closeFn($this.target);
                }

            }, 300);
        };

        $this.init = function () {
            var wH = $(window).height(),
                dH = $(document).height(),
                scrollH = $(window).scrollTop(),
                objH = $this.target.height();
            if (!$this.absolute) { //不固定
                if (objH <= wH) { //小于
                    $this.top = (wH - objH) / 2;
                    $this.target.css('top', $this.top).removeClass("absolute");
                } else { //大于
                    if (scrollH + objH + 30 > dH) {
                        scrollH = dH - (objH + 60);
                        $("html,body").animate({
                            scrollTop: scrollH
                        }, 200);
                        $this.top = scrollH + 30;
                        $this.target.css('top', $this.top).addClass("absolute");
                    } else {
                        $this.top = scrollH + 30;
                        $this.target.css('top', $this.top).addClass("absolute");
                    }
                }
            } else { //固定
                if (objH <= wH) {
                    $this.top = scrollH + (wH - objH) / 2;
                    $this.target.css('top', $this.top);
                } else {
                    if (scrollH + objH + 30 > dH) {
                        scrollH = dH - (objH + 60);
                        $("html,body").animate({
                            scrollTop: scrollH
                        }, 200);
                        $this.top = scrollH + 30;
                        $this.target.css('top', $this.top).addClass("absolute");
                    } else {
                        $this.top = scrollH + 30;
                        $this.target.css('top', $this.top);
                    }
                }
            }
        };

        if (isPC) {
            $(window).resize(function () {
                $this.init();
            });
        }

        return $this;
    };

    // $.fn.oAlert=function(p){
    //  defaults={"info":"没有信息"};
    //  $p=$.extend(defaults,p);
    //  var $body=$(".o_body"),
    //      $this={};

    //      $this.openbtn=$("<span>");
    //      $this.openbtn.attr("href",".js_alertbox");
    //      $this.info=$p.info;

    //      $this.box=$("<div>");
    //      $this.box.addClass("o_popup o_alert js_alertbox");

    //      $this.closebtn=$("<span>");
    //      $this.closebtn.addClass("o_popupclose js_popupClose");

    //      $this.contbox=$("<div>");
    //      $this.contbox.addClass("cont");

    //      $this.closebtn.appendTo($this.box);
    //      $this.contbox.appendTo($this.box);
    //      $body.after($this.box);
    //      $body.append($this.openbtn);

    //      $this.openbtn.oPopup();
    //      $this.open=function(info){
    //          $this.contbox.html(info);
    //          $this.openbtn.click();
    //      };

    //      return $this;
    // };

    $.fn.oNoSelect = function () {
        if (!isIe) {
            $(this).oCss3({
                "user-select": "none"
            }, false);
        } else if (isPC) {

            $(this).on("selectstart", function () {
                return false;
            });
            $(this).on("drag", function () {
                return false;
            });
        }
    };

    $.fn.oCutImg = function (p) {
        defaults = {
            "imgurl": [],
            showimg: "",
            min: 50,
            "windowResize": true
        };
        $p = $.extend(defaults, p);
        var $this = $(this),
            $url = $p.imgurl,
            $min = $p.min,
            $showimg = $($p.showimg),
            $mainbox = $("<div class='o_cutimgbox'>"),
            $bgbox = $("<div class='bgbox'>"),
            $imgbox = $("<div class='imgbox'>"),
            $cutbox = $("<div class='cutbox'>"),
            $cutimg = $("<div class='box'>"),
            $controlbox = $("<div class='controlbox'>"),
            $control = $("<div class='control'>"),
            $resize = $("<div class='resize'>"),
            $img = $("<img>"),
            $maxH = $this.height(),
            $maxW = $this.width(),
            $maxCol = $colW,
            $imgautoH,
            $imgH,
            $imgW,
            $colW,
            $imgL,
            $imgT,
            $curL,
            $curT,
            $longName,
            $bl,
            $showbl,
            $degI = 0,
            $cutInfo;


        $img.attr("src", $url[0]);
        var $img2 = $img.clone(true);

        $this.changeImg = function (url) {
            $degI = 0;
            $url = url;
            $img.attr("src", $url[0]);
            $img2.attr("src", $url[0]);
        };

        $this.rotate = function () {
            $degI++;
            if ($degI > 3) {
                $degI = 0;
            }
            $img.attr("src", $url[$degI]);
            $img2.attr("src", $url[$degI]);

        };

        $this.reset = function () {
            $img.appendTo($imgbox);
            $imgbox.appendTo($bgbox);

            $img2.appendTo($cutimg);
            $cutimg.appendTo($cutbox);

            $resize.appendTo($control);
            $control.appendTo($controlbox);
            $mainbox.append($bgbox).append($cutbox).append($controlbox);
            $this.append($mainbox);

            $imgbox.attr("style", "");
            $img2.attr("style", "");
            $imgbox.attr("style", "");
            $img.attr("style", "");
            $imgautoH = $img2.height();
            $imgW = $img.width();
            $imgH = $img.height();
            if ($img.height() > $this.height()) {
                $imgH = $this.height();
                $imgbox.height($imgH);
                $img.height($imgH);
                $img2.height($imgH);
                $imgW = $img.width();
            }
            $longName = $imgW >= $imgH ? "width" : "height";

            if (isIe) {

                $img.attr("style", "");
                $imgbox.attr("style", "");
                if ($longName == "height") {
                    if ($img.height() > $maxH) {
                        $img.height($maxH);
                        $imgbox.css({
                            "height": $img.height(),
                            "width": "auto"
                        });
                    }
                } else if ($longName == "width") {

                    if ($img.width() > $maxW) {
                        $img.width($maxW);
                        $imgbox.css({
                            "width": $img.width(),
                            "height": "auto"
                        });
                    }
                }
                //ie重置
                $imgW = $img.width();
                $imgH = $img.height();

            }
            $colW = $imgW - $imgH > 0 ? $imgH : $imgW;
            $colW = $colW < $control.width() ? $colW : $control.width();
            $maxCol = $colW;

            $imgL = -Math.round(($imgW - $colW) / 2);
            $imgT = -Math.round(($imgH - $colW) / 2);
            $img2.css({
                "width": $imgW,
                "height": $imgH,
                "left": $imgL,
                "top": $imgT
            });

            if (!isIe8) {
                $imgbox.css({
                    "width": $imgW,
                    "height": $imgH
                });
                $cutbox.css({
                    "width": $imgW,
                    "height": $imgH,
                    "margin-left": -Math.round($imgW / 2),
                    "margin-top": -Math.floor($imgH / 2)
                });
                $controlbox.css({
                    "width": $imgW,
                    "height": $imgH,
                    "margin-left": -Math.round($imgW / 2),
                    "margin-top": -Math.floor($imgH / 2)
                });
            } else {
                $imgbox.css({
                    "width": $imgW,
                    "height": $imgH
                });
                $cutbox.css({
                    "width": $imgW,
                    "height": $imgH,
                    "margin-left": -Math.floor($imgW / 2),
                    "margin-top": -Math.floor($imgH / 2)
                });
                $controlbox.css({
                    "width": $imgW,
                    "height": $imgH,
                    "margin-left": -Math.floor($imgW / 2),
                    "margin-top": -Math.floor($imgH / 2)
                });
            }


            $curL = Math.round(($imgW - $colW) / 2);
            $curT = Math.round(($imgH - $colW) / 2);
            $control.css({
                "width": $colW,
                "height": $colW,
                "left": $curL,
                "top": $curT
            });
            $cutimg.css({
                "width": $colW,
                "height": $colW,
                "left": $curL,
                "top": $curT
            });
            //showimg
            if ($longName == "width") {
                $bl = $imgH / $colW;
            } else if ($longName == "height") {
                $bl = $imgW / $colW;
            }

            $showimg.each(function () {
                var $bl2 = $(this).parent().width() / $colW;
                $(this).parent().css({
                    "position": "relative",
                    "overflow": "hidden",
                    "-webkit-transform": "translateZ(0)",
                    "-webkit-backface-visiblity": "hidden"
                });
                if ($longName == "width") {
                    $(this).attr("src", $url[$degI]).css({
                        "position": "absolute",
                        "height": $(this).parent().width() * $bl,
                        "width": "auto",
                        "left": -$curL * $bl2,
                        "top": -$curT * $bl2
                    });
                } else if ($longName == "height") {
                    $(this).attr("src", $url[$degI]).css({
                        "position": "absolute",
                        "width": $(this).parent().width() * $bl,
                        "height": "auto",
                        "left": -$curL * $bl2,
                        "top": -$curT * $bl2
                    });
                }
            });

        };

        $control.oTouch({
            touchStart: function () {

            },
            touchMove: function ($p) {
                if ($curL + ($p.moveX - $p.startX) >= 0 && $curL + ($p.moveX - $p.startX) <= $imgW - $colW) {

                    $cutimg.css({
                        "left": $curL + ($p.moveX - $p.startX)
                    });
                    $control.css({
                        "left": $curL + ($p.moveX - $p.startX)
                    });
                    $img2.css({
                        "left": $imgL - ($p.moveX - $p.startX)
                    });

                } else if ($curL + ($p.moveX - $p.startX) < 0) {
                    //小于
                    $img2.css({
                        "left": 0
                    });
                    $cutimg.css({
                        "left": 0
                    });
                    $control.css({
                        "left": 0
                    });
                } else if ($curL + ($p.moveX - $p.startX) > $imgW - $colW) {
                    //大于
                    $img2.css({
                        "left": $colW - $imgW
                    });
                    $cutimg.css({
                        "left": $imgW - $colW
                    });
                    $control.css({
                        "left": $imgW - $colW
                    });
                }

                if ($curT + ($p.moveY - $p.startY) >= 0 && $curT + ($p.moveY - $p.startY) <= $imgH - $colW) {
                    $img2.css({
                        "top": $imgT - ($p.moveY - $p.startY)
                    });
                    $cutimg.css({
                        "top": $curT + ($p.moveY - $p.startY)
                    });
                    $control.css({
                        "top": $curT + ($p.moveY - $p.startY)
                    });
                } else if ($curT + ($p.moveY - $p.startY) < 0) {
                    $img2.css({
                        "top": 0
                    });
                    $cutimg.css({
                        "top": 0
                    });
                    $control.css({
                        "top": 0
                    });
                } else if ($curT + ($p.moveY - $p.startY) > $imgH - $colW) {
                    $img2.css({
                        "top": $colW - $imgH
                    });
                    $cutimg.css({
                        "top": $imgH - $colW
                    });
                    $control.css({
                        "top": $imgH - $colW
                    });
                }

                $showimg.each(function () {
                    $(this).css({
                        "left": $img2.position().left * ($(this).width() / $img2.width()),
                        "top": $img2.position().top * ($(this).width() / $img2.width())
                    });

                });

            },
            touchEnd: function ($p) {
                $curL = $control.position().left;
                $curT = $control.position().top;
                $imgL = $img2.position().left;
                $imgT = $img2.position().top;
            },
            clearE: true
        });

        $resize.oTouch({
            touchStart: function ($p) {

            },
            touchMove: function ($p) {

                var m = Math.abs($p.moveX - $p.startX) > Math.abs($p.moveY - $p.startY) ? $p.moveX - $p.startX : $p.moveY - $p.startY;

                if ($colW + m + $curL <= $imgW && $colW + m + $curT <= $imgH && $colW + m >= $min) {

                    $control.css({
                        "width": $colW + m,
                        "height": $colW + m
                    });
                    $cutimg.css({
                        "width": $colW + m,
                        "height": $colW + m
                    });

                } else if ($colW + m + $curL > $imgW && $colW + m + $curT <= $imgH) {

                    $control.css({
                        "width": $imgW - $curL,
                        "height": $imgW - $curL
                    });
                    $cutimg.css({
                        "width": $imgW - $curL,
                        "height": $imgW - $curL
                    });

                } else if ($colW + m + $curT > $imgH && $colW + m + $curL <= $imgW) {

                    $control.css({
                        "width": $imgH - $curT,
                        "height": $imgH - $curT
                    });
                    $cutimg.css({
                        "width": $imgH - $curT,
                        "height": $imgH - $curT
                    });

                } else if ($colW + m < $min) {

                    $control.css({
                        "width": $min,
                        "height": $min
                    });
                    $cutimg.css({
                        "width": $min,
                        "height": $min
                    });

                }

                if ($longName == "width") {
                    $bl = $imgW / $control.width();

                } else if ($longName == "height") {
                    $bl = $imgH / $control.height();
                }

                $showimg.each(function () {

                    var bl = $(this).parent().width() / $control.width();

                    if ($longName == "width") {
                        $(this).css({
                            "width": $(this).parent().width() * $bl,
                            "height": "auto",
                            "left": $img2.position().left * bl,
                            "top": $img2.position().top * bl
                        });

                    } else if ($longName == "height") {
                        $(this).css({
                            "height": $(this).parent().width() * $bl,
                            "width": "auto",
                            "left": $img2.position().left * bl,
                            "top": $img2.position().top * bl
                        });
                    }
                });

            },
            touchEnd: function () {
                $colW = $control.width();
            },

            clearE: true
        });

        $this.init = function () {
            $img.load(function () {
                $this.reset();
            });
        };

        if ($p.windowResize) {
            $(window).resize(function () {
                $this.reset();
            });
        }

        $this.cut = function () {
            var bl_auto = $imgautoH / $img.height();
            $cutInfo = {
                url: $url[$degI] + "",
                x: Math.floor($control.position().left * bl_auto),
                y: Math.floor($control.position().top * bl_auto),
                width: Math.floor($control.height() * bl_auto)
            };
            return ($cutInfo);
        };
        return $this;

    };

    $.fn.oTouch = function ($p) {
        defaults = {
            "clearE": false,
            "touchStart": function () {},
            "touchMove": null,
            "touchMoveH": null,
            "touchMoveV": null,
            "touchLeft": function () {},
            "touchRight": function () {},
            "touchUp": function () {},
            "touchDown": function () {},
            "touchEnd": function () {}
        };
        $p = $.extend(defaults, $p);
        var $this = $(this),
            $startX,
            $startY,
            $endX,
            $endY,
            $moveX,
            $moveY,
            $touchStart = $p.touchStart,
            $touchMove = $p.touchMove,
            $touchMoveH = $p.touchMoveH,
            $touchMoveV = $p.touchMoveV,
            $touchLeft = $p.touchLeft,
            $touchRight = $p.touchRight,
            $touchUp = $p.touchUp,
            $touchDown = $p.touchDown,
            $touchEnd = $p.touchEnd,
            $cantouch = true,
            $clearE = $p.clearE;

        if ($this.length) {
            if (!isPC /*|| isTouch*/ ) {

                function touchStart(e) {
                    // if($clearE){
                    //  e.stopPropagation();
                    //  e.preventDefault();}
                    var touchE = e.originalEvent.targetTouches[0];
                    $startX = touchE /*.targetTouches[0]*/ .pageX;
                    $startY = touchE /*.targetTouches[0]*/ .pageY;
                    $touchStart({
                        self: $this,
                        startX: $startX,
                        startY: $startY
                    });
                    //$cantouch = false;
                }

                function touchMove(e) {
                    
                    if ($clearE) {
                        e.stopPropagation();
                        e.preventDefault();
                    }
                    var touchE = e.originalEvent.targetTouches[0];
                    $moveX = touchE /*.changedTouches[0]*/ .pageX;
                    $moveY = touchE /*.changedTouches[0]*/ .pageY;
                    if ($touchMove !== null) {
                        $touchMove({
                            self: $this,
                            startX: $startX,
                            startY: $startY,
                            moveX: $moveX,
                            moveY: $moveY
                        });
                        //$cantouch = true;
                    }
                    if ($touchMoveH !== null) {
                        if (Math.abs($moveX - $startX) > Math.abs($moveY - $startY) && Math.abs($moveX - $startX) > 1) {
                            $touchMoveH({
                                self: $this,
                                startX: $startX,
                                startY: $startY,
                                moveX: $moveX,
                                moveY: $moveY
                            });
                            e.stopPropagation();
                            e.preventDefault();
                        //  $cantouch = true;
                        }
                    }
                    if ($touchMoveV !== null) {
                        if (Math.abs($moveX - $startX) < Math.abs($moveY - $startY) && Math.abs($moveY - $startY) > 1) {
                            $touchMoveV({
                                self: $this,
                                startX: $startX,
                                startY: $startY,
                                moveX: $moveX,
                                moveY: $moveY
                            });
                            e.stopPropagation();
                            e.preventDefault();
                        //  $cantouch = true;
                        }
                    }
                    if($touchMoveV === null && $touchMoveH === null && $touchMove === null){
                        //$cantouch = true;
                    }
                    
                }

                function touchEnd(e) {
                    // if($clearE){
                    //  e.stopPropagation();
                    //  e.preventDefault();}
                    var touchE = e.originalEvent.changedTouches[0];
                    $endX = touchE /*.changedTouches[0]*/ .pageX;
                    $endY = touchE /*.changedTouches[0]*/ .pageY;
                    //$this[0].removeEventListener('touchend');
                    //$this[0].removeEventListener('touchmove');
                
                    if ($cantouch) {
                        
                        //$cantouch = false;
                        if ($startX - $endX < -1) {
                            $touchRight({
                                self: $this,
                                startX: $startX,
                                endX: $endX,
                                startY: $startY,
                                endY: $endY
                            });
                        }
                        if ($startX - $endX > 1) {
                            $touchLeft({
                                self: $this,
                                startX: $startX,
                                endX: $endX,
                                startY: $startY,
                                endY: $endY
                            });
                        }
                        if ($startY - $endY > 1) {
                            $touchUp({
                                self: $this,
                                startX: $startX,
                                endX: $endX,
                                startY: $startY,
                                endY: $endY
                            });
                        }
                        if ($startY - $endY < -1) {
                            $touchDown({
                                self: $this,
                                startX: $startX,
                                endX: $endX,
                                startY: $startY,
                                endY: $endY
                            });
                        }

                        $touchEnd({
                            self: $this,
                            startX: $startX,
                            endX: $endX,
                            startY: $startY,
                            endY: $endY
                        });
                    }
                }

                // $this[0].addEventListener('touchstart', touchStart,false);
                // $this[0].addEventListener('touchmove',touchMove,false);
                // $this[0].addEventListener('touchend',touchEnd,false);
                $this.on("touchstart", function (e) {
                    touchStart(e);
                });
                $this.on("touchmove", function (e) {
                    touchMove(e);
                });
                $this.on("touchend", function (e) {
                    touchEnd(e);
                });

            } else {

                $this.on("mousedown", function (e) {

                    $startX = e.pageX;
                    $startY = e.pageY;
                    $touchStart({
                        self: $this,
                        startX: $startX,
                        startY: $startY
                    });
                    $("body,html").bind("mousemove", function (e) {
                        mouseMove(e);
                        return false;
                    });
                    $("body,html").bind("mouseup", function (e) {
                        mouseUp(e);
                        return false;
                    });
                    return false;
                });

                function mouseMove(e) {
                    $moveX = e.pageX;
                    $moveY = e.pageY;

                    // $touchMoveH({self:$this,startX:$startX,startY:$startY,moveX:$moveX,moveY:$moveY});
                    // $touchMoveV({self:$this,startX:$startX,startY:$startY,moveX:$moveX,moveY:$moveY});
                    // $touchMove({self:$this,startX:$startX,startY:$startY,moveX:$moveX,moveY:$moveY});
                    if ($moveX - $startX > 10 || $moveX - $startX < -10) {
                        $this.on("click", function () {
                            return false;
                        });
                    }
                    if ($touchMove !== null) {
                        $touchMove({
                            self: $this,
                            startX: $startX,
                            startY: $startY,
                            moveX: $moveX,
                            moveY: $moveY
                        });
                        e.stopPropagation();
                        e.preventDefault();
                        //$cantouch = true;
                    }
                    if ($touchMoveH !== null) {
                        if (Math.abs($moveX - $startX) > Math.abs($moveY - $startY) && Math.abs($moveX - $startX) > 10) {
                            $touchMoveH({
                                self: $this,
                                startX: $startX,
                                startY: $startY,
                                moveX: $moveX,
                                moveY: $moveY
                            });
                            e.stopPropagation();
                            e.preventDefault();
                            //$cantouch = true;
                        } else {

                        }
                    }
                    if ($touchMoveV !== null) {
                        if (Math.abs($moveX - $startX) < Math.abs($moveY - $startY) && Math.abs($moveY - $startY) > 10) {
                            $touchMoveV({
                                self: $this,
                                startX: $startX,
                                startY: $startY,
                                moveX: $moveX,
                                moveY: $moveY
                            });
                            e.stopPropagation();
                            e.preventDefault();
                            //$cantouch = true;
                        }
                    }
                }

                function mouseUp(e) {
                    $("body,html").off("mousemove");
                    $("body,html").off("mouseup");
                    // $this.off("mouseleave");
                    $endX = e.pageX;
                    $endY = e.pageY;

                    if ($startX - $endX < -1) {
                        $touchRight({
                            self: $this,
                            startX: $startX,
                            endX: $endX,
                            startY: $startY,
                            endY: $endY
                        });
                    }
                    if ($startX - $endX > 1) {
                        $touchLeft({
                            self: $this,
                            startX: $startX,
                            endX: $endX,
                            startY: $startY,
                            endY: $endY
                        });
                    }
                    if ($startY - $endY > 1) {
                        $touchUp({
                            self: $this,
                            startX: $startX,
                            endX: $endX,
                            startY: $startY,
                            endY: $endY
                        });
                    }
                    if ($startY - $endY < -1) {
                        $touchDown({
                            self: $this,
                            startX: $startX,
                            endX: $endX,
                            startY: $startY,
                            endY: $endY
                        });
                    }

                    $touchEnd({
                        self: $this,
                        startX: $startX,
                        endX: $endX,
                        startY: $startY,
                        endY: $endY
                    });
                    setTimeout(function () {
                        $this.off("click");
                    }, 10);


                }
            }
        }

        $this.touchClear = function () {
            if (!isPC /* || isTouch*/ ) {
                $this[0].removeEventListener('touchstart', touchStart, false);
                $this[0].removeEventListener('touchmove', touchMove, false);
                $this[0].removeEventListener('touchend', touchEnd, false);
            } else {
                $this.off("mousedown");
            }
        };

        return $this;
    };

    $.fn.oToggle = function (fn1, fn2) {
        var $this = $(this);
        $this.on("click", function () {
            if ($this.attr("auto") === "0" || $this.attr("auto") === undefined) {
                fn1($this);
                $this.attr("auto", "1");
            } else if ($this.attr("auto") == "1") {
                fn2($this);
                $this.attr("auto", "0");
            }
            return false;
        });
        return $this;

    };

    $.fn.oToggleAll = function (p) {
        defaults = {
            fn1: function () {},
            fn2: function () {},
            target: "",
            door: function () {
                return true;
            }
        };
        $p = $.extend(defaults, p);
        var $this = $(this),
            $target = $p.target,
            $fn1 = $p.fn1,
            $fn2 = $p.fn2,
            $door = $p.door;

        $this.on("click", $target, function () {

            if ($door()) {
                var auto = $(this).attr("auto");
                if (auto === "0" || auto === undefined) {
                    $fn1($(this));
                    $(this).attr("auto", "1");
                } else if (auto === "1") {
                    $fn2($(this));
                    $(this).attr("auto", "0");
                }
            }
        });

    };

    $.fn.oScrollGoto = function ($p) {
        defaults = ({
            spped: 1000,
            count: 0,
            beforefn: null,
            afterfn: null,
            door: null,
            doorclass: null
        });
        $p = $.extend(defaults, $p);

        var $this = $(this),
            $target = $("." + $this.attr("target")),
            $spped = $p.speed,
            $count = $p.count,
            $afterfn = $p.afterfn,
            $beforefn = $p.beforefn,
            $timeout = $p.timeout,
            $door = $("." + $p.door),
            $doorclass = $p.doorclass,
            $targetT;

        $this.on("click", function () {

            $targetT = $target.offset().top + $count;
            if ($beforefn !== null) {
                if ($doorclass !== null) {

                    if ($door.hasClass($doorclass)) {

                        $beforefn();
                        setTimeout(function () {
                            $this.goto();
                        }, $timeout);
                    } else {
                        $beforefn();
                        $this.goto();
                    }
                }
            } else {
                $this.goto();
            }
        });


        $this.goto = function () {
            $("html,body").animate({
                scrollTop: $targetT
            }, $spped);
            setTimeout(function () {
                if ($afterfn !== null) {
                    $afterfn();
                }
            }, $timeout);
        };
        return $this;
    };

    $.fn.oScrollFn = function ($p) {
        defaults = ({
            upFn: function () {},
            downFn: function () {}
        });
        $p = $.extend(defaults, $p);
        var $this = $(this),
            $upfn = $p.upFn,
            $downfn = $p.downFn,
            mousewheel = 'onmousewheel' in doc ? 'mousewheel' : 'DOMMouseScroll';

        $this.scrollfun = function (e) {
            ev = e.originalEvent;
            d = parseInt(ev.wheelDelta || -ev.detail);
            if (d > 0) {
                $upfn();
            } else {
                $downfn();
            }
            e.stopPropagation();
            e.preventDefault();
        };
        $.event.add($this[0], mousewheel, $this.scrollfun);
    };

    $.fn.oScrollBar = function ($p) {
        var ele = $(this),
            backEle = [];
        ele.each(function () {
            var defaults = ({
                step: 50, //鼠标滚轮滚动步长
                surplus: 7, //滚动内容体额外高度
                vShowBar: true, //是否控制滚动条的显示
                vPScroll: true,//内容区域显示内容过短时 滚动时 按正常页面滚动
                topFn:null,
                downFn:null
            });
            $p = $.extend(defaults, $p);

            var $this = $(this);
            $this.obj = $(this);
            $this.parent = $this.obj.parent();
            $this.win = $("<div class='o_scrollWin'>");
            $this.body = $("<div class='o_scrollbody'>");
            $this.barbox = $("<div class='o_barbox'>");
            $this.line = $("<span>");
            $this.step = $p.step;
            $this.bar = $("<div class='o_bar'>");
            $this.winH = null;
            $this.bodyH = null;
            $this.barH = null;
            $this.barboxH = null;
            $this.cha = 0;
            $this.sScale = 1;
            $this.sTop = 0;
            $this.sTop_next = null;
            $this.barT = null;
            $this.topFn=$p.topFn;
            $this.downFn=$p.downFn;

            $this.bar.appendTo($this.barbox);
            $this.line.appendTo($this.barbox);
            $this.barbox.appendTo($this.win);
            $this.obj.appendTo($this.body);
            $this.body.appendTo($this.win);
            $this.win.appendTo($this.parent);

            $this.init = function () {
                $this.sTop = 0;
                $this.bar.css("top", $this.sTop + "px");
                $this.body.css("margin-top", $this.sTop);
                $this.win.css("padding-right", $this.barbox.width() + "px");

                $this.winH = $this.win.height();
                $this.bodyH = $this.body.height();
                $this.barboxH = $this.barbox.height();
                $this.sScale = $this.barboxH / $this.bodyH;
                $this.cha = $this.bodyH - $this.winH;
                $this.barH = $this.barbox.height() / Math.max($this.bodyH / $this.winH, 1);

                $this.bar.css("height", $this.barH + "px");
                if ($this.cha <= 0) {
                    $this.barbox.hide();
                    $this.win.css("padding-right", "0px");
                    $this.off();
                } else {
                    $this.barbox.show();
                    if (isPC) {
                        $this.scrollDown = function () {
                            if ($this.bodyH > $this.winH) {
                                $this.sTop_next = $this.sTop - $this.step;
                                if (-$this.sTop_next + $this.winH > $this.bodyH) {
                                    $this.sTop_next = $this.winH - $this.bodyH;
                                    if($this.downFn){
                                        $this.downFn();
                                    }
                                }
                                $this.sTop = $this.sTop_next;
                                $this.bar.css("top", -$this.sTop_next * $this.sScale + "px");
                                $this.body.css("margin-top", $this.sTop_next);
                            }
                        };

                        $this.scrollUp = function () {
                            if ($this.bodyH > $this.winH) {
                                $this.sTop_next = $this.sTop + $this.step;
                                if ($this.sTop_next > 0) {
                                    $this.sTop_next = 0;
                                    if($this.topFn){
                                        $this.topFn();
                                    }
                                }
                                $this.sTop = $this.sTop_next;
                                $this.bar.css("top", -$this.sTop_next * $this.sScale + "px");
                                $this.body.css("margin-top", $this.sTop_next);
                            }
                        };

                        $this.win.oScrollFn({
                            upFn: function () {
                                $this.scrollUp();
                            },
                            downFn: function () {
                                $this.scrollDown();
                            }
                        });

                    } else { //移动设备
                        $this.body.oTouch({
                            touchMove: function (p) {
                                $this.sTop_next = $this.sTop + (p.moveY - p.startY);
                                if ($this.sTop_next > 0) {
                                    $this.sTop_next = 0;
                                    if($this.topFn!==null){
                                        $this.topFn();
                                    }
                                } else if (-$this.sTop_next + $this.winH > $this.bodyH) {
                                    $this.sTop_next = $this.winH - $this.bodyH;
                                    if($this.downFn!==null){
                                        $this.downFn();
                                    }
                                }
                                $this.sTop = $this.sTop_next;
                                $this.bar.css("top", -$this.sTop_next * $this.sScale + "px");
                                $this.body.css("margin-top", $this.sTop_next);
                            },
                            clearE: true
                        });
                        //$this.parent.css("overflow","scroll");
                    }
                }
            };


            $this.bar.oTouch({
                touchStart: function () {},
                touchMove: function (s) {
                    moveH = s.moveY - s.startY;
                    $this.sTop_next = $this.sTop - (moveH / $this.sScale);
                    if ($this.sTop_next > 0) {
                        $this.sTop_next = 0;
                    } else if (-$this.sTop_next + $this.winH > $this.bodyH) {
                        $this.sTop_next = $this.winH - $this.bodyH;
                    }
                    $this.body.css("margin-top", $this.sTop_next);
                    $this.bar.css("top", -$this.sTop_next * $this.sScale + "px");
                },
                touchEnd: function () {
                    $this.sTop = $this.sTop_next;
                },
                clearE: true
            });

            $this.lose=function(){
                $this.obj.appendTo($this.parent);
                $this.win.remove();
            };

            backEle.push($this);
        });

        var $backEle = $(backEle);
        $backEle.init = function (a) {
            if (a) {
                backEle[a].init();
            } else {
                $backEle.each(function (i) {
                    backEle[i].init();
                });
            }
        };
        $backEle.lose = function (a) {
            if (a) {
                backEle[a].lose();
            } else {
                $backEle.each(function (i) {
                    backEle[i].lose();
                });
            }
        };

        return $backEle;
    };

    $.fn.oHoverMove = function ($p) {
        if (isPC) {
            defaults = {
                clearE: false,
                "mouseStart": function () {},
                "mouseMove": function () {},
                "mouseLeave": function () {},
                "mouseStopFn": null,
                "stopTime": 1000
            };
            $p = $.extend(defaults, $p);
            var $this = $(this),
                $startX,
                $startY,
                $moveX,
                $moveY,
                $leaveX,
                $leaveY,
                $mouseStar = $p.mouseStart,
                $mouseMove = $p.mouseMove,
                $mouseLeave = $p.mouseLeave,
                $mouseStopFn = $p.mouseStopFn,
                $stopTime = $p.stopTime,
                $t,
                $beforeX,
                $beforeY;

            $this.on("mouseenter", function (e) {
                $startX = e.pageX;
                $startY = e.pageY;
                if ($mouseStopFn) {
                    $t = setInterval(function () {
                        foo();
                    }, $stopTime);
                }
                $mouseStar({
                    self: $this,
                    startX: $startX,
                    startY: $startY
                });
                $this.bind("mousemove", function (e) {
                    mouseMove(e);
                    return false;
                });
                $this.bind("mouseleave", function (e) {
                    mouseLeave(e);
                    $this.off("mousemove");
                    $this.off("mouseleave");
                });
            });

            function mouseMove(e) {
                $moveX = e.pageX;
                $moveY = e.pageY;
                if ($mouseStopFn) {
                    $beforeX = $moveX;
                    $beforeY = $moveY;
                }

                $mouseMove({
                    self: $this,
                    startX: $startX,
                    startY: $startY,
                    moveX: $moveX,
                    moveY: $moveY
                });
            }

            function mouseLeave(e) {
                $leaveX = e.pageX;
                $leaveY = e.pageY;
                if ($mouseStopFn) {
                    clearInterval($t);
                }
                $mouseLeave({
                    self: $this,
                    startX: $startX,
                    startY: $startY,
                    leaveX: $leaveX,
                    leaveY: $leaveY
                });
            }

            function foo() {
                if ($beforeX === $moveX && $beforeY === $moveY) {
                    $mouseStopFn({
                        self: $this,
                        startX: $startX,
                        startY: $startY,
                        moveX: $moveX,
                        moveY: $moveY
                    });
                } else {
                    return false;
                }
            }
            return $this;
        }
    };

    $.fn.oBgCover = function () {
        var ele = $(this),
            backEle = [];
        ele.each(function () {
            var $this = $(this);
            $this.obj = $(this);
            $this.parent = $this.obj.parent();
            $this.parent.css({
                "position": "relative",
                "overflow": "hidden"
            });
            $this.pw = 0;
            $this.ph = 0;
            $this.w1 = 0;
            $this.h1 = 0;
            $this.loaded=false;
            $this.init = function () {
                $this.obj.css({
                    "width": "auto",
                    "height": "auto",
                    "position":"absolute"
                });
                $this.pw = $this.parent.width();
                $this.ph = $this.parent.height();
                $this.w1 = $this.obj.width();
                $this.h1 = $this.obj.height();
                if (!$this.loaded) {
                    $this.loaded=true;
                    $this.obj.load(function () {
                        $this.pw = $this.parent.width();
                        $this.ph = $this.parent.height();
                        $this.w1 = $this.obj.width();
                        $this.h1 = $this.obj.height();

                        if ($this.pw / $this.w1 > $this.ph / $this.h1) {
                            $this.css({
                                "width": $this.pw + "px",
                                "height": "auto",
                                "position": "absolute"
                            });
                            $this.css({
                                "margin-left": -($this.obj.width()) / 2 + "px",
                                left: "50%",
                                top: "50%",
                                "margin-top": -($this.obj.height()) / 2 + "px"
                            });
                        } else {
                            $this.css({
                                "height": $this.ph + "px",
                                "width": "auto",
                                "position": "absolute"
                            });
                            $this.css({
                                "margin-left": -($this.obj.width()) / 2 + "px",
                                left: "50%",
                                top: "50%",
                                "margin-top": -($this.obj.height()) / 2 + "px"
                            });
                        }
                        return false;
                    });
                } else {
                    if ($this.pw / $this.w1 > $this.ph / $this.h1) {
                        $this.css({
                            "width": $this.pw + "px",
                            "height": "auto",
                            "position": "absolute"
                        });
                        $this.css({
                            "margin-left": -($this.obj.width()) / 2 + "px",
                            left: "50%",
                            top: "50%",
                            "margin-top": -($this.obj.height()) / 2 + "px"
                        });
                    } else {
                        $this.css({
                            "height": $this.ph + "px",
                            "width": "auto",
                            "position": "absolute"
                        });
                        $this.css({
                            "margin-left": -($this.obj.width()) / 2 + "px",
                            left: "50%",
                            top: "50%",
                            "margin-top": -($this.obj.height()) / 2 + "px"
                        });
                    }
                }
            };
            if (isPC) {
                $(window).resize(function () {
                    $this.init();
                });
            }

            backEle.push($this);

        });
        var $backEle = $(backEle);
        $backEle.init = function (a) {
            if (a) {
                backEle[a].init();
            } else {
                $backEle.each(function (i) {
                    backEle[i].init();
                });
            }
        };

        return $backEle;
    };

    $.fn.oBoxCenter = function () {
        var ele = $(this),
            backEle = [];
        ele.each(function () {
            var $this = $(this);
            $this.obj = $(this);
            $this.parent = $this.obj.parent();
            $this.w = 0;
            $this.h = 0;
            $this.init = function () {
                $this.w = $this.obj.width();
                $this.h = $this.obj.height();
                $this.parent.css("position", "relative");
                $this.obj.css({
                    "position": "absolute",
                    "top": "50%",
                    "left": "50%",
                    "margin-top": -$this.h / 2 + "px",
                    "margin-left": -$this.w / 2 + "px"
                });
            };

            if (isPC) {
                $(window).resize(function () {
                    $this.init();
                });
            }
            backEle.push($this);
        });

        var $backEle = $(backEle);
        $backEle.init = function (a) {
            if (a) {
                backEle[a].init();
            } else {
                $backEle.each(function (i) {
                    backEle[i].init();
                });
            }
        };

        return $backEle;
    };

    $.fn.oScale = function ($p) {
        var $ele = $(this),
            backEle = [],
            p = $p;
        $ele.each(function () {
            defaults = ({
                w: 1,
                h: 1,
                base: "width"
            });
            var $p = $.extend(defaults, p);

            var $this = $(this);
            $this.obj = $(this);
            $this.w = $p.w;
            $this.h = $p.h;
            $this.base = $p.base;
            if ($this.obj.attr("w")) {
                $this.w = parseInt($this.obj.attr("w"));
            }
            if ($this.obj.attr("h")) {
                $this.h = parseInt($this.attr("h"));
            }
            if ($this.obj.attr("base")) {
                $this.base = $this.attr("base");
            }

            $this.init = function () {
                if ($this.base == "width") {
                    if ($this.obj.width() !== 0) {
                        $this.width = $this.obj.width();
                        $this.height = Math.round(($this.width / $this.w) * $this.h);
                        $this.css("height", $this.height + "px");
                    } else {
                        return false;
                    }
                } else if ($this.base === "height") {
                    if ($this.obj.height() !== 0) {
                        $this.height = $this.obj.height();
                        $this.width = Math.round(($this.height / $this.h) * $this.w);
                        $this.css("width", $this.width + "px");
                    } else {
                        return false;
                    }
                }
            };

            if (isPC) {
                $(window).resize(function () {
                    $this.init();
                });
            }
            backEle.push($this);
        });

        var $backEle = $(backEle);
        $backEle.init = function (a) {
            if (a) {
                backEle[a].init();
            } else {
                $backEle.each(function (i) {
                    backEle[i].init();
                });
            }

        };
        return $backEle;
    };

    $.fn.oPopupFn=function(){
    var $this={};
        $this.target=null;
        $this.zz=$("<div class='o_shade'></div>");
        $this.closeFn=null;
        $this.top=0;
        $this.absolute=false;
        $this.closebtn=null;
    $this.open=function(p){
        $this.target=null;
        $this.closeFn=null;
        $this.absolute=false;
        $this.absolute=null;
        $this.closebtn=null;
        if(p.target){
            $this.target=$(p.target);
            $this.closebtn=$this.target.find(".js_popupClose");

            if($this.closebtn){
                $this.closebtn.on("click",function(){
                    $this.close();
                });
            }
            if(p.closeFn){
                $this.closeFn=p.closeFn;
            }
            if(p.absolute){
                $this.absolute=p.absolute;
            }

            $this.zz.appendTo($(".o_body")).addClass("show");
            $this.target.show().addClass("show");   
            $this.init();
        }
    };

    

    $this.close=function(){
        $this.target.addClass("hide");
            $this.zz.removeClass("show");
            setTimeout(function(){
                $this.zz.detach();
                $this.target.removeClass("hide").removeClass("show").hide();
                if($this.closeFn!==null){
                    $this.closeFn($this.target);
                }
                    
            },300);
    };

    $this.init=function(){
        var wH=$(window).height(),
            dH=$(document).height(),
            scrollH=$(window).scrollTop(),
            objH=$this.target.height();
        if(!$this.absolute){//不固定
            if(objH<=wH){//小于
                $this.top=(wH-objH)/2;
                $this.target.css('top',$this.top).removeClass("absolute");
            }else{//大于
                if(scrollH+objH+30>dH){
                    scrollH=dH-(objH+60);
                    $("html,body").animate({scrollTop:scrollH},200);
                    $this.top=scrollH+30;
                    $this.target.css('top',$this.top).addClass("absolute");
                }else{
                    $this.top=scrollH+30;
                    $this.target.css('top',$this.top).addClass("absolute");
                }
            }
        }else{//固定
            if(objH<=wH){
                $this.top=scrollH+(wH-objH)/2;
                $this.target.css('top',$this.top);
            }else{
                if(scrollH+objH+30>dH){
                    scrollH=dH-(objH+60);
                    $("html,body").animate({scrollTop:scrollH},200);
                    $this.top=scrollH+30;
                    $this.target.css('top',$this.top).addClass("absolute");
                }else{
                    $this.top=scrollH+30;
                    $this.target.css('top',$this.top);
                }
            }
        }
    };
    
    return $this;
};

$.fn.oAlert=function(p){
        defaults={"info":"没有定义信息"};
        $p=$.extend(defaults,p);
        var $body=$(".o_body"),
            $this={};

            $this.openbtn=$("<span>");
            $this.openbtn.attr("oData-popup",".js_alertbox");
            $this.autoInfo=$p.info;
            $this.newClass="";

            $this.box=$("<div class='o_popup o_alert js_alertbox'></div>");
            $this.closeBtn=$("<span class='o_popupclose js_popupClose'><span>");
            $this.contbox=$("<div class='cont'>");
            $this.tool=$("<div class='tool'></div>");
            $this.confirmBtn=$("<div class='o_bgbtn1 btn o_btn_df-sm js_popupClose'><span>确定</span></div>");

            $this.closeBtn.appendTo($this.box);
            $this.contbox.appendTo($this.box);
            $this.confirmBtn.appendTo($this.tool);
            $this.tool.appendTo($this.box);
            $body.after($this.box);
            $body.append($this.openbtn);

            $this.openbtn.oPopup();
            $this.open=function(p){

                $this.box.removeClass($this.newClass);
                p.info?$this.contbox.html(p.info):$this.contbox.html($this.autoInfo);
                if(p.addClass){
                        $this.newClass=p.addClass;
                        $this.box.addClass($this.newClass);
                    }else{
                        $this.newClass="";
                    }
                
                $this.openbtn.click();
            };

            return $this;
    };

    $.fn.oConfirm=function(p){
        defaults={"info":"没有定义信息"};
        $p=$.extend(defaults,p);
        var $body=$(".o_body"),
            $this={};

            $this.openbtn=$("<span>");
            $this.openbtn.attr("oData-popup",".js_alertbox");
            $this.autoInfo=$p.info;
            $this.callbackFn=null;
            $this.targetEle=null;
            $this.newClass="";

            $this.box=$("<div class='o_popup o_alert js_alertbox'></div>");
            $this.closeBtn=$("<span class='o_popupclose js_popupClose'><span>");
            $this.contbox=$("<div class='cont'>");
            $this.tool=$("<div class='tool'></div>");
            $this.confirmBtn=$("<div class='o_bgbtn1 btn o_btn_df-sm js_confirm'><span>确定</span></div>");
            $this.cancelBtn=$("<div class='o_linebtn1 btn o_btn_df-sm js_popupClose'><span>取消</span></div>");

            $this.closeBtn.appendTo($this.box);
            $this.contbox.appendTo($this.box);
            $this.confirmBtn.appendTo($this.tool);
            $this.cancelBtn.appendTo($this.tool);
            $this.tool.appendTo($this.box);
            $body.after($this.box);
            $body.append($this.openbtn);

            $this.openbtn.oPopup({
                confirmFn:function(){
                    $this.callbackFn($this.targetEle);
                }
            });
            $this.open=function(p){
                $this.callbackFn=null;
                $this.box.removeClass($this.newClass);
                if(p){
                    p.info?$this.contbox.html(p.info):$this.contbox.html($this.autoInfo);
                    p.ele?$this.targetEle=p.ele:$this.targetEle=null;
                    p.callbackFn?$this.callbackFn=p.callbackFn:$this.callbackFn=function(){};
                    if(p.addClass){
                        $this.newClass=p.addClass;
                        $this.box.addClass($this.newClass);
                    }else{
                        $this.newClass="";
                    }
            
                }else{
                    $this.contbox.html($this.autoInfo);
                }
                
                $this.openbtn.click();
            };

            return $this;
    };

    

})(window, document, jQuery);

$().ready(function () {

    $(".o_autoH").each(function () {
        $(this).oAutoH().init();
    });
    $(".o_main").oAutoH({
        minH: true
    }).init();
    // $(".o_autoH_inner").each(function(){
    //  $(this).oAutoH({
    //      "inner":true //内部元素 不以window为基础
    //  }).init();
    // });

    $(".o_autoW").each(function () {
        $(this).oAutoW().init();
    });

    $(".o_input").each(function () {
        $(this).oInputclear();
    });

    $(".o_textarea").each(function () {
        $(this).oTextareaclear();
    });

    if (isIe) {
        $(".o_noselect").each(function () {
            $(this).oNoSelect();
        });
    }

    $(".o_g").oClear();
    $(".o_main").oClear();
    $(".o_autoH").oClear();

});

/**
 * 全局方法定义-控件
 */
// confirm弹窗
var myConfirm=$(".o_body").oConfirm();
var leaderConfirm = {
    open:function(el){
        var elOpen = {
            info : el.info || '', //提示信息
            ele : el.ele, //传递对象
            callbackFn : el.callbackFn,
            addClass: el.addClass || "l-confirm" //给弹层添加其他class
        };
        myConfirm.open(elOpen);
        $('.o_popupclose').find('span').addClass('iconfont icon-close');
    }
}
/**
 * 全局方法-公用
 */
var leaderFun = {
    //获取当前用户ip地址
    getUserIp:function(){
        if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown")){
            $ip = getenv("HTTP_CLIENT_IP"); 
        }else if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"),"unknown")){
            $ip = getenv("HTTP_X_FORWARDED_FOR"); 
        }
        else if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown")){
            $ip = getenv("REMOTE_ADDR"); 
        }
        else if (isset ($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR']&& strcasecmp($_SERVER['REMOTE_ADDR'], "unknown")){
            $ip = $_SERVER['REMOTE_ADDR']; 
        }
        else{
            $ip = "unknown"; 
        }
        return ($ip);
    }
};

$(function() {

    init();

    $(window).resize(function() {
        init();
    });

    function init() {

    }

    /**
     * 自定义插件
     */
    $.fn.extend({
        //checkbox  rodio 样式重置
        jq_qvote: function() {
            var opt = {
                BaseClass: "c_ipt_cr",
                CSelectedClass: "c_ipt_cr_cs",
                CUnSelectedClass: "c_ipt_cr_cus",
                RSelectedClass: "c_ipt_cr_rs",
                RUnSelectedClass: "c_ipt_cr_crus",
                loseSelectedClass: "lose"
            };
            $(this).hide();
            $(this).each(function(i) {
                var that = $(this);
                var SelectedClass = "";
                var UnSelectedClass = "";
                var loseSelectedClass = opt.loseSelectedClass;
                var $val = that.attr("value");

                if (that.prop("type") == "radio") {
                    SelectedClass = opt.RSelectedClass;
                    UnSelectedClass = opt.RUnSelectedClass;
                } else if (that.prop("type") == "checkbox") {
                    SelectedClass = opt.CSelectedClass;
                    UnSelectedClass = opt.CUnSelectedClass;
                } else {
                    return;
                }


                var jqvote = document.createElement("span");
                if ($val) {
                    jqvote.innerHTML = $val;
                }

                this.parentNode.insertBefore(jqvote, this.parentNode.childNodes[that.index()]);
                var new_input = that.prev();
                new_input.addClass(opt.BaseClass);
                if (that.prop("disabled")) {
                    ///不可点击
                    new_input.addClass(loseSelectedClass);
                }
                if (that.attr("checked") == 'checked') {
                    new_input.addClass(SelectedClass);
                } else {
                    new_input.addClass(UnSelectedClass);
                }

                new_input.bind("click", function() {
                    if (that.prop("disabled")) {
                        ///不可点击
                        return;
                    }
                    var n = $(this).next();
                    if (n.prop("type") == "radio") {
                        $(":radio[name='" + n.prop("name") + "']").prev().removeClass(SelectedClass).addClass(UnSelectedClass);
                    }
                    n.click();
                    if (n.prop("checked") === true) {
                        new_input.removeClass(UnSelectedClass).addClass(SelectedClass);
                    } else {
                        new_input.removeClass(SelectedClass).addClass(UnSelectedClass);
                    }
                    return false;
                });
            });
        },

        //密码框：密文明文切换
        validPassword:function(){
            //创建明文输入框
            var $ele = $(this).find('input');
            var $el = {
                ph : $(this).find('input').attr('ph'),
                className : 'js_L_pwdClear '+ $(this).find('input').attr('class')
            };
            $(this).prepend('<input type="text" name="" value="'+$el.ph+'" class="'+$el.className+'">');

            $('.js_L_pwdClear').css({
                'position': 'absolute',
                'top': 0,
                'left': 0,
                'color':'#ccc',
                'z-index':1
            });

            var $eleReplace = $(this).find('input.js_L_pwdClear');
            $eleReplace.on('focus',function(){
                // $(this).css('z-index','-1');
                $(this).hide();
                $ele.val("");
                $ele.focus();
            });
            $ele.on('blur',function(){
                // $(this).val() || $eleReplace.css('z-index','1');
                $(this).val() || $eleReplace.show();
            });
            
        },

        //表单校验展示错误信息--登陆注册页面
        validShowError:function(errorMsg){
            if($(this).is('input')){
                $(this).addClass('Validform_error');
                $(this).siblings('.Validform_checktip').html("<i class='iconfont icon-information-solid'></i>"+errorMsg);
            }else{
                $(this).siblings('input').addClass('Validform_error');
                $(this).html("<i class='iconfont icon-information-solid'></i>"+errorMsg);
            }
        },

        //表单校验隐藏错误信息--登陆注册页面
        validHideError:function(){
            if($(this).is('input')){
                $(this).siblings('.Validform_checktip').html("");
                $(this).removeClass('Validform_error');
            }else{
                $(this).siblings('input').removeClass('Validform_error');
                $(this).html("");
            }                
        },

        placeholderIe8:function(){
            var $this =$(this);
            var text = $this.attr("ph");
            if (text) {
                if ($this.val() === "") {
                    $this.val(text);
                    $this.css('color','#ccc');
                }
            }
            if($this.attr("type") == "text"){
                if (!$this.attr('ph')){
                    return;
                }
                $this.blur(function () {
                    setTimeout(function(){//先校验是否符合规则，再添加样式
                        if($this.val() === ''){
                            $this.val($this.attr("ph"));
                            $this.css('color','#ccc');
                        }else{
                            $this.css('color','#666');
                        }
                        //表单校验时触发
                        if(!$this.attr('phtype')){
                            $this.hasClass('Validform_error')?$this.css('border','1px solid #f39800'):$this.css('border','1px solid #ccc');
                             //$this.css('border','1px solid #ccc');
                        }
                    },300);
                    
                }).focus(function () {
                    // 通用校验-除登录注册
                    if(!$this.attr('data-normal')){
                        $this.validHideError();
                    }
                    
                    if($this.val() == $this.attr("ph")){
                        $this.val("");
                        $this.css('color','#666');
                    }
                    //表单校验时触发
                    if(!$this.attr('phtype')){
                       $this.css('border','1px solid #e60012');
                    }
                });
            }else if($this.attr("type") == "password"){
                $this.blur(function () {
                    setTimeout(function(){//先校验是否符合规则，再添加样式
                        //$this.css('border','1px solid #ccc');
                        $this.css('color','#666');
                        //表单校验时触发
                        if(!$this.attr('phtype')){
                            $this.hasClass('Validform_error')?$this.css('border','1px solid #f39800'):$this.css('border','1px solid #ccc');
                            // $this.css('border','1px solid #ccc');
                        }
                    },300);
                }).focus(function () {
                    // 通用校验-除登录注册
                    if(!$this.attr('data-normal')){
                        $this.validHideError();
                    }
                    $this.css('border','1px solid #e60012');
                });
            }
        },

        //数量加减-购物车
        numberRule:function(el){

            var $this = $(this);
            //默认元素
            var elActive = {
                plus:'.icon-plus',
                minus:'.icon-minus',
                input:'input',
                preNum:1,
                beforePlusRule:function(num,$this){},//若终止执行操作，需return true
                beforeMinusRule:function(num,$this){},//若终止执行操作，需return true
                plusCallback:function(num,$this){},
                minusCallback:function(num,$this){}
            };

            //实际元素-用户定义
            jQuery.extend(elActive, el);

            //避免相同命名冲突
            $this.each(function(i,n){

                //元素存储
                var ele = {
                    plusEle:$(this).find(elActive.plus),
                    minusEle:$(this).find(elActive.minus),
                    inputEle:$(this).find(elActive.input)
                };

                //加法
                ele.plusEle.on('click',function(){
                    var inputVal = parseInt(ele.inputEle.val());
                    if(!elActive.beforePlusRule(inputVal,n)){//若终止执行操作，需return true
                        inputVal += elActive.preNum;
                        ele.inputEle.val(inputVal);
                        elActive.plusCallback(inputVal,n);  
                    }
                    
                });

                //减法
                ele.minusEle.on('click',function(){
                    var inputVal = parseInt(ele.inputEle.val());
                    if(!elActive.beforeMinusRule(inputVal,n)){//若终止执行操作，需return true
                        inputVal -= elActive.preNum;
                        ele.inputEle.val(inputVal);
                        elActive.minusCallback(inputVal,n);
                    }
                });
            });

            
        },
        //图片懒加载
        lazyImg:function(time){
            //参数:time,延迟时间。datatype，url属性名，默认lazy-src
            if($(this).is('img')){
                //当前元素是img标签
                var src = $(this).attr('lazy-src');
                setTimeout(function(){
                    $(this).attr(src,src);
                },time);
            }else{
                //当前元素不是img
                var $ele = $(this).find('img');
                $ele.each(function(i,n){
                    var src = $ele.eq(i).attr('lazy-src');
                    setTimeout(function(){
                        $ele.eq(i).attr('src',src);
                    },time);
                });
            }
        }
        
    });
   
    /**
     * 输入框placeholder支持ie8
     */
    $('input').each(function(){
        $(this).placeholderIe8();
    });
    $('textarea').each(function(){
        var $this =$(this);
        var text = $this.attr("ph");
        if (text) {
            if ($this.val() === "") {
                $this.val(text);
                $this.css('color','#ccc');
            }
        }
        // if($this.attr("type") == "text"){
            if (!$this.attr('ph')){
                return;
            }
            $this.blur(function () {
                if($this.val() === ''){
                    $this.val($this.attr("ph"));
                    $this.css('color','#ccc');
                }else{
                    $this.css('color','#666');
                }
                //表单校验时触发
                if(!$this.attr('phtype')){
                    $this.hasClass('Validform_error')?$this.css('border','1px solid #f39800'):$this.css('border','1px solid #ccc');
                     //$this.css('border','1px solid #ccc');
                }
                
            }).focus(function () {
                if($this.val() == $this.attr("ph")){
                    $this.val("");
                    $this.css('color','#666');
                }
                //表单校验时触发
                if(!$this.attr('phtype')){
                   $this.css('border','1px solid #e60012');
                }
            });
        // }
    });

    /**
    *登陆框弹窗
    * */
    $('.js_landBtn').click(function(){
        $('.js_landShade').show();
        $('.js_landContBox').show();
        $("body").css({overflow:"hidden"});
        $('.js_landContBox').show();
        $('.js_landClose').click(function(){
            $('.js_landContBox').hide();
            $('.js_landShade').hide();
            $("body").css({overflow:"auto"});
            return false;
        });
    });



});

//顶部导航点击
$('.js_addType>div').click(function(){
    var dataAlt = $('.js_addType').attr('data-alt');
    var divIndex = $(this).index();
    //alert(dataAlt);
    if(dataAlt==1){
        if(divIndex==0){
            $(this).addClass('cur').siblings().removeClass('cur');
            $('.js_addInputBox>div').eq(0).show().siblings().hide();
        }else{
            return false;
        }
    }else if(dataAlt==2){
        if(divIndex!=2){
            $(this).addClass('cur').siblings().removeClass('cur');
            $('.js_addInputBox>div').eq(divIndex).show().siblings().hide();
        }else{
            return false;
        }
    }else if (dataAlt==3){
        $(this).addClass('cur').siblings().removeClass('cur');
        $('.js_addInputBox>div').eq(divIndex).show().siblings().hide();
    }
});
$('.js_addClose').click(function(){
    $('.js_addShadeTop').hide();
    $('.js_addContBox').hide();
    $('body').css({
        'overflow-y': 'auto',/*为了兼容普通PC的浏览器*/
        'height': 'auto'
    })
    return false;
})


/*
* 公用地址弹窗
* */
function addressAlert(add, callback){
    $('.js_addType').find('div').removeClass('cur').eq(0).addClass('cur')
    $('.js_addShadeTop').show();
    $('.js_addContBox').show();
    var addressSave = ""
    var addressCity,addressArea,savecode_used;
    $('body').css({
        'overflow-y': 'hidden',/*为了兼容普通PC的浏览器*/
        'height': '100%'
    })
    //判定传入值是否存在
    if(!add){
        $('.js_alertAddress_save').html('北京').attr('data-code','1');
        $('.js_alertAddress_city').html('北京').attr('data-code','1');
        $('.js_alertAddress_area').html('朝阳区').attr('data-code','11');
    }else{
        if(add.save&&add.savecode){
            $('.js_alertAddress_save').html(add.save).attr('data-code',add.savecode).show();
            $('.js_alertAddress_city').html(add.city).attr('data-code',add.citycode).show();
            $('.js_alertAddress_area').html(add.area).attr('data-code',add.areacode).show();
        }else{
            $('.js_alertAddress_save').html('北京').attr('data-code','1');
            $('.js_alertAddress_city').html('北京').attr('data-code','1');
            $('.js_alertAddress_area').html('朝阳区').attr('data-code','11');
        }
    }
    //$('.js_addInputBox>div').eq(0).show().siblings().hide();
    //获取省份并汇入
    // if(!add.savecode){
        $.ajax({
            type:'GET',
            url:siteConfig.domain + '/interaction-service/regionInfo/regionList/',
            data: 'parentId=0',
            //error:function(data){
            //},
            success_cb:function(data){
                var contdata = data.data;
                if(data.isSuccess){
                    for(var i = 0;i<contdata.length;i++){
                        addressSave+='<li class="o_u o_df_3-12 o_xs_11-12" data-code="'+contdata[i].regionCode+'">'+contdata[i].regionName+'</li>'
                    }
                    $('.js_alertAddress_save_cont').html(addressSave);
                    $('.js_addInputBox>div').eq(0).show().siblings().hide();
                    $('.js_addType').attr('data-alt',1);
                }
            }

        })
    // }

    // 选择省
    $('.js_alertAddress_save_cont>li').live('click',function() {
        $('.js_addType').attr('data-alt',2);
        saveText = $(this).html();
        saveCode = $(this).attr('data-code');
        //获取city信息并汇入
        //简单判断本次选择的省份是否与上次为相同数据，如果不同再次请求
        if (saveCode != savecode_used) {
            $.ajax({
                type: 'GET',
                url: siteConfig.domain + '/interaction-service/regionInfo/regionList/',
                data: 'parentId=' + saveCode,
                error: function (data) {
                },
                success: function (data) {
                    var contdata = data.data;
                    savecode_used = saveCode;
                    if (data.isSuccess) {
                        addressCity='';
                        for (var i = 0; i < contdata.length; i++) {
                            addressCity += '<li class="o_u o_df_3-12 o_xs_11-12" data-code="' + contdata[i].regionCode + '">' + contdata[i].regionName + '</li>'
                        }
                        $('.js_alertAddress_ctiy_cont').html(addressCity);
                        //$('.js_addInputBox>div').eq(1).show().siblings().hide();
                        $('.js_alertAddress_save').html(saveText).show().siblings('i').hide();
                        addAleatBtn(1);
                    }
                }
            });
        } else {
            $('.js_alertAddress_city_cont').html(addressCity);
            $('.js_alertAddress_save').html(saveText);
            addAleatBtn(1);
        }
    });

    // 选择市
    $('.js_alertAddress_ctiy_cont>li').live('click',function(){
        $('.js_addType').attr('data-alt',3);
        cityText =  $(this).html();
        cityCode = $(this).attr('data-code');
        //获取区的数据并汇入
        $.ajax({
            type:'GET',
            url:siteConfig.domain + '/interaction-service/regionInfo/regionList/',
            data: 'parentId='+cityCode,
            error:function(data){
            },
            success:function(data){
                var contdata = data.data;
                if(data.isSuccess){
                    addressArea='';
                    for(var i = 0;i<contdata.length;i++){
                        addressArea+='<li class="o_u o_df_3-12 o_xs_11-12" data-code="'+contdata[i].regionCode+'">'+contdata[i].regionName+'</li>'
                    }
                    $('.js_alertAddress_area_cont ').html(addressArea);
                    addAleatBtn(2);

                }
            }
        });

        $('.js_alertAddress_city').show().html(cityText).attr('data-code','cityCode');
        $('.js_alertAddress_area').html('');
        addAleatBtn(2);
        return false;
    });

    // 选择区
    $('.js_alertAddress_area_cont>li').live('click',function(){
        areaText =  $(this).html();
        areaCode = $(this).attr('data-code');

        $('.js_alertAddress_area').show().html(areaText).attr('data-code','areaCode');
        var addressJson = { "saveText": saveText, "saveCode":saveCode,"cityText": cityText, "cityCode":cityCode, "areaText": areaText,"areaCode": areaCode }
        addAleatBtn(3);
        
        var params = {
            'provinceName': saveText,
            'cityName': cityText,
            'areaName': areaText
        }
        leaderServer.regionInfo(params).then(function(data){
            if(data.isSuccess){
                if (callback) {
                    callback(data.data)
                }
            }
        })

        return addressJson;
    });
}

function addAleatBtn(index){
    $('.js_addType>div').eq(index).addClass('cur').siblings().removeClass('cur');
    $('.js_addInputBox>div').eq(index).show().siblings().hide();
}



//通用弹窗
function globalShade(alerttext){
    $('.js_landShade').show();
    $('.js_landContBox').show();
    $("body").css({'width':$("body").width(),'float':'left',overflow:"hidden"});
    var windowHeight = $(window).height();
    var windowWidth = $(window).width();
    var alertHeight = $('.js_landContBox').height();
    var alertWidth = $('.js_landContBox').width();
    $('.js_landContBox').css({'top':(windowHeight-alertHeight)/2+'px','left':(windowWidth-alertWidth)/2+'px'})

    $('.js-landText').html(alerttext);
    $('.js_landClose').click(function(){
        $('.js_landContBox').hide();
        $('.js_landShade').hide();
        $("body").css({overflow:"auto",'width':'100%','float':'none'});
        return false;
    });
    //$('.js_alertClose').click(function(){
    //
    //})
}
function globalShade2(alerttext,type,time){
    if(time == 'forever'){
        var outTime = 'forever';
    }else{
        var outTime = time>2000?time:2000;
    }


    $('.js_popUpBox2').show();
    $("body").css({'width':$("body").width(),'float':'left',overflow:"hidden"});
    $('.js_popUpText').html(alerttext);
    if(type==1){
        $('.js_popUpFales').hide();
        $('.js_popUpWarn').hide();
        $('.js_popUpTrue').show();
        $('.js_popUpText').removeClass('type3-text');

    }else if(type==2){
        $('.js_popUpTrue').hide();
        $('.js_popUpWarn').hide();
        $('.js_popUpFales').show();
        $('.js_popUpText').removeClass('type3-text');

    }else if(type==3){
        $('.js_popUpTrue').hide();
        $('.js_popUpWarn').show();
        $('.js_popUpFales').hide();
        $('.js_popUpText').removeClass('type3-text');

    }else{
        $('.js_popUpTrue').hide();
        $('.js_popUpWarn').hide();
        $('.js_popUpFales').hide();
        $('.js_popUpText').css('');
        $('.js_popUpText').addClass('type3-text');
    }

        if(outTime&&outTime=='forever'){
            return false;

        }else if(outTime&&outTime!='forever'){
            setTimeout(function(){
                $('.js_popUpBox2').hide();
                $("body").css({overflow:"auto",'width':'100%','float':'none'});
            },outTime);
        } else{
            setTimeout(function(){
                $('.js_popUpBox2').hide();
                $("body").css({overflow:"auto",'width':'100%','float':'none'});
            },2000);
        }
}


//cookie
function cookieTrue(obj,time,timetext,cookie,callback){
    if( parseInt( $.cookie(cookie))>0){
        var time =  parseInt($.cookie(cookie));
        btnTimeOut(obj,time,timetext,cookie,callback)
    }else{
        // btnTimeOut(obj,time,timetext,cookie,callback)
    }
}


//倒计时通用模块

function btnTimeOut(obj,time,timetext,cookie,callback){

    var timeHtml;
    if($.cookie(cookie)){
        var timeTotal = parseInt($.cookie(cookie));
    }else{
       var  timeTotal = parseInt(time);
    }
    var btnDisable;
    var objHtml = obj.html();
    var timeText = timetext;
    var cookieName = cookie;


    btnDisable = 'l-btn-disable';
    if(obj.hasClass(btnDisable)){
      return false;
    }else{
        obj.addClass(btnDisable).attr('data-type',1);
        obj.html('<span style="color: ">'+(timeTotal--)+'</span>'+'秒'+timeText);

    }
   timeHtml =setInterval(function(){
      obj.html('<span style="color: ">'+(timeTotal--)+'</span>'+'秒'+timeText);
      $.cookie(cookieName, timeTotal,{
          'path':'/',
          'domain':'http://image.tongshuai.com/tongshuai/images/.tongshuai.com'
      });
      if(timeTotal<=0){
          clearInterval(timeHtml);
          obj.removeClass(btnDisable).html(objHtml).removeAttr('data-type');
          $.cookie(cookieName,null,{
              'path':'/',
              'domain':'http://image.tongshuai.com/tongshuai/images/.tongshuai.com'
          });
          if(callback){
              callback();
          }

      }
    },1000);
    return  timeHtml;
}

//文字截取方法
var obj={'obj':$('.js_lifeStyleCreateTitle'),'fontSize':'14','lineNub':'2','width':$('.product-list-cont').width()};

function textLength(obj){
    var $obj = obj.obj;
    var fontSize = obj.fontSize;
    var lineNub = obj.lineNub;
    if(!obj.objWidth){
        var $objWidth = $obj.width();
    }else{
        var $objWidth = obj.width;
    }
    //如果对象是一个数组
    if($obj.length>1){
        for(var i = 0;i<$obj.length;i++){
            var objCont =  $.trim($obj.eq(i).html());
            var maxFontNub = parseInt($objWidth*lineNub/fontSize);
            if(maxFontNub -4<= objCont.length){
                $obj.eq(i).html(objCont.substring(0,maxFontNub-4)+'...');
            }
        }
    }else if($obj.length==1){
        var objCont = $obj.html();
        var maxFontNub = parseInt($objWidth*lineNub/fontSize);
        if(maxFontNub-4 <= objCont.length){
            $obj.html(objCont.substring(0,maxFontNub-4)+'...');
        }
    }
}

//a:hover伪类在ios移动端浏览器内无效
document.body.addEventListener&&document.body.addEventListener('touchstart',function(){});
/**
 * ajax初始化
 */
jQuery.ajaxSetup({
    type: "post",
    dataType: "json",
    cache: false,
    box_obj: null,
    scroll: null,
    beforeSend: function(request) {
        //需要登录校验，且用户未登录
        if (this.login && !istrsidssdssotoken()) {
            request.abort();
            jumpToLoginPage();
        }
        //csrf校验
        if(this.csrf){
            var crm = Math.random();
            //判断语句，用于本地测试，请勿提交测试或生产
            if(window.location.host.indexOf('localhost')>=0){
                crm = '123';
            }
            // var urlDomain = this.url.
            $.cookie('crm', crm,{
                'path':'/',
                'domain':'http://image.tongshuai.com/tongshuai/images/.tongshuai.com'
            });
            if(this.url.indexOf('?')>=0){
                this.url = this.url+'&cch='+crm;
            }else{
                this.url = this.url+'?cch='+crm;
            }
        }
	
        //contentType: "application/json; charset=utf-8",
        if (this.applicationType){
            request.setRequestHeader("Content-Type", "application/json; charset=utf-8")
        }
    },
    success: function(data) {
        if (data.isSuccess != undefined && istrsidssdssotoken()) {
            if (!data.isSuccess) {

            }
        }

        if (this.success_cb) {
            this.success_cb(data);
        }
    },
    complete:function(XMLHttpRequest, textStatus){
        //csrf校验-删除cookie
        if(this.csrf){
            $.cookie('crm', null,{
                'path':'/',
                'domain':'http://image.tongshuai.com/tongshuai/images/.tongshuai.com'
            });;
        }
    },
    error: function(jqXHR, textStatus, errorThrown) {
        if(this.login && jqXHR.status==401){
            jumpToLoginPage();
        }
        if (this.error_cb) {
            this.error_cb(jqXHR, textStatus, errorThrown);
        }
    }
});
/**
 *  公共服务
 */
var leaderServer = {
    //根据ip地址获取用户地址
    getIpAddress: function(){
        return $.ajax({
            // url: siteConfig.domain + '/interaction-service/regionInfo/defaultRegion',
            url: '/interaction-service/regionInfo/defaultRegion',
            type:'get',
            success_cb:function(data){
                return data
            },
            error_cb:function(data){
                return false;
            }
        });
    },
    // 转换地址
    regionInfo: function(data) {
        return $.ajax({
            type: "get",
            // url: siteConfig.domain + '/interaction-service/regionInfo/regionInfo',
            url: '/interaction-service/regionInfo/regionInfo',
            dataType:"json",
            data: data,
            success_cb: function(address){
                return address
            }
        })
    }
    
};

$(function () {
    $(window).resize(function () {
        init();
    });

    init();

    function init() {
        var screenWidth = document.body.offsetWidth;
        if (screenWidth <= 700) {
            $('.js_footLink').hide();
            $(".js_footmenuShow").removeClass('icon-close').addClass('icon-plus');
        } else {
            $('.js_footLink').show();
            $('.js_footLink').removeClass('link_border');
        }
    }

    /**
     * 产品页-公共尾部 链接
     */
    $('.js_footLindBtn').on('click', 'a', function () {
        var $ele = $(this).parent().siblings($('.js_footLink'));
        $ele.toggle();
        $ele.toggleClass('link_border');
    });
    // 展示底部导航菜单
    $('.js_footLindBtn').on('click', 'a', function () {
        if ($(this).hasClass('icon-plus')) {
            $(this).removeClass('icon-plus').addClass('icon-close');
            // $('.js_navMdShow').show();
        } else {
            $(this).removeClass('icon-close').addClass('icon-plus');
            // $('.js_navMdShow').hide();
        }
    });

    /**
     * 导航逻辑
     */
    //底导航图片懒加载
    if($('.js_imgLazyLoading').size()<=0){
        $('.js_footImgLazy').lazyImg(1000);
    }    

    //导航栏目显示隐藏
    $('.js_column').on('hover', function () {
        var index = parseInt($(this).attr('column'));
        $('.js_column_show').hide();
        $('.js_column_show').eq(index).show();
        //导航栏图片懒加载
        $('.js_column_show').lazyImg(0);
        $('.js_navMdboxSecond').lazyImg(0);
    });
    $('.js_column_show').on('mouseleave', function () {
        $(this).hide();
    });

    //导航hover效果，展示细线
    $('.js_hoverLine').hover(function(){
        $(this).append('<div class="js_hoverLineRed" style="position:absolute;z-index:11;bottom:-1;height:1px;background:#e60012;"></div>');
        $('.js_hoverLineRed').animate({width: '100%'}, 1500);
    },function(){
        $('.js_hoverLineRed').remove();
    });

    //搜索历史
    // $('.js_searchHistory').bind('input propertychange', function () {
    //     var screenWidth = document.body.offsetWidth;
    //     if ($(this).val()) {
    //         if (screenWidth > 1199) {
    //             $('.js_searchBox_xl').show();
    //         } else {
    //             $('.js_searchBox_lg').show();
    //         }
    //         $('.js_searchBoxQuick_lg').hide();
    //     } else {
    //         $('.js_searchBox').hide();
    //         $('.js_searchBoxQuick_lg').show();
    //     }
    // }).on('blur', function () {
    //     $('.js_searchBox').hide();
    //     $('.js_searchBoxQuick_lg').show();
    // }).on('focus', function () {
    //     if ($(this).val()) {
    //         if (screenWidth > 1199) {
    //             $('.js_searchBox_xl').show();
    //         } else {
    //             $('.js_searchBox_lg').show();
    //         }
    //         $('.js_searchBoxQuick_lg').hide();
    //     }
    // });

    //隐藏搜索历史浮层-隐藏用户消息浮层xs
    $('body').on('click', function (e) {
        if(!$(e.target).hasClass('js_userMsgXs')){
            $('.js_usermsg_xs').hide();
        }
        //搜索历史浮层点击按钮确认
        if($(e.target).hasClass('js_searchHistory') || $(e.target).hasClass('js_delete_history')){
            return false;
        }
        $('.js_searchBox').removeClass('o_lg-show').removeClass('o_md-show').removeClass('o_sm-show').removeClass('o_xs-show');
        $('.js_searchBox').hide();
        $('.js_searchBoxQuick_lg').show();

    });

    //搜索--lg
    // $('.js_search_lg').on('click', function () {
    //  $('.js_menuShow').removeClass('icon-close').addClass('icon-menu');
    //  $('.js_navMdShow').hide();
    //     $('.js_navSearchLgHide')
    //         .removeClass('o_lg-show')
    //         .removeClass('o_md-show')
    //         .removeClass('o_sm-show')
    //         .removeClass('o_xs-show');
    //     $('.js_navSearchLgHide').hide();
    //     $('.js_navSearchLg')
    //         .addClass('o_lg-show')
    //         .addClass('o_md-show')
    //         .addClass('o_sm-show')
    //         .addClass('o_xs-show');
    //     $('.js_navSearchLg').show();
    // });

    //关闭搜索
    // $('.js_navSearchClose').on('click', function () {
    //
    //     $('.js_navSearchLg')
    //         .removeClass('o_lg-show')
    //         .removeClass('o_md-show')
    //         .removeClass('o_sm-show')
    //         .removeClass('o_xs-show');
    //     $('.js_navSearchLg').hide();
    //
    //     $('.js_navSearchLgHide')
    //         .addClass('o_lg-show')
    //         .addClass('o_md-show')
    //         .addClass('o_sm-show')
    //         .addClass('o_xs-show');
    //     $('.js_navSearchLgHide').show();
    //     $('.js_navSearchLgHide.js_ignore').removeClass('o_lg-show').hide();
    //
    // });

    //展示导航菜单
    $('.js_menuShow').on('click', function () {
        if ($(this).hasClass('icon-menu')) {
            $(this).removeClass('icon-menu').addClass('icon-close');
            $('.js_navMdShow').show();
        } else {
            $(this).removeClass('icon-close').addClass('icon-menu');
            $('.js_navMdShow').hide();
        }
    });

    //移动端，点击轻产品，展示二级菜单 ms sm xs
    $('.js_nav-md').on('click',function(){
        if($(this).attr('data-show')==1){
            $(this).siblings('.js_navMdboxSecond').show();
            $(this).attr('data-show',0).find('i').removeClass('icon-plus').addClass('icon-minus');
            //导航栏图片懒加载
            $('.js_column_show').lazyImg(0);
            $('.js_navMdboxSecond').lazyImg(0);
        }else{
            $(this).siblings('.js_navMdboxSecond').hide();
            $(this).attr('data-show',1).find('i').removeClass('icon-minus').addClass('icon-plus');
        }
        
    });

    //xs分辨率，展示用户消息列表
    $('.js_userMsgXs').on('click',function(){
        if(document.body.offsetWidth<=575){
            $('.js_usermsg_xs').show();
        }
    });

    userLoginStatus();

});

//加载导航头的登录状态
function userLoginStatus() {
    var regFrom = "tongshuai";
    var screenWidth = document.body.offsetWidth;
    if (screenWidth < 1120) {
        regFrom = "tsmobile";
    }
    var returnUrl = window.location.href;
    //var ehaier=$.cookie("EHaierSSOToken");//商城的cookie
    var trsidssdssotoken = "ssotoken";//同域Cookie
    var sdssotoken = $.cookie(trsidssdssotoken);
    if (sdssotoken != null && sdssotoken != '') {
        var loginUserName = "tongshuaiuser";//当前登录用户
        var ck_loginUserName = $.cookie(loginUserName);
        if (ck_loginUserName != null && ck_loginUserName != '') {
            var logusername = subHZString(ck_loginUserName, 7, '...');
            //从cookie中读取当前登录用户
            //$("#header_loginDiv .login span").before(logusername);
            $("#header_loginDiv .login").prepend(logusername);
            $("#header_logoutDiv,#header_logoutA").addClass("o_df-hide");
            $("#header_loginDiv,#header_loginDiv2").removeClass("o_df-hide");
            $("#header_logout,#header_logout2,#header_logout3").attr("href", siteConfig.userUrl+"/ids/ts/logout.jsp?regFrom=" + regFrom + "&returnUrl=" + returnUrl)

            getUserHeadImg();//获取头像
            getUserMag();//显示消息
        } else {
            //同域cookie存在，但是 haieruser 没有取出值，去请求haier_ssosession.jsp获取当前登录用户
            var surl = "http://image.tongshuai.com/ids/ts/ssosession.jsp";
            $.ajax({
                type: "post",
                dataType: "text",
                url: surl,
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                },
                success: function (returnData) {
                    if ($.trim(returnData).length > 0) {
                        var loginUser = $.trim(returnData);
                        var logusername = subHZString(loginUser, 7, '...');
                        //从cookie中读取当前登录用户
                        //$("#header_loginDiv .login span").before(logusername);
                        $("#header_loginDiv .login").prepend(logusername);
                        $("#header_logoutDiv,#header_logoutA").addClass("o_df-hide");
                        $("#header_loginDiv,#header_loginDiv2").removeClass("o_df-hide");
                        $("#header_logout,#header_logout2 ,#header_logout3").attr("href", siteConfig.userUrl+"/ids/ts/logout.jsp?regFrom=" + regFrom + "&returnUrl=" + returnUrl)

                        getUserHeadImg();//获取头像
                        getUserMag();//显示消息
                    } else {
                        // if (window.innerWidth == undefined || window.innerWidth >= 768) {
                        //     if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/club.casarte.com") > -1) {
                        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarteclub&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarteclub";
                        //     } else if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/www.casarte.com") > -1) {
                        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte";
                        //     } else {
                        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte";
                        //     }
                        //     $("#bflog").find('a:eq(1)').attr("href", loginurl);
                        //     $("#bflog").find('a:eq(2)').attr("href", registerurl);
                        // } else {
                        //     if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/club.casarte.com") > -1) {
                        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=casarteclubmobile&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarteclubmobile";
                        //     } else if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/www.casarte.com") > -1) {
                        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte";
                        //     } else {
                        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte";
                        //     }
                        //     $("#bflog").find('a:eq(0)').attr("href", loginurl);
                        //     $("#bflog").find('a:eq(2)').attr("href", registerurl);
                        // }
                        // $("#aflog").css("display", "none");
                        // $("#mflog").css("display", "none");
                        // $("#bflog").css("display", "inline-block");

                    }
                }
            });
        }
    } else {
        // if (ehaier != null && ehaier != '') {//商城的cookie
        //     /*0711-修改*/
        //     if (window.innerWidth == undefined || window.innerWidth >= 768) {
        //         if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/club.casarte.com") > -1) {
        //             window.location.href = "http://login.casarte.com/ids/login.jsp?regFrom=casarteclub&returnUrl=" + returnUrl;
        //         } else if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/www.casarte.com") > -1) {
        //             window.location.href = "http://login.casarte.com/ids/login.jsp?regFrom=casarte&returnUrl=" + returnUrl;
        //         } else if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/testuser.casarte.com") > -1) {
        //             window.location.href = "http://testuser.casarte.com/ids/login.jsp?regFrom=casarte&returnUrl=" + returnUrl;
        //         }
        //     } else {
        //         if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/club.casarte.com") > -1) {
        //             window.location.href = "http://login.casarte.com/ids/login.jsp?regFrom=casarteclubmobile&returnUrl=" + returnUrl;
        //         } else if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/www.casarte.com") > -1) {
        //             window.location.href = "http://login.casarte.com/ids/login.jsp?regFrom=camobile&returnUrl=" + returnUrl;
        //         } else if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/testuser.casarte.com") > -1) {
        //             window.location.href = "http://testuser.casarte.com/ids/login.jsp?regFrom=camobile&returnUrl=" + returnUrl;
        //         }
        //     }
        //
        // }
        // if (window.innerWidth == undefined || window.innerWidth >= 768) {
        //     /*0711-修改*/
        //     if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/club.casarte.com") > -1) {
        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarteclub&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarteclub&returnUrl=" + encodeURIComponent(returnUrl);
        //     } else if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/www.casarte.com") > -1) {
        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
        //     } else {
        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
        //     }
        //     $("#bflog").find('a:eq(1)').attr("href", loginurl);
        //     $("#bflog").find('a:eq(2)').attr("href", registerurl);
        // } else {
        //     /*0711-修改*/
        //     if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/club.casarte.com") > -1) {
        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=casarteclubmobile&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarteclubmobile&returnUrl=" + encodeURIComponent(returnUrl);
        //     } else if (returnUrl.indexOf("http://image.tongshuai.com/tongshuai/images/www.casarte.com") > -1) {
        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
        //     } else {
        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
        //     }
        //     $("#bflog").find('a:eq(0)').attr("href", loginurl);
        //     $("#bflog").find('a:eq(2)').attr("href", registerurl);
        // }
        // // var loginurl=$("#bflog").find('a:eq(1)').attr("href");
        //
        // $("#bflog").css("display", "inline-block");
        // $("#aflog").css("display", "none");
        // $("#mflog").css("display", "none");

        //监测是否自动登陆
        // var autologin = $.cookie("idsALInfo");
        // if (autologin != null && autologin != '') {
        //     $.ajax({
        //         type: "post",
        //         dataType: "text",
        //         url: "http://image.tongshuai.com/ids/ts/autoLogin.jsp",
        //         error: function (XMLHttpRequest, textStatus, errorThrown) {
        //         },
        //         success: function (returnData) {
        //             userloginstatus();
        //         }
        //     });
        // }
        $("#header_login,#header_logoutDiv .nav-chart,#header_logoutA,.js_nav-chart2").attr("href", siteConfig.userUrl+"/ids/ts/login.jsp?regFrom=" + regFrom + "&returnUrl=" + returnUrl);
        $("#header_reg").attr("href", siteConfig.userUrl+"/ids/ts/reg.jsp?regFrom=" + regFrom + "&returnUrl=" + returnUrl)
    }
}
//导航头_截取字符串，长度以字符为单位
function subHZString(str, len, hasDot) {
    var newLength = 0;
    var newStr = '';
    var chineseRegex = /[^\x00-\xff]/g;
    var singleChar = '';
    var strLength = str.replace(chineseRegex, '**').length;
    for (var i = 0; i < strLength; i++) {
        singleChar = str.charAt(i).toString();
        if (singleChar.match(chineseRegex) != null) {
            newLength += 2;
        } else {
            newLength++;
        }
        if (newLength > len) {
            break;
        }
        newStr += singleChar;
    }

    if (strLength > len) {
        newStr += hasDot;
    }
    return newStr;
}


//时间戳转换日期 时间戳，选格式，时间戳类型
function getLocalTime(nS,val,type) {
    if(type==2)
    {
        var timestamp4 =new Date(parseInt(nS) * 1000);
    }
    else
    {
        var timestamp4 =new Date(parseInt(nS));
    }

    var y = timestamp4.getFullYear();
    var m = timestamp4.getMonth() + 1;
    var d = timestamp4.getDate();
    if(val == 2){
        return y + "." + (m < 10 ? "0" + m : m) + "." + (d < 10 ? "0" + d : d) ;
    }else if(val == 3){
        return y + "/" + (m < 10 ? "0" + m : m) + "/" + (d < 10 ? "0" + d : d) ;
    }else if(val == 4){
        return y + "-" + (m < 10 ? "0" + m : m) + "-" + (d < 10 ? "0" + d : d) ;
    }
    return y + "-" + (m < 10 ? "0" + m : m) + "-" + (d < 10 ? "0" + d : d) + " " + timestamp4.toTimeString().substr(0, 8);

}

//判断当前是否存在同域cookie
function istrsidssdssotoken(){
    var trsidssdssotoken = "ssotoken";//同域Cookie
    var sdssotoken = $.cookie(trsidssdssotoken);
    if(sdssotoken!=null || window.location.host.indexOf('localhost')>=0){
        return true;
    }else{
        return false;
    }
}

//跳转到登录页面
function jumpToLoginPage(){
    var returnUrl = window.location.href;
    if(!istrsidssdssotoken()){
        var returnUrl = window.location.href;
        window.location.href = siteConfig.userUrl+'/ids/ts/login.jsp?returnUrl=' +returnUrl;
    }
}

function getRequest() {
    var url = location.search; //获取url中"?"符后的字串
    var theRequest = new Object();
    if (url.indexOf("?") != -1) {
        var str = url.substr(1);
        strs = str.split("&");
        for (var i = 0; i < strs.length; i++) {
            theRequest[strs[i].split("=")[0]] = decodeURI(strs[i].split("=")[1]);
        }
    }
    return theRequest;
}
//获取当前用户头像
function getUserHeadImg(){
    $.ajax({
        type: "get",
        // url: siteConfig.domain+"/hshop-user/front/user/userInfo/",
        url: "/hshop-user/front/user/userInfo/",
        login:true,
        success_cb: function(data){
            if(data.isSuccess){
                if (jQuery.trim(data).length > 0) {
                    //头像
                    if(data.data.headUrl==null || data.data.headUrl=='' || data.data.headUrl=='null'){
                        $(".js_userMsgXs").prop("src",'../../images/user_img.jpg'/*tpa=http://image.tongshuai.com/images/user_img.jpg*/);
                    }
                    else{
                        $(".js_userMsgXs").prop("src",data.data.headUrl);
                    }
                }
            }

        }
    });
}

//用户消息
function getUserMag(){
    $.ajax({
        type: "get",
        url: siteConfig.domain + "/hshop-user/front/myMsgConfig/getCount/",
        login: true,
        success_cb: function (data) {
            if(data.data.unRead>0){
                $('.js_userNews').removeClass('o_df-hide');
            }else{
                $('.js_userNews').addClass('o_df-hide');
            }
        }
    });
}

/*
 * Swiper 2.7.6
 * Mobile touch slider and framework with hardware accelerated transitions
 *
 * http://www.idangero.us/sliders/swiper/
 *
 * Copyright 2010-2015, Vladimir Kharlampidi
 * The iDangero.us
 * http://www.idangero.us/
 *
 * Licensed under GPL & MIT
 *
 * Released on: February 11, 2015
*/
var Swiper=function(a,b){"use strict";function c(a,b){return document.querySelectorAll?(b||document).querySelectorAll(a):jQuery(a,b)}function d(a){return"[object Array]"===Object.prototype.toString.apply(a)?!0:!1}function e(){var a=G-J;return b.freeMode&&(a=G-J),b.slidesPerView>D.slides.length&&!b.centeredSlides&&(a=0),0>a&&(a=0),a}function f(){function a(a){var c,d,e=function(){"undefined"!=typeof D&&null!==D&&(void 0!==D.imagesLoaded&&D.imagesLoaded++,D.imagesLoaded===D.imagesToLoad.length&&(D.reInit(),b.onImagesReady&&D.fireCallback(b.onImagesReady,D)))};a.complete?e():(d=a.currentSrc||a.getAttribute("src"),d?(c=new Image,c.onload=e,c.onerror=e,c.src=d):e())}var d=D.h.addEventListener,e="wrapper"===b.eventTarget?D.wrapper:D.container;if(D.browser.ie10||D.browser.ie11?(d(e,D.touchEvents.touchStart,p),d(document,D.touchEvents.touchMove,q),d(document,D.touchEvents.touchEnd,r)):(D.support.touch&&(d(e,"touchstart",p),d(e,"touchmove",q),d(e,"touchend",r)),b.simulateTouch&&(d(e,"mousedown",p),d(document,"mousemove",q),d(document,"mouseup",r))),b.autoResize&&d(window,"resize",D.resizeFix),g(),D._wheelEvent=!1,b.mousewheelControl){if(void 0!==document.onmousewheel&&(D._wheelEvent="mousewheel"),!D._wheelEvent)try{new WheelEvent("wheel"),D._wheelEvent="wheel"}catch(f){}D._wheelEvent||(D._wheelEvent="DOMMouseScroll"),D._wheelEvent&&d(D.container,D._wheelEvent,j)}if(b.keyboardControl&&d(document,"keydown",i),b.updateOnImagesReady){D.imagesToLoad=c("img",D.container);for(var h=0;h<D.imagesToLoad.length;h++)a(D.imagesToLoad[h])}}function g(){var a,d=D.h.addEventListener;if(b.preventLinks){var e=c("a",D.container);for(a=0;a<e.length;a++)d(e[a],"click",n)}if(b.releaseFormElements){var f=c("input, textarea, select",D.container);for(a=0;a<f.length;a++)d(f[a],D.touchEvents.touchStart,o,!0),D.support.touch&&b.simulateTouch&&d(f[a],"mousedown",o,!0)}if(b.onSlideClick)for(a=0;a<D.slides.length;a++)d(D.slides[a],"click",k);if(b.onSlideTouch)for(a=0;a<D.slides.length;a++)d(D.slides[a],D.touchEvents.touchStart,l)}function h(){var a,d=D.h.removeEventListener;if(b.onSlideClick)for(a=0;a<D.slides.length;a++)d(D.slides[a],"click",k);if(b.onSlideTouch)for(a=0;a<D.slides.length;a++)d(D.slides[a],D.touchEvents.touchStart,l);if(b.releaseFormElements){var e=c("input, textarea, select",D.container);for(a=0;a<e.length;a++)d(e[a],D.touchEvents.touchStart,o,!0),D.support.touch&&b.simulateTouch&&d(e[a],"mousedown",o,!0)}if(b.preventLinks){var f=c("a",D.container);for(a=0;a<f.length;a++)d(f[a],"click",n)}}function i(a){var b=a.keyCode||a.charCode;if(!(a.shiftKey||a.altKey||a.ctrlKey||a.metaKey)){if(37===b||39===b||38===b||40===b){for(var c=!1,d=D.h.getOffset(D.container),e=D.h.windowScroll().left,f=D.h.windowScroll().top,g=D.h.windowWidth(),h=D.h.windowHeight(),i=[[d.left,d.top],[d.left+D.width,d.top],[d.left,d.top+D.height],[d.left+D.width,d.top+D.height]],j=0;j<i.length;j++){var k=i[j];k[0]>=e&&k[0]<=e+g&&k[1]>=f&&k[1]<=f+h&&(c=!0)}if(!c)return}N?((37===b||39===b)&&(a.preventDefault?a.preventDefault():a.returnValue=!1),39===b&&D.swipeNext(),37===b&&D.swipePrev()):((38===b||40===b)&&(a.preventDefault?a.preventDefault():a.returnValue=!1),40===b&&D.swipeNext(),38===b&&D.swipePrev())}}function j(a){var c=D._wheelEvent,d=0;if(a.detail)d=-a.detail;else if("mousewheel"===c)if(b.mousewheelControlForceToAxis)if(N){if(!(Math.abs(a.wheelDeltaX)>Math.abs(a.wheelDeltaY)))return;d=a.wheelDeltaX}else{if(!(Math.abs(a.wheelDeltaY)>Math.abs(a.wheelDeltaX)))return;d=a.wheelDeltaY}else d=a.wheelDelta;else if("DOMMouseScroll"===c)d=-a.detail;else if("wheel"===c)if(b.mousewheelControlForceToAxis)if(N){if(!(Math.abs(a.deltaX)>Math.abs(a.deltaY)))return;d=-a.deltaX}else{if(!(Math.abs(a.deltaY)>Math.abs(a.deltaX)))return;d=-a.deltaY}else d=Math.abs(a.deltaX)>Math.abs(a.deltaY)?-a.deltaX:-a.deltaY;if(b.freeMode){var f=D.getWrapperTranslate()+d;if(f>0&&(f=0),f<-e()&&(f=-e()),D.setWrapperTransition(0),D.setWrapperTranslate(f),D.updateActiveSlide(f),0===f||f===-e())return}else(new Date).getTime()-V>60&&(0>d?D.swipeNext():D.swipePrev()),V=(new Date).getTime();return b.autoplay&&D.stopAutoplay(!0),a.preventDefault?a.preventDefault():a.returnValue=!1,!1}function k(a){D.allowSlideClick&&(m(a),D.fireCallback(b.onSlideClick,D,a))}function l(a){m(a),D.fireCallback(b.onSlideTouch,D,a)}function m(a){if(a.currentTarget)D.clickedSlide=a.currentTarget;else{var c=a.srcElement;do{if(c.className.indexOf(b.slideClass)>-1)break;c=c.parentNode}while(c);D.clickedSlide=c}D.clickedSlideIndex=D.slides.indexOf(D.clickedSlide),D.clickedSlideLoopIndex=D.clickedSlideIndex-(D.loopedSlides||0)}function n(a){return D.allowLinks?void 0:(a.preventDefault?a.preventDefault():a.returnValue=!1,b.preventLinksPropagation&&"stopPropagation"in a&&a.stopPropagation(),!1)}function o(a){return a.stopPropagation?a.stopPropagation():a.returnValue=!1,!1}function p(a){if(b.preventLinks&&(D.allowLinks=!0),D.isTouched||b.onlyExternal)return!1;var c=a.target||a.srcElement;document.activeElement&&document.activeElement!==document.body&&document.activeElement!==c&&document.activeElement.blur();var d="input select textarea".split(" ");if(b.noSwiping&&c&&t(c))return!1;if(_=!1,D.isTouched=!0,$="touchstart"===a.type,!$&&"which"in a&&3===a.which)return D.isTouched=!1,!1;if(!$||1===a.targetTouches.length){D.callPlugins("onTouchStartBegin"),!$&&!D.isAndroid&&d.indexOf(c.tagName.toLowerCase())<0&&(a.preventDefault?a.preventDefault():a.returnValue=!1);var e=$?a.targetTouches[0].pageX:a.pageX||a.clientX,f=$?a.targetTouches[0].pageY:a.pageY||a.clientY;D.touches.startX=D.touches.currentX=e,D.touches.startY=D.touches.currentY=f,D.touches.start=D.touches.current=N?e:f,D.setWrapperTransition(0),D.positions.start=D.positions.current=D.getWrapperTranslate(),D.setWrapperTranslate(D.positions.start),D.times.start=(new Date).getTime(),I=void 0,b.moveStartThreshold>0&&(X=!1),b.onTouchStart&&D.fireCallback(b.onTouchStart,D,a),D.callPlugins("onTouchStartEnd")}}function q(a){if(D.isTouched&&!b.onlyExternal&&(!$||"mousemove"!==a.type)){var c=$?a.targetTouches[0].pageX:a.pageX||a.clientX,d=$?a.targetTouches[0].pageY:a.pageY||a.clientY;if("undefined"==typeof I&&N&&(I=!!(I||Math.abs(d-D.touches.startY)>Math.abs(c-D.touches.startX))),"undefined"!=typeof I||N||(I=!!(I||Math.abs(d-D.touches.startY)<Math.abs(c-D.touches.startX))),I)return void(D.isTouched=!1);if(N){if(!b.swipeToNext&&c<D.touches.startX||!b.swipeToPrev&&c>D.touches.startX)return}else if(!b.swipeToNext&&d<D.touches.startY||!b.swipeToPrev&&d>D.touches.startY)return;if(a.assignedToSwiper)return void(D.isTouched=!1);if(a.assignedToSwiper=!0,b.preventLinks&&(D.allowLinks=!1),b.onSlideClick&&(D.allowSlideClick=!1),b.autoplay&&D.stopAutoplay(!0),!$||1===a.touches.length){if(D.isMoved||(D.callPlugins("onTouchMoveStart"),b.loop&&(D.fixLoop(),D.positions.start=D.getWrapperTranslate()),b.onTouchMoveStart&&D.fireCallback(b.onTouchMoveStart,D)),D.isMoved=!0,a.preventDefault?a.preventDefault():a.returnValue=!1,D.touches.current=N?c:d,D.positions.current=(D.touches.current-D.touches.start)*b.touchRatio+D.positions.start,D.positions.current>0&&b.onResistanceBefore&&D.fireCallback(b.onResistanceBefore,D,D.positions.current),D.positions.current<-e()&&b.onResistanceAfter&&D.fireCallback(b.onResistanceAfter,D,Math.abs(D.positions.current+e())),b.resistance&&"100%"!==b.resistance){var f;if(D.positions.current>0&&(f=1-D.positions.current/J/2,D.positions.current=.5>f?J/2:D.positions.current*f),D.positions.current<-e()){var g=(D.touches.current-D.touches.start)*b.touchRatio+(e()+D.positions.start);f=(J+g)/J;var h=D.positions.current-g*(1-f)/2,i=-e()-J/2;D.positions.current=i>h||0>=f?i:h}}if(b.resistance&&"100%"===b.resistance&&(D.positions.current>0&&(!b.freeMode||b.freeModeFluid)&&(D.positions.current=0),D.positions.current<-e()&&(!b.freeMode||b.freeModeFluid)&&(D.positions.current=-e())),!b.followFinger)return;if(b.moveStartThreshold)if(Math.abs(D.touches.current-D.touches.start)>b.moveStartThreshold||X){if(!X)return X=!0,void(D.touches.start=D.touches.current);D.setWrapperTranslate(D.positions.current)}else D.positions.current=D.positions.start;else D.setWrapperTranslate(D.positions.current);return(b.freeMode||b.watchActiveIndex)&&D.updateActiveSlide(D.positions.current),b.grabCursor&&(D.container.style.cursor="move",D.container.style.cursor="grabbing",D.container.style.cursor="-moz-grabbin",D.container.style.cursor="-webkit-grabbing"),Y||(Y=D.touches.current),Z||(Z=(new Date).getTime()),D.velocity=(D.touches.current-Y)/((new Date).getTime()-Z)/2,Math.abs(D.touches.current-Y)<2&&(D.velocity=0),Y=D.touches.current,Z=(new Date).getTime(),D.callPlugins("onTouchMoveEnd"),b.onTouchMove&&D.fireCallback(b.onTouchMove,D,a),!1}}}function r(a){if(I&&D.swipeReset(),!b.onlyExternal&&D.isTouched){D.isTouched=!1,b.grabCursor&&(D.container.style.cursor="move",D.container.style.cursor="grab",D.container.style.cursor="-moz-grab",D.container.style.cursor="-webkit-grab"),D.positions.current||0===D.positions.current||(D.positions.current=D.positions.start),b.followFinger&&D.setWrapperTranslate(D.positions.current),D.times.end=(new Date).getTime(),D.touches.diff=D.touches.current-D.touches.start,D.touches.abs=Math.abs(D.touches.diff),D.positions.diff=D.positions.current-D.positions.start,D.positions.abs=Math.abs(D.positions.diff);var c=D.positions.diff,d=D.positions.abs,f=D.times.end-D.times.start;5>d&&300>f&&D.allowLinks===!1&&(b.freeMode||0===d||D.swipeReset(),b.preventLinks&&(D.allowLinks=!0),b.onSlideClick&&(D.allowSlideClick=!0)),setTimeout(function(){"undefined"!=typeof D&&null!==D&&(b.preventLinks&&(D.allowLinks=!0),b.onSlideClick&&(D.allowSlideClick=!0))},100);var g=e();if(!D.isMoved&&b.freeMode)return D.isMoved=!1,b.onTouchEnd&&D.fireCallback(b.onTouchEnd,D,a),void D.callPlugins("onTouchEnd");if(!D.isMoved||D.positions.current>0||D.positions.current<-g)return D.swipeReset(),b.onTouchEnd&&D.fireCallback(b.onTouchEnd,D,a),void D.callPlugins("onTouchEnd");if(D.isMoved=!1,b.freeMode){if(b.freeModeFluid){var h,i=1e3*b.momentumRatio,j=D.velocity*i,k=D.positions.current+j,l=!1,m=20*Math.abs(D.velocity)*b.momentumBounceRatio;-g>k&&(b.momentumBounce&&D.support.transitions?(-m>k+g&&(k=-g-m),h=-g,l=!0,_=!0):k=-g),k>0&&(b.momentumBounce&&D.support.transitions?(k>m&&(k=m),h=0,l=!0,_=!0):k=0),0!==D.velocity&&(i=Math.abs((k-D.positions.current)/D.velocity)),D.setWrapperTranslate(k),D.setWrapperTransition(i),b.momentumBounce&&l&&D.wrapperTransitionEnd(function(){_&&(b.onMomentumBounce&&D.fireCallback(b.onMomentumBounce,D),D.callPlugins("onMomentumBounce"),D.setWrapperTranslate(h),D.setWrapperTransition(300))}),D.updateActiveSlide(k)}return(!b.freeModeFluid||f>=300)&&D.updateActiveSlide(D.positions.current),b.onTouchEnd&&D.fireCallback(b.onTouchEnd,D,a),void D.callPlugins("onTouchEnd")}H=0>c?"toNext":"toPrev","toNext"===H&&300>=f&&(30>d||!b.shortSwipes?D.swipeReset():D.swipeNext(!0,!0)),"toPrev"===H&&300>=f&&(30>d||!b.shortSwipes?D.swipeReset():D.swipePrev(!0,!0));var n=0;if("auto"===b.slidesPerView){for(var o,p=Math.abs(D.getWrapperTranslate()),q=0,r=0;r<D.slides.length;r++)if(o=N?D.slides[r].getWidth(!0,b.roundLengths):D.slides[r].getHeight(!0,b.roundLengths),q+=o,q>p){n=o;break}n>J&&(n=J)}else n=F*b.slidesPerView;"toNext"===H&&f>300&&(d>=n*b.longSwipesRatio?D.swipeNext(!0,!0):D.swipeReset()),"toPrev"===H&&f>300&&(d>=n*b.longSwipesRatio?D.swipePrev(!0,!0):D.swipeReset()),b.onTouchEnd&&D.fireCallback(b.onTouchEnd,D,a),D.callPlugins("onTouchEnd")}}function s(a,b){return a&&a.getAttribute("class")&&a.getAttribute("class").indexOf(b)>-1}function t(a){var c=!1;do s(a,b.noSwipingClass)&&(c=!0),a=a.parentElement;while(!c&&a.parentElement&&!s(a,b.wrapperClass));return!c&&s(a,b.wrapperClass)&&s(a,b.noSwipingClass)&&(c=!0),c}function u(a,b){var c,d=document.createElement("div");return d.innerHTML=b,c=d.firstChild,c.className+=" "+a,c.outerHTML}function v(a,c,d){function e(){var f=+new Date,l=f-g;h+=i*l/(1e3/60),k="toNext"===j?h>a:a>h,k?(D.setWrapperTranslate(Math.ceil(h)),D._DOMAnimating=!0,window.setTimeout(function(){e()},1e3/60)):(b.onSlideChangeEnd&&("to"===c?d.runCallbacks===!0&&D.fireCallback(b.onSlideChangeEnd,D,j):D.fireCallback(b.onSlideChangeEnd,D,j)),D.setWrapperTranslate(a),D._DOMAnimating=!1)}var f="to"===c&&d.speed>=0?d.speed:b.speed,g=+new Date;if(D.support.transitions||!b.DOMAnimation)D.setWrapperTranslate(a),D.setWrapperTransition(f);else{var h=D.getWrapperTranslate(),i=Math.ceil((a-h)/f*(1e3/60)),j=h>a?"toNext":"toPrev",k="toNext"===j?h>a:a>h;if(D._DOMAnimating)return;e()}D.updateActiveSlide(a),b.onSlideNext&&"next"===c&&d.runCallbacks===!0&&D.fireCallback(b.onSlideNext,D,a),b.onSlidePrev&&"prev"===c&&d.runCallbacks===!0&&D.fireCallback(b.onSlidePrev,D,a),b.onSlideReset&&"reset"===c&&d.runCallbacks===!0&&D.fireCallback(b.onSlideReset,D,a),"next"!==c&&"prev"!==c&&"to"!==c||d.runCallbacks!==!0||w(c)}function w(a){if(D.callPlugins("onSlideChangeStart"),b.onSlideChangeStart)if(b.queueStartCallbacks&&D.support.transitions){if(D._queueStartCallbacks)return;D._queueStartCallbacks=!0,D.fireCallback(b.onSlideChangeStart,D,a),D.wrapperTransitionEnd(function(){D._queueStartCallbacks=!1})}else D.fireCallback(b.onSlideChangeStart,D,a);if(b.onSlideChangeEnd)if(D.support.transitions)if(b.queueEndCallbacks){if(D._queueEndCallbacks)return;D._queueEndCallbacks=!0,D.wrapperTransitionEnd(function(c){D.fireCallback(b.onSlideChangeEnd,c,a)})}else D.wrapperTransitionEnd(function(c){D.fireCallback(b.onSlideChangeEnd,c,a)});else b.DOMAnimation||setTimeout(function(){D.fireCallback(b.onSlideChangeEnd,D,a)},10)}function x(){var a=D.paginationButtons;if(a)for(var b=0;b<a.length;b++)D.h.removeEventListener(a[b],"click",z)}function y(){var a=D.paginationButtons;if(a)for(var b=0;b<a.length;b++)D.h.addEventListener(a[b],"click",z)}function z(a){for(var c,d=a.target||a.srcElement,e=D.paginationButtons,f=0;f<e.length;f++)d===e[f]&&(c=f);b.autoplay&&D.stopAutoplay(!0),D.swipeTo(c)}function A(){ab=setTimeout(function(){b.loop?(D.fixLoop(),D.swipeNext(!0,!0)):D.swipeNext(!0,!0)||(b.autoplayStopOnLast?(clearTimeout(ab),ab=void 0):D.swipeTo(0)),D.wrapperTransitionEnd(function(){"undefined"!=typeof ab&&A()})},b.autoplay)}function B(){D.calcSlides(),b.loader.slides.length>0&&0===D.slides.length&&D.loadSlides(),b.loop&&D.createLoop(),D.init(),f(),b.pagination&&D.createPagination(!0),b.loop||b.initialSlide>0?D.swipeTo(b.initialSlide,0,!1):D.updateActiveSlide(0),b.autoplay&&D.startAutoplay(),D.centerIndex=D.activeIndex,b.onSwiperCreated&&D.fireCallback(b.onSwiperCreated,D),D.callPlugins("onSwiperCreated")}if(!document.body.outerHTML&&document.body.__defineGetter__&&HTMLElement){var C=HTMLElement.prototype;C.__defineGetter__&&C.__defineGetter__("outerHTML",function(){return(new XMLSerializer).serializeToString(this)})}if(window.getComputedStyle||(window.getComputedStyle=function(a){return this.el=a,this.getPropertyValue=function(b){var c=/(\-([a-z]){1})/g;return"float"===b&&(b="styleFloat"),c.test(b)&&(b=b.replace(c,function(){return arguments[2].toUpperCase()})),a.currentStyle[b]?a.currentStyle[b]:null},this}),Array.prototype.indexOf||(Array.prototype.indexOf=function(a,b){for(var c=b||0,d=this.length;d>c;c++)if(this[c]===a)return c;return-1}),(document.querySelectorAll||window.jQuery)&&"undefined"!=typeof a&&(a.nodeType||0!==c(a).length)){var D=this;D.touches={start:0,startX:0,startY:0,current:0,currentX:0,currentY:0,diff:0,abs:0},D.positions={start:0,abs:0,diff:0,current:0},D.times={start:0,end:0},D.id=(new Date).getTime(),D.container=a.nodeType?a:c(a)[0],D.isTouched=!1,D.isMoved=!1,D.activeIndex=0,D.centerIndex=0,D.activeLoaderIndex=0,D.activeLoopIndex=0,D.previousIndex=null,D.velocity=0,D.snapGrid=[],D.slidesGrid=[],D.imagesToLoad=[],D.imagesLoaded=0,D.wrapperLeft=0,D.wrapperRight=0,D.wrapperTop=0,D.wrapperBottom=0,D.isAndroid=navigator.userAgent.toLowerCase().indexOf("android")>=0;var E,F,G,H,I,J,K={eventTarget:"wrapper",mode:"horizontal",touchRatio:1,speed:300,freeMode:!1,freeModeFluid:!1,momentumRatio:1,momentumBounce:!0,momentumBounceRatio:1,slidesPerView:1,slidesPerGroup:1,slidesPerViewFit:!0,simulateTouch:!0,followFinger:!0,shortSwipes:!0,longSwipesRatio:.5,moveStartThreshold:!1,onlyExternal:!1,createPagination:!0,pagination:!1,paginationElement:"span",paginationClickable:!1,paginationAsRange:!0,resistance:!0,scrollContainer:!1,preventLinks:!0,preventLinksPropagation:!1,noSwiping:!1,noSwipingClass:"swiper-no-swiping",initialSlide:0,keyboardControl:!1,mousewheelControl:!1,mousewheelControlForceToAxis:!1,useCSS3Transforms:!0,autoplay:!1,autoplayDisableOnInteraction:!0,autoplayStopOnLast:!1,loop:!1,loopAdditionalSlides:0,roundLengths:!1,calculateHeight:!1,cssWidthAndHeight:!1,updateOnImagesReady:!0,releaseFormElements:!0,watchActiveIndex:!1,visibilityFullFit:!1,offsetPxBefore:0,offsetPxAfter:0,offsetSlidesBefore:0,offsetSlidesAfter:0,centeredSlides:!1,queueStartCallbacks:!1,queueEndCallbacks:!1,autoResize:!0,resizeReInit:!1,DOMAnimation:!0,loader:{slides:[],slidesHTMLType:"inner",surroundGroups:1,logic:"reload",loadAllSlides:!1},swipeToPrev:!0,swipeToNext:!0,slideElement:"div",slideClass:"swiper-slide",slideActiveClass:"swiper-slide-active",slideVisibleClass:"swiper-slide-visible",slideDuplicateClass:"swiper-slide-duplicate",wrapperClass:"swiper-wrapper",paginationElementClass:"swiper-pagination-switch",paginationActiveClass:"swiper-active-switch",paginationVisibleClass:"swiper-visible-switch"};b=b||{};for(var L in K)if(L in b&&"object"==typeof b[L])for(var M in K[L])M in b[L]||(b[L][M]=K[L][M]);else L in b||(b[L]=K[L]);D.params=b,b.scrollContainer&&(b.freeMode=!0,b.freeModeFluid=!0),b.loop&&(b.resistance="100%");var N="horizontal"===b.mode,O=["mousedown","mousemove","mouseup"];D.browser.ie10&&(O=["MSPointerDown","MSPointerMove","MSPointerUp"]),D.browser.ie11&&(O=["pointerdown","pointermove","pointerup"]),D.touchEvents={touchStart:D.support.touch||!b.simulateTouch?"touchstart":O[0],touchMove:D.support.touch||!b.simulateTouch?"touchmove":O[1],touchEnd:D.support.touch||!b.simulateTouch?"touchend":O[2]};for(var P=D.container.childNodes.length-1;P>=0;P--)if(D.container.childNodes[P].className)for(var Q=D.container.childNodes[P].className.split(/\s+/),R=0;R<Q.length;R++)Q[R]===b.wrapperClass&&(E=D.container.childNodes[P]);D.wrapper=E,D._extendSwiperSlide=function(a){return a.append=function(){return b.loop?a.insertAfter(D.slides.length-D.loopedSlides):(D.wrapper.appendChild(a),D.reInit()),a},a.prepend=function(){return b.loop?(D.wrapper.insertBefore(a,D.slides[D.loopedSlides]),D.removeLoopedSlides(),D.calcSlides(),D.createLoop()):D.wrapper.insertBefore(a,D.wrapper.firstChild),D.reInit(),a},a.insertAfter=function(c){if("undefined"==typeof c)return!1;var d;return b.loop?(d=D.slides[c+1+D.loopedSlides],d?D.wrapper.insertBefore(a,d):D.wrapper.appendChild(a),D.removeLoopedSlides(),D.calcSlides(),D.createLoop()):(d=D.slides[c+1],D.wrapper.insertBefore(a,d)),D.reInit(),a},a.clone=function(){return D._extendSwiperSlide(a.cloneNode(!0))},a.remove=function(){D.wrapper.removeChild(a),D.reInit()},a.html=function(b){return"undefined"==typeof b?a.innerHTML:(a.innerHTML=b,a)},a.index=function(){for(var b,c=D.slides.length-1;c>=0;c--)a===D.slides[c]&&(b=c);return b},a.isActive=function(){return a.index()===D.activeIndex?!0:!1},a.swiperSlideDataStorage||(a.swiperSlideDataStorage={}),a.getData=function(b){return a.swiperSlideDataStorage[b]},a.setData=function(b,c){return a.swiperSlideDataStorage[b]=c,a},a.data=function(b,c){return"undefined"==typeof c?a.getAttribute("data-"+b):(a.setAttribute("data-"+b,c),a)},a.getWidth=function(b,c){return D.h.getWidth(a,b,c)},a.getHeight=function(b,c){return D.h.getHeight(a,b,c)},a.getOffset=function(){return D.h.getOffset(a)},a},D.calcSlides=function(a){var c=D.slides?D.slides.length:!1;D.slides=[],D.displaySlides=[];for(var d=0;d<D.wrapper.childNodes.length;d++)if(D.wrapper.childNodes[d].className)for(var e=D.wrapper.childNodes[d].className,f=e.split(/\s+/),i=0;i<f.length;i++)f[i]===b.slideClass&&D.slides.push(D.wrapper.childNodes[d]);for(d=D.slides.length-1;d>=0;d--)D._extendSwiperSlide(D.slides[d]);c!==!1&&(c!==D.slides.length||a)&&(h(),g(),D.updateActiveSlide(),D.params.pagination&&D.createPagination(),D.callPlugins("numberOfSlidesChanged"))},D.createSlide=function(a,c,d){c=c||D.params.slideClass,d=d||b.slideElement;var e=document.createElement(d);return e.innerHTML=a||"",e.className=c,D._extendSwiperSlide(e)},D.appendSlide=function(a,b,c){return a?a.nodeType?D._extendSwiperSlide(a).append():D.createSlide(a,b,c).append():void 0},D.prependSlide=function(a,b,c){return a?a.nodeType?D._extendSwiperSlide(a).prepend():D.createSlide(a,b,c).prepend():void 0},D.insertSlideAfter=function(a,b,c,d){return"undefined"==typeof a?!1:b.nodeType?D._extendSwiperSlide(b).insertAfter(a):D.createSlide(b,c,d).insertAfter(a)},D.removeSlide=function(a){if(D.slides[a]){if(b.loop){if(!D.slides[a+D.loopedSlides])return!1;D.slides[a+D.loopedSlides].remove(),D.removeLoopedSlides(),D.calcSlides(),D.createLoop()}else D.slides[a].remove();return!0}return!1},D.removeLastSlide=function(){return D.slides.length>0?(b.loop?(D.slides[D.slides.length-1-D.loopedSlides].remove(),D.removeLoopedSlides(),D.calcSlides(),D.createLoop()):D.slides[D.slides.length-1].remove(),!0):!1},D.removeAllSlides=function(){for(var a=D.slides.length,b=D.slides.length-1;b>=0;b--)D.slides[b].remove(),b===a-1&&D.setWrapperTranslate(0)},D.getSlide=function(a){return D.slides[a]},D.getLastSlide=function(){return D.slides[D.slides.length-1]},D.getFirstSlide=function(){return D.slides[0]},D.activeSlide=function(){return D.slides[D.activeIndex]},D.fireCallback=function(){var a=arguments[0];if("[object Array]"===Object.prototype.toString.call(a))for(var c=0;c<a.length;c++)"function"==typeof a[c]&&a[c](arguments[1],arguments[2],arguments[3],arguments[4],arguments[5]);else"[object String]"===Object.prototype.toString.call(a)?b["on"+a]&&D.fireCallback(b["on"+a],arguments[1],arguments[2],arguments[3],arguments[4],arguments[5]):a(arguments[1],arguments[2],arguments[3],arguments[4],arguments[5])},D.addCallback=function(a,b){var c,e=this;return e.params["on"+a]?d(this.params["on"+a])?this.params["on"+a].push(b):"function"==typeof this.params["on"+a]?(c=this.params["on"+a],this.params["on"+a]=[],this.params["on"+a].push(c),this.params["on"+a].push(b)):void 0:(this.params["on"+a]=[],this.params["on"+a].push(b))},D.removeCallbacks=function(a){D.params["on"+a]&&(D.params["on"+a]=null)};var S=[];for(var T in D.plugins)if(b[T]){var U=D.plugins[T](D,b[T]);U&&S.push(U)}D.callPlugins=function(a,b){b||(b={});for(var c=0;c<S.length;c++)a in S[c]&&S[c][a](b)},!D.browser.ie10&&!D.browser.ie11||b.onlyExternal||D.wrapper.classList.add("swiper-wp8-"+(N?"horizontal":"vertical")),b.freeMode&&(D.container.className+=" swiper-free-mode"),D.initialized=!1,D.init=function(a,c){var d=D.h.getWidth(D.container,!1,b.roundLengths),e=D.h.getHeight(D.container,!1,b.roundLengths);if(d!==D.width||e!==D.height||a){D.width=d,D.height=e;var f,g,h,i,j,k,l;J=N?d:e;var m=D.wrapper;if(a&&D.calcSlides(c),"auto"===b.slidesPerView){var n=0,o=0;b.slidesOffset>0&&(m.style.paddingLeft="",m.style.paddingRight="",m.style.paddingTop="",m.style.paddingBottom=""),m.style.width="",m.style.height="",b.offsetPxBefore>0&&(N?D.wrapperLeft=b.offsetPxBefore:D.wrapperTop=b.offsetPxBefore),b.offsetPxAfter>0&&(N?D.wrapperRight=b.offsetPxAfter:D.wrapperBottom=b.offsetPxAfter),b.centeredSlides&&(N?(D.wrapperLeft=(J-this.slides[0].getWidth(!0,b.roundLengths))/2,D.wrapperRight=(J-D.slides[D.slides.length-1].getWidth(!0,b.roundLengths))/2):(D.wrapperTop=(J-D.slides[0].getHeight(!0,b.roundLengths))/2,D.wrapperBottom=(J-D.slides[D.slides.length-1].getHeight(!0,b.roundLengths))/2)),N?(D.wrapperLeft>=0&&(m.style.paddingLeft=D.wrapperLeft+"px"),D.wrapperRight>=0&&(m.style.paddingRight=D.wrapperRight+"px")):(D.wrapperTop>=0&&(m.style.paddingTop=D.wrapperTop+"px"),D.wrapperBottom>=0&&(m.style.paddingBottom=D.wrapperBottom+"px")),k=0;var p=0;for(D.snapGrid=[],D.slidesGrid=[],h=0,l=0;l<D.slides.length;l++){f=D.slides[l].getWidth(!0,b.roundLengths),g=D.slides[l].getHeight(!0,b.roundLengths),b.calculateHeight&&(h=Math.max(h,g));var q=N?f:g;if(b.centeredSlides){var r=l===D.slides.length-1?0:D.slides[l+1].getWidth(!0,b.roundLengths),s=l===D.slides.length-1?0:D.slides[l+1].getHeight(!0,b.roundLengths),t=N?r:s;if(q>J){if(b.slidesPerViewFit)D.snapGrid.push(k+D.wrapperLeft),D.snapGrid.push(k+q-J+D.wrapperLeft);else for(var u=0;u<=Math.floor(q/(J+D.wrapperLeft));u++)D.snapGrid.push(0===u?k+D.wrapperLeft:k+D.wrapperLeft+J*u);D.slidesGrid.push(k+D.wrapperLeft)}else D.snapGrid.push(p),D.slidesGrid.push(p);p+=q/2+t/2}else{if(q>J)if(b.slidesPerViewFit)D.snapGrid.push(k),D.snapGrid.push(k+q-J);else if(0!==J)for(var v=0;v<=Math.floor(q/J);v++)D.snapGrid.push(k+J*v);else D.snapGrid.push(k);else D.snapGrid.push(k);D.slidesGrid.push(k)}k+=q,n+=f,o+=g}b.calculateHeight&&(D.height=h),N?(G=n+D.wrapperRight+D.wrapperLeft,b.cssWidthAndHeight&&"height"!==b.cssWidthAndHeight||(m.style.width=n+"px"),b.cssWidthAndHeight&&"width"!==b.cssWidthAndHeight||(m.style.height=D.height+"px")):(b.cssWidthAndHeight&&"height"!==b.cssWidthAndHeight||(m.style.width=D.width+"px"),b.cssWidthAndHeight&&"width"!==b.cssWidthAndHeight||(m.style.height=o+"px"),G=o+D.wrapperTop+D.wrapperBottom)}else if(b.scrollContainer)m.style.width="",m.style.height="",i=D.slides[0].getWidth(!0,b.roundLengths),j=D.slides[0].getHeight(!0,b.roundLengths),G=N?i:j,m.style.width=i+"px",m.style.height=j+"px",F=N?i:j;else{if(b.calculateHeight){for(h=0,j=0,N||(D.container.style.height=""),m.style.height="",l=0;l<D.slides.length;l++)D.slides[l].style.height="",h=Math.max(D.slides[l].getHeight(!0),h),N||(j+=D.slides[l].getHeight(!0));g=h,D.height=g,N?j=g:(J=g,D.container.style.height=J+"px")}else g=N?D.height:D.height/b.slidesPerView,b.roundLengths&&(g=Math.ceil(g)),j=N?D.height:D.slides.length*g;for(f=N?D.width/b.slidesPerView:D.width,b.roundLengths&&(f=Math.ceil(f)),i=N?D.slides.length*f:D.width,F=N?f:g,b.offsetSlidesBefore>0&&(N?D.wrapperLeft=F*b.offsetSlidesBefore:D.wrapperTop=F*b.offsetSlidesBefore),b.offsetSlidesAfter>0&&(N?D.wrapperRight=F*b.offsetSlidesAfter:D.wrapperBottom=F*b.offsetSlidesAfter),b.offsetPxBefore>0&&(N?D.wrapperLeft=b.offsetPxBefore:D.wrapperTop=b.offsetPxBefore),b.offsetPxAfter>0&&(N?D.wrapperRight=b.offsetPxAfter:D.wrapperBottom=b.offsetPxAfter),b.centeredSlides&&(N?(D.wrapperLeft=(J-F)/2,D.wrapperRight=(J-F)/2):(D.wrapperTop=(J-F)/2,D.wrapperBottom=(J-F)/2)),N?(D.wrapperLeft>0&&(m.style.paddingLeft=D.wrapperLeft+"px"),D.wrapperRight>0&&(m.style.paddingRight=D.wrapperRight+"px")):(D.wrapperTop>0&&(m.style.paddingTop=D.wrapperTop+"px"),D.wrapperBottom>0&&(m.style.paddingBottom=D.wrapperBottom+"px")),G=N?i+D.wrapperRight+D.wrapperLeft:j+D.wrapperTop+D.wrapperBottom,parseFloat(i)>0&&(!b.cssWidthAndHeight||"height"===b.cssWidthAndHeight)&&(m.style.width=i+"px"),parseFloat(j)>0&&(!b.cssWidthAndHeight||"width"===b.cssWidthAndHeight)&&(m.style.height=j+"px"),k=0,D.snapGrid=[],D.slidesGrid=[],l=0;l<D.slides.length;l++)D.snapGrid.push(k),D.slidesGrid.push(k),k+=F,parseFloat(f)>0&&(!b.cssWidthAndHeight||"height"===b.cssWidthAndHeight)&&(D.slides[l].style.width=f+"px"),parseFloat(g)>0&&(!b.cssWidthAndHeight||"width"===b.cssWidthAndHeight)&&(D.slides[l].style.height=g+"px")}D.initialized?(D.callPlugins("onInit"),b.onInit&&D.fireCallback(b.onInit,D)):(D.callPlugins("onFirstInit"),b.onFirstInit&&D.fireCallback(b.onFirstInit,D)),D.initialized=!0}},D.reInit=function(a){D.init(!0,a)},D.resizeFix=function(a){D.callPlugins("beforeResizeFix"),D.init(b.resizeReInit||a),b.freeMode?D.getWrapperTranslate()<-e()&&(D.setWrapperTransition(0),D.setWrapperTranslate(-e())):(D.swipeTo(b.loop?D.activeLoopIndex:D.activeIndex,0,!1),b.autoplay&&(D.support.transitions&&"undefined"!=typeof ab?"undefined"!=typeof ab&&(clearTimeout(ab),ab=void 0,D.startAutoplay()):"undefined"!=typeof bb&&(clearInterval(bb),bb=void 0,D.startAutoplay()))),D.callPlugins("afterResizeFix")},D.destroy=function(a){var c=D.h.removeEventListener,d="wrapper"===b.eventTarget?D.wrapper:D.container;if(D.browser.ie10||D.browser.ie11?(c(d,D.touchEvents.touchStart,p),c(document,D.touchEvents.touchMove,q),c(document,D.touchEvents.touchEnd,r)):(D.support.touch&&(c(d,"touchstart",p),c(d,"touchmove",q),c(d,"touchend",r)),b.simulateTouch&&(c(d,"mousedown",p),c(document,"mousemove",q),c(document,"mouseup",r))),b.autoResize&&c(window,"resize",D.resizeFix),h(),b.paginationClickable&&x(),b.mousewheelControl&&D._wheelEvent&&c(D.container,D._wheelEvent,j),b.keyboardControl&&c(document,"keydown",i),b.autoplay&&D.stopAutoplay(),a){D.wrapper.removeAttribute("style");for(var e=0;e<D.slides.length;e++)D.slides[e].removeAttribute("style")}D.callPlugins("onDestroy"),window.jQuery&&window.jQuery(D.container).data("swiper")&&window.jQuery(D.container).removeData("swiper"),window.Zepto&&window.Zepto(D.container).data("swiper")&&window.Zepto(D.container).removeData("swiper"),D=null},D.disableKeyboardControl=function(){b.keyboardControl=!1,D.h.removeEventListener(document,"keydown",i)},D.enableKeyboardControl=function(){b.keyboardControl=!0,D.h.addEventListener(document,"keydown",i)};var V=(new Date).getTime();if(D.disableMousewheelControl=function(){return D._wheelEvent?(b.mousewheelControl=!1,D.h.removeEventListener(D.container,D._wheelEvent,j),!0):!1},D.enableMousewheelControl=function(){return D._wheelEvent?(b.mousewheelControl=!0,D.h.addEventListener(D.container,D._wheelEvent,j),!0):!1},b.grabCursor){var W=D.container.style;W.cursor="move",W.cursor="grab",W.cursor="-moz-grab",W.cursor="-webkit-grab"}D.allowSlideClick=!0,D.allowLinks=!0;var X,Y,Z,$=!1,_=!0;D.swipeNext=function(a,c){"undefined"==typeof a&&(a=!0),!c&&b.loop&&D.fixLoop(),!c&&b.autoplay&&D.stopAutoplay(!0),D.callPlugins("onSwipeNext");var d=D.getWrapperTranslate().toFixed(2),f=d;if("auto"===b.slidesPerView){for(var g=0;g<D.snapGrid.length;g++)if(-d>=D.snapGrid[g].toFixed(2)&&-d<D.snapGrid[g+1].toFixed(2)){f=-D.snapGrid[g+1];break}}else{var h=F*b.slidesPerGroup;f=-(Math.floor(Math.abs(d)/Math.floor(h))*h+h)}return f<-e()&&(f=-e()),f===d?!1:(v(f,"next",{runCallbacks:a}),!0)},D.swipePrev=function(a,c){"undefined"==typeof a&&(a=!0),!c&&b.loop&&D.fixLoop(),!c&&b.autoplay&&D.stopAutoplay(!0),D.callPlugins("onSwipePrev");var d,e=Math.ceil(D.getWrapperTranslate());if("auto"===b.slidesPerView){d=0;for(var f=1;f<D.snapGrid.length;f++){if(-e===D.snapGrid[f]){d=-D.snapGrid[f-1];break}if(-e>D.snapGrid[f]&&-e<D.snapGrid[f+1]){d=-D.snapGrid[f];break}}}else{var g=F*b.slidesPerGroup;d=-(Math.ceil(-e/g)-1)*g}return d>0&&(d=0),d===e?!1:(v(d,"prev",{runCallbacks:a}),!0)},D.swipeReset=function(a){"undefined"==typeof a&&(a=!0),D.callPlugins("onSwipeReset");{var c,d=D.getWrapperTranslate(),f=F*b.slidesPerGroup;-e()}if("auto"===b.slidesPerView){c=0;for(var g=0;g<D.snapGrid.length;g++){if(-d===D.snapGrid[g])return;if(-d>=D.snapGrid[g]&&-d<D.snapGrid[g+1]){c=D.positions.diff>0?-D.snapGrid[g+1]:-D.snapGrid[g];break}}-d>=D.snapGrid[D.snapGrid.length-1]&&(c=-D.snapGrid[D.snapGrid.length-1]),d<=-e()&&(c=-e())}else c=0>d?Math.round(d/f)*f:0,d<=-e()&&(c=-e());return b.scrollContainer&&(c=0>d?d:0),c<-e()&&(c=-e()),b.scrollContainer&&J>F&&(c=0),c===d?!1:(v(c,"reset",{runCallbacks:a}),!0)},D.swipeTo=function(a,c,d){a=parseInt(a,10),D.callPlugins("onSwipeTo",{index:a,speed:c}),b.loop&&(a+=D.loopedSlides);var f=D.getWrapperTranslate();if(!(!isFinite(a)||a>D.slides.length-1||0>a)){var g;return g="auto"===b.slidesPerView?-D.slidesGrid[a]:-a*F,g<-e()&&(g=-e()),g===f?!1:("undefined"==typeof d&&(d=!0),v(g,"to",{index:a,speed:c,runCallbacks:d}),!0)}},D._queueStartCallbacks=!1,D._queueEndCallbacks=!1,D.updateActiveSlide=function(a){if(D.initialized&&0!==D.slides.length){D.previousIndex=D.activeIndex,"undefined"==typeof a&&(a=D.getWrapperTranslate()),a>0&&(a=0);var c;if("auto"===b.slidesPerView){if(D.activeIndex=D.slidesGrid.indexOf(-a),D.activeIndex<0){for(c=0;c<D.slidesGrid.length-1&&!(-a>D.slidesGrid[c]&&-a<D.slidesGrid[c+1]);c++);var d=Math.abs(D.slidesGrid[c]+a),e=Math.abs(D.slidesGrid[c+1]+a);
D.activeIndex=e>=d?c:c+1}}else D.activeIndex=Math[b.visibilityFullFit?"ceil":"round"](-a/F);if(D.activeIndex===D.slides.length&&(D.activeIndex=D.slides.length-1),D.activeIndex<0&&(D.activeIndex=0),D.slides[D.activeIndex]){if(D.calcVisibleSlides(a),D.support.classList){var f;for(c=0;c<D.slides.length;c++)f=D.slides[c],f.classList.remove(b.slideActiveClass),D.visibleSlides.indexOf(f)>=0?f.classList.add(b.slideVisibleClass):f.classList.remove(b.slideVisibleClass);D.slides[D.activeIndex].classList.add(b.slideActiveClass)}else{var g=new RegExp("\\s*"+b.slideActiveClass),h=new RegExp("\\s*"+b.slideVisibleClass);for(c=0;c<D.slides.length;c++)D.slides[c].className=D.slides[c].className.replace(g,"").replace(h,""),D.visibleSlides.indexOf(D.slides[c])>=0&&(D.slides[c].className+=" "+b.slideVisibleClass);D.slides[D.activeIndex].className+=" "+b.slideActiveClass}if(b.loop){var i=D.loopedSlides;D.activeLoopIndex=D.activeIndex-i,D.activeLoopIndex>=D.slides.length-2*i&&(D.activeLoopIndex=D.slides.length-2*i-D.activeLoopIndex),D.activeLoopIndex<0&&(D.activeLoopIndex=D.slides.length-2*i+D.activeLoopIndex),D.activeLoopIndex<0&&(D.activeLoopIndex=0)}else D.activeLoopIndex=D.activeIndex;b.pagination&&D.updatePagination(a)}}},D.createPagination=function(a){if(b.paginationClickable&&D.paginationButtons&&x(),D.paginationContainer=b.pagination.nodeType?b.pagination:c(b.pagination)[0],b.createPagination){var d="",e=D.slides.length,f=e;b.loop&&(f-=2*D.loopedSlides);for(var g=0;f>g;g++)d+="<"+b.paginationElement+' class="'+b.paginationElementClass+'"></'+b.paginationElement+">";D.paginationContainer.innerHTML=d}D.paginationButtons=c("."+b.paginationElementClass,D.paginationContainer),a||D.updatePagination(),D.callPlugins("onCreatePagination"),b.paginationClickable&&y()},D.updatePagination=function(a){if(b.pagination&&!(D.slides.length<1)){var d=c("."+b.paginationActiveClass,D.paginationContainer);if(d){var e=D.paginationButtons;if(0!==e.length){for(var f=0;f<e.length;f++)e[f].className=b.paginationElementClass;var g=b.loop?D.loopedSlides:0;if(b.paginationAsRange){D.visibleSlides||D.calcVisibleSlides(a);var h,i=[];for(h=0;h<D.visibleSlides.length;h++){var j=D.slides.indexOf(D.visibleSlides[h])-g;b.loop&&0>j&&(j=D.slides.length-2*D.loopedSlides+j),b.loop&&j>=D.slides.length-2*D.loopedSlides&&(j=D.slides.length-2*D.loopedSlides-j,j=Math.abs(j)),i.push(j)}for(h=0;h<i.length;h++)e[i[h]]&&(e[i[h]].className+=" "+b.paginationVisibleClass);b.loop?void 0!==e[D.activeLoopIndex]&&(e[D.activeLoopIndex].className+=" "+b.paginationActiveClass):e[D.activeIndex]&&(e[D.activeIndex].className+=" "+b.paginationActiveClass)}else b.loop?e[D.activeLoopIndex]&&(e[D.activeLoopIndex].className+=" "+b.paginationActiveClass+" "+b.paginationVisibleClass):e[D.activeIndex]&&(e[D.activeIndex].className+=" "+b.paginationActiveClass+" "+b.paginationVisibleClass)}}}},D.calcVisibleSlides=function(a){var c=[],d=0,e=0,f=0;N&&D.wrapperLeft>0&&(a+=D.wrapperLeft),!N&&D.wrapperTop>0&&(a+=D.wrapperTop);for(var g=0;g<D.slides.length;g++){d+=e,e="auto"===b.slidesPerView?N?D.h.getWidth(D.slides[g],!0,b.roundLengths):D.h.getHeight(D.slides[g],!0,b.roundLengths):F,f=d+e;var h=!1;b.visibilityFullFit?(d>=-a&&-a+J>=f&&(h=!0),-a>=d&&f>=-a+J&&(h=!0)):(f>-a&&-a+J>=f&&(h=!0),d>=-a&&-a+J>d&&(h=!0),-a>d&&f>-a+J&&(h=!0)),h&&c.push(D.slides[g])}0===c.length&&(c=[D.slides[D.activeIndex]]),D.visibleSlides=c};var ab,bb;D.startAutoplay=function(){if(D.support.transitions){if("undefined"!=typeof ab)return!1;if(!b.autoplay)return;D.callPlugins("onAutoplayStart"),b.onAutoplayStart&&D.fireCallback(b.onAutoplayStart,D),A()}else{if("undefined"!=typeof bb)return!1;if(!b.autoplay)return;D.callPlugins("onAutoplayStart"),b.onAutoplayStart&&D.fireCallback(b.onAutoplayStart,D),bb=setInterval(function(){b.loop?(D.fixLoop(),D.swipeNext(!0,!0)):D.swipeNext(!0,!0)||(b.autoplayStopOnLast?(clearInterval(bb),bb=void 0):D.swipeTo(0))},b.autoplay)}},D.stopAutoplay=function(a){if(D.support.transitions){if(!ab)return;ab&&clearTimeout(ab),ab=void 0,a&&!b.autoplayDisableOnInteraction&&D.wrapperTransitionEnd(function(){A()}),D.callPlugins("onAutoplayStop"),b.onAutoplayStop&&D.fireCallback(b.onAutoplayStop,D)}else bb&&clearInterval(bb),bb=void 0,D.callPlugins("onAutoplayStop"),b.onAutoplayStop&&D.fireCallback(b.onAutoplayStop,D)},D.loopCreated=!1,D.removeLoopedSlides=function(){if(D.loopCreated)for(var a=0;a<D.slides.length;a++)D.slides[a].getData("looped")===!0&&D.wrapper.removeChild(D.slides[a])},D.createLoop=function(){if(0!==D.slides.length){D.loopedSlides="auto"===b.slidesPerView?b.loopedSlides||1:Math.floor(b.slidesPerView)+b.loopAdditionalSlides,D.loopedSlides>D.slides.length&&(D.loopedSlides=D.slides.length);var a,c="",d="",e="",f=D.slides.length,g=Math.floor(D.loopedSlides/f),h=D.loopedSlides%f;for(a=0;g*f>a;a++){var i=a;if(a>=f){var j=Math.floor(a/f);i=a-f*j}e+=D.slides[i].outerHTML}for(a=0;h>a;a++)d+=u(b.slideDuplicateClass,D.slides[a].outerHTML);for(a=f-h;f>a;a++)c+=u(b.slideDuplicateClass,D.slides[a].outerHTML);var k=c+e+E.innerHTML+e+d;for(E.innerHTML=k,D.loopCreated=!0,D.calcSlides(),a=0;a<D.slides.length;a++)(a<D.loopedSlides||a>=D.slides.length-D.loopedSlides)&&D.slides[a].setData("looped",!0);D.callPlugins("onCreateLoop")}},D.fixLoop=function(){var a;D.activeIndex<D.loopedSlides?(a=D.slides.length-3*D.loopedSlides+D.activeIndex,D.swipeTo(a,0,!1)):("auto"===b.slidesPerView&&D.activeIndex>=2*D.loopedSlides||D.activeIndex>D.slides.length-2*b.slidesPerView)&&(a=-D.slides.length+D.activeIndex+D.loopedSlides,D.swipeTo(a,0,!1))},D.loadSlides=function(){var a="";D.activeLoaderIndex=0;for(var c=b.loader.slides,d=b.loader.loadAllSlides?c.length:b.slidesPerView*(1+b.loader.surroundGroups),e=0;d>e;e++)a+="outer"===b.loader.slidesHTMLType?c[e]:"<"+b.slideElement+' class="'+b.slideClass+'" data-swiperindex="'+e+'">'+c[e]+"</"+b.slideElement+">";D.wrapper.innerHTML=a,D.calcSlides(!0),b.loader.loadAllSlides||D.wrapperTransitionEnd(D.reloadSlides,!0)},D.reloadSlides=function(){var a=b.loader.slides,c=parseInt(D.activeSlide().data("swiperindex"),10);if(!(0>c||c>a.length-1)){D.activeLoaderIndex=c;var d=Math.max(0,c-b.slidesPerView*b.loader.surroundGroups),e=Math.min(c+b.slidesPerView*(1+b.loader.surroundGroups)-1,a.length-1);if(c>0){var f=-F*(c-d);D.setWrapperTranslate(f),D.setWrapperTransition(0)}var g;if("reload"===b.loader.logic){D.wrapper.innerHTML="";var h="";for(g=d;e>=g;g++)h+="outer"===b.loader.slidesHTMLType?a[g]:"<"+b.slideElement+' class="'+b.slideClass+'" data-swiperindex="'+g+'">'+a[g]+"</"+b.slideElement+">";D.wrapper.innerHTML=h}else{var i=1e3,j=0;for(g=0;g<D.slides.length;g++){var k=D.slides[g].data("swiperindex");d>k||k>e?D.wrapper.removeChild(D.slides[g]):(i=Math.min(k,i),j=Math.max(k,j))}for(g=d;e>=g;g++){var l;i>g&&(l=document.createElement(b.slideElement),l.className=b.slideClass,l.setAttribute("data-swiperindex",g),l.innerHTML=a[g],D.wrapper.insertBefore(l,D.wrapper.firstChild)),g>j&&(l=document.createElement(b.slideElement),l.className=b.slideClass,l.setAttribute("data-swiperindex",g),l.innerHTML=a[g],D.wrapper.appendChild(l))}}D.reInit(!0)}},B()}};Swiper.prototype={plugins:{},wrapperTransitionEnd:function(a,b){"use strict";function c(h){if(h.target===f&&(a(e),e.params.queueEndCallbacks&&(e._queueEndCallbacks=!1),!b))for(d=0;d<g.length;d++)e.h.removeEventListener(f,g[d],c)}var d,e=this,f=e.wrapper,g=["webkitTransitionEnd","transitionend","oTransitionEnd","MSTransitionEnd","msTransitionEnd"];if(a)for(d=0;d<g.length;d++)e.h.addEventListener(f,g[d],c)},getWrapperTranslate:function(a){"use strict";var b,c,d,e,f=this.wrapper;return"undefined"==typeof a&&(a="horizontal"http://image.tongshuai.com/tongshuai/images/===this.params.mode?"x":"y"),this.support.transforms&&this.params.useCSS3Transforms?(d=window.getComputedStyle(f,null),window.WebKitCSSMatrix?e=new WebKitCSSMatrix("none"===d.webkitTransform?"":d.webkitTransform):(e=d.MozTransform||d.OTransform||d.MsTransform||d.msTransform||d.transform||d.getPropertyValue("transform").replace("translate(","matrix(1, 0, 0, 1,"),b=e.toString().split(",")),"x"===a&&(c=window.WebKitCSSMatrix?e.m41:parseFloat(16===b.length?b[12]:b[4])),"y"===a&&(c=window.WebKitCSSMatrix?e.m42:parseFloat(16===b.length?b[13]:b[5]))):("x"===a&&(c=parseFloat(f.style.left,10)||0),"y"===a&&(c=parseFloat(f.style.top,10)||0)),c||0},setWrapperTranslate:function(a,b,c){"use strict";var d,e=this.wrapper.style,f={x:0,y:0,z:0};3===arguments.length?(f.x=a,f.y=b,f.z=c):("undefined"==typeof b&&(b="horizontal"http://image.tongshuai.com/tongshuai/images/===this.params.mode?"x":"y"),f[b]=a),this.support.transforms&&this.params.useCSS3Transforms?(d=this.support.transforms3d?"translate3d("+f.x+"px, "+f.y+"px, "+f.z+"px)":"translate("+f.x+"px, "+f.y+"px)",e.webkitTransform=e.MsTransform=e.msTransform=e.MozTransform=e.OTransform=e.transform=d):(e.left=f.x+"px",e.top=f.y+"px"),this.callPlugins("onSetWrapperTransform",f),this.params.onSetWrapperTransform&&this.fireCallback(this.params.onSetWrapperTransform,this,f)},setWrapperTransition:function(a){"use strict";var b=this.wrapper.style;b.webkitTransitionDuration=b.MsTransitionDuration=b.msTransitionDuration=b.MozTransitionDuration=b.OTransitionDuration=b.transitionDuration=a/1e3+"s",this.callPlugins("onSetWrapperTransition",{duration:a}),this.params.onSetWrapperTransition&&this.fireCallback(this.params.onSetWrapperTransition,this,a)},h:{getWidth:function(a,b,c){"use strict";var d=window.getComputedStyle(a,null).getPropertyValue("width"),e=parseFloat(d);return(isNaN(e)||d.indexOf("%")>0||0>e)&&(e=a.offsetWidth-parseFloat(window.getComputedStyle(a,null).getPropertyValue("padding-left"))-parseFloat(window.getComputedStyle(a,null).getPropertyValue("padding-right"))),b&&(e+=parseFloat(window.getComputedStyle(a,null).getPropertyValue("padding-left"))+parseFloat(window.getComputedStyle(a,null).getPropertyValue("padding-right"))),c?Math.ceil(e):e},getHeight:function(a,b,c){"use strict";if(b)return a.offsetHeight;var d=window.getComputedStyle(a,null).getPropertyValue("height"),e=parseFloat(d);return(isNaN(e)||d.indexOf("%")>0||0>e)&&(e=a.offsetHeight-parseFloat(window.getComputedStyle(a,null).getPropertyValue("padding-top"))-parseFloat(window.getComputedStyle(a,null).getPropertyValue("padding-bottom"))),b&&(e+=parseFloat(window.getComputedStyle(a,null).getPropertyValue("padding-top"))+parseFloat(window.getComputedStyle(a,null).getPropertyValue("padding-bottom"))),c?Math.ceil(e):e},getOffset:function(a){"use strict";var b=a.getBoundingClientRect(),c=document.body,d=a.clientTop||c.clientTop||0,e=a.clientLeft||c.clientLeft||0,f=window.pageYOffset||a.scrollTop,g=window.pageXOffset||a.scrollLeft;return document.documentElement&&!window.pageYOffset&&(f=document.documentElement.scrollTop,g=document.documentElement.scrollLeft),{top:b.top+f-d,left:b.left+g-e}},windowWidth:function(){"use strict";return window.innerWidth?window.innerWidth:document.documentElement&&document.documentElement.clientWidth?document.documentElement.clientWidth:void 0},windowHeight:function(){"use strict";return window.innerHeight?window.innerHeight:document.documentElement&&document.documentElement.clientHeight?document.documentElement.clientHeight:void 0},windowScroll:function(){"use strict";return"undefined"!=typeof pageYOffset?{left:window.pageXOffset,top:window.pageYOffset}:document.documentElement?{left:document.documentElement.scrollLeft,top:document.documentElement.scrollTop}:void 0},addEventListener:function(a,b,c,d){"use strict";"undefined"==typeof d&&(d=!1),a.addEventListener?a.addEventListener(b,c,d):a.attachEvent&&a.attachEvent("on"+b,c)},removeEventListener:function(a,b,c,d){"use strict";"undefined"==typeof d&&(d=!1),a.removeEventListener?a.removeEventListener(b,c,d):a.detachEvent&&a.detachEvent("on"+b,c)}},setTransform:function(a,b){"use strict";var c=a.style;c.webkitTransform=c.MsTransform=c.msTransform=c.MozTransform=c.OTransform=c.transform=b},setTranslate:function(a,b){"use strict";var c=a.style,d={x:b.x||0,y:b.y||0,z:b.z||0},e=this.support.transforms3d?"translate3d("+d.x+"px,"+d.y+"px,"+d.z+"px)":"translate("+d.x+"px,"+d.y+"px)";c.webkitTransform=c.MsTransform=c.msTransform=c.MozTransform=c.OTransform=c.transform=e,this.support.transforms||(c.left=d.x+"px",c.top=d.y+"px")},setTransition:function(a,b){"use strict";var c=a.style;c.webkitTransitionDuration=c.MsTransitionDuration=c.msTransitionDuration=c.MozTransitionDuration=c.OTransitionDuration=c.transitionDuration=b+"ms"},support:{touch:window.Modernizr&&Modernizr.touch===!0||function(){"use strict";return!!("ontouchstart"in window||window.DocumentTouch&&document instanceof DocumentTouch)}(),transforms3d:window.Modernizr&&Modernizr.csstransforms3d===!0||function(){"use strict";var a=document.createElement("div").style;return"webkitPerspective"in a||"MozPerspective"in a||"OPerspective"in a||"MsPerspective"in a||"perspective"in a}(),transforms:window.Modernizr&&Modernizr.csstransforms===!0||function(){"use strict";var a=document.createElement("div").style;return"transform"in a||"WebkitTransform"in a||"MozTransform"in a||"msTransform"in a||"MsTransform"in a||"OTransform"in a}(),transitions:window.Modernizr&&Modernizr.csstransitions===!0||function(){"use strict";var a=document.createElement("div").style;return"transition"in a||"WebkitTransition"in a||"MozTransition"in a||"msTransition"in a||"MsTransition"in a||"OTransition"in a}(),classList:function(){"use strict";var a=document.createElement("div");return"classList"in a}()},browser:{ie8:function(){"use strict";var a=-1;if("Microsoft Internet Explorer"===navigator.appName){var b=navigator.userAgent,c=new RegExp(/MSIE ([0-9]{1,}[\.0-9]{0,})/);null!==c.exec(b)&&(a=parseFloat(RegExp.$1))}return-1!==a&&9>a}(),ie10:window.navigator.msPointerEnabled,ie11:window.navigator.pointerEnabled}},(window.jQuery||window.Zepto)&&!function(a){"use strict";a.fn.swiper=function(b){var c;return this.each(function(d){var e=a(this),f=new Swiper(e[0],b);d||(c=f),e.data("swiper",f)}),c}}(window.jQuery||window.Zepto),"undefined"!=typeof module?module.exports=Swiper:"function"==typeof define&&define.amd&&define([],function(){"use strict";return Swiper});
$(function() {
    var screenWidth = document.body.offsetWidth;
    if (screenWidth <= 991) {
      $('.js_bannerSwiper .js_recPic').attr('src', 'images/img1-1.png'/*tpa=http://image.tongshuai.com/tongshuai/images/images/img1-1.png*/)
    }

    if (screenWidth < 991) {
      $('.js_bannerSwiper .js_recPic').each(function(){
        $(this).attr('src','images/img1-1.png'/*tpa=http://image.tongshuai.com/tongshuai/images/images/img1-1.png*/);
        if (screenWidth < 991) {
          $('.js_bannerSwiper .js_recPic').each(function(){
            $(this).attr('src','images/img1-1.png'/*tpa=http://image.tongshuai.com/tongshuai/images/images/img1-1.png*/);
            
            if ($(this).attr('md') == '') {
              $(this).attr('md','images/img1-1.png'/*tpa=http://image.tongshuai.com/tongshuai/images/images/img1-1.png*/);
            }
            if ($(this).attr('sm') == '') {
              $(this).attr('sm','images/img1-1.png'/*tpa=http://image.tongshuai.com/tongshuai/images/images/img1-1.png*/);
            }
            if ($(this).attr('xs') == ''){
              $(this).attr('xs','images/img1-1.png'/*tpa=http://image.tongshuai.com/tongshuai/images/images/img1-1.png*/);
            }
          })
        }
        
        if ($(this).attr('md') == '') {
          $(this).attr('md','images/img1-1.png'/*tpa=http://image.tongshuai.com/tongshuai/images/images/img1-1.png*/);
        }
        if ($(this).attr('sm') == '') {
          $(this).attr('sm','images/img1-1.png'/*tpa=http://image.tongshuai.com/tongshuai/images/images/img1-1.png*/);
        }
        if ($(this).attr('xs') == ''){
          $(this).attr('xs','images/img1-1.png'/*tpa=http://image.tongshuai.com/tongshuai/images/images/img1-1.png*/);
        }
      })
    }

    //首页图片按需加载
    $(window).scroll(function () {
      $('.js_imgLazyLoading').each(function(i,n){
        if (document.body.clientHeight + getScrollTop() > $('.js_imgLazyLoading').eq(i).offset().top+200) {
          $('.js_imgLazyLoading').eq(i).find('.js_lazyImg').each(function(j,k){
            $('.js_imgLazyLoading').eq(i).find('.js_lazyImg').eq(j).lazyImg(0);
          });
          $('.js_imgLazyLoading').eq(i).find('.js_recPic').each(function(j,k){
            $('.js_imgLazyLoading').eq(i).find('.js_recPic').eq(j).oPicture().init();
          });
          $('.js_imgLazyLoading').eq(i).find('.js_footImgLazy').each(function(j,k){
            $('.js_imgLazyLoading').eq(i).find('.js_footImgLazy').eq(j).lazyImg(0);
          });
        }
      }); 
    });
        
    $('.enter-con').hover(function(){
      $(this).removeClass('off').addClass('on');
    },function(){
      $(this).removeClass('on').addClass('off');
    });

    /**
     * 数字滚动
     */
    $('.js-scroll-num').each(function(index){
      var dataNum = $(this).attr('data-num');
      for (var i = 0; i <  dataNum.length; i++) {
        $(this).append('<div num="'+dataNum[i]+'"><span>0</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span></div>');
      }
    })

    /**
     * @desc 获取滚动条距顶部的距离
     */
    function getScrollTop() {
      return (document.documentElement && document.documentElement.scrollTop) || document.body.scrollTop;
    }

    if (document.body.clientHeight > $('.index-enter').offset().top) {
      if ($('.index-enter').not('.js-inited').length > 0) {
        $('.index-enter').addClass('js-inited');
        var inSenceTimer = setInterval(function(){
          $('.enter-con').not('.in-sence').not('.enter-con-xs').eq(0).addClass('in-sence');
          if ($('.enter-con').not('.in-sence').length == 0) {
            clearInterval(inSenceTimer);
          }
        },500);
      }
    }

    $(window).scroll(function () {
        //关于我们动画  
        if (document.body.clientHeight + getScrollTop() > $('.index-about').offset().top + 500) {
          if($('.js-scroll-num').not('.js-inited').length > 0){
            $('.js-scroll-num').find('div').each(function(){
              $(this).addClass('js-inited');
              $(this).find('span').eq(0).animate({
                'margin-top': -46 * $(this).attr('num') + 'px'
              },1000);
            })
          }
        }
        //首页入口（文字）动画
        if (document.body.clientHeight + getScrollTop() > $('.index-enter').offset().top + 60) {
          if ($('.index-enter').not('.js-inited').length > 0) {
            $('.index-enter').addClass('js-inited');
            var inSenceTimer = setInterval(function(){
              $('.enter-con').not('.in-sence').not('.enter-con-xs').eq(0).addClass('in-sence');
              if ($('.enter-con').not('.in-sence').length == 0) {
                clearInterval(inSenceTimer);
              }
            },500);
          }
        }
    });  

  function init() {

    var screenWidth = document.body.offsetWidth;
    var screenHeight = document.body.offsetHeight;

    if(screenWidth>700){
      setTimeout(function(){
        //产品推荐灰色背景高度跟随
        $('.js_recommendHerobg').oHrel({
          obj:'$(this).siblings(".js_recommendHero")'
        }).init();
        
        var ua = navigator.userAgent.toLowerCase();
        if(ua.match(/msie ([\d.]+)/) && ua.match(/msie ([\d.]+)/)[1].indexOf("8")>-1){
          $('.js_recommendHerobg').css('height','533px');
        }
      },500);
    }
  }

  var swiper = {};//用来存放所有轮播

	/**
	 * banner
	 */
	//banner轮播
  var screenWidth = document.body.offsetWidth;

  var bannerHtmlStr = '';
  for(var j=$('.o_df_1-6.banner-info').find('.js_bannerSwiperFont').length-1;j>=0;j--){
      if(j==0){
        bannerHtmlStr += 
        '<div class="page-num active" data-index='+(j+1)+'>' +
          '<div class="line">' +
              '<div class="red-line"></div>' +
          '</div>' +
          '<div class="num">0'+ (j+1) +'</div>' +
        '</div>';
      }else{
        bannerHtmlStr += 
        '<div class="page-num" data-index='+(j+1)+'>' +
          '<div class="line">' +
              '<div class="red-line"></div>' +
          '</div>' +
          '<div class="num">0'+ (j+1) +'</div>' +
        '</div>';
      }
        
  }

  $('.js_bannerSwiperPage').html(bannerHtmlStr);


  var indexBannerInit = false;
  var bannerSwiperParams = {
    slidesPerView: 1,
    watchActiveIndex: false,
    centeredSlides: false
  }
    
  if (screenWidth <= 991) {
    bannerSwiperParams.slidesPerView = 3;
    bannerSwiperParams.watchActiveIndex = true;
    bannerSwiperParams.centeredSlides = true;
  }

  swiper.bannerSwiper = new Swiper('.js_bannerSwiper',{
    loop: true,
    updateOnImagesReady : true,
    // initialSlide: -1,
    // autoplay: 5000,
    speed:1000,
    roundLengths : true,
    centeredSlides : bannerSwiperParams.centeredSlides,
    calculateHeight : true,
    slidesPerView: bannerSwiperParams.slidesPerView,
    watchActiveIndex: bannerSwiperParams.watchActiveIndex,
    pagination: '.js_swiperBannerPoint',
    paginationClickable: true,
    onInit: function(swiper){
      $('.js_bannerSwiper .swiper-slide').show();
      
      var index = swiper.activeLoopIndex;
      $('.js_bannerSwiperFont').stop();
      $('.js_bannerSwiperFont').eq(0).fadeIn(100);
      // $('.js_bannerSwiperFont1').stop();
      // $('.js_bannerSwiperFont1').fadeOut();
      // $('.js_bannerSwiperFont1').eq(1).fadeIn(100);

      //响应式图片
      // $(".js_bannerSwiper .js_recPic").each(function(){
      //   // setTimeout(function(){
      //     $(this).oPicture().init();
      //   // },1000);
      // });
      $('.js_bannerSwiper .swiper-slide-active').find('.js_recPic').eq(0).oPicture().init();
    },
    onImagesReady: function () {
      $('.js_bannerInfo').oHrel({
        obj:'$(this).next()'
      }).init();

      $('.banner-bot-info').animate({
        opacity: 1
      })

      var screenWidth = document.body.offsetWidth;
      $('.index-banner').animate({
        'margin-left': 0
      },30,'swing');

      $('.index-banner-shadow-bottom').animate({
        'right': 0
      },300,'swing',function(){
        $('.index-banner-shadow').fadeOut();
        swiper.bannerSwiper.params.autoplay = 5000;
      }); 
    },
    onSlideChangeStart: function(swiper){
      bannerFalsh();
      $('.js_bannerSwiper').find('.js_recPic').each(function(i,n){
        $('.js_bannerSwiper').find('.js_recPic').eq(i).oPicture().init();
      });
    }
  });

  if (screenWidth <= 991) {
    var isTouch = false;
    var marginValue = screenWidth>700?'60px':'75px 25px';

    var normalWidth = "80%"
    if (screenWidth <= 700) {
      normalWidth = "88%"
    } 
    swiper.bannerSwiper.params.speed = 300;//移动端banner图片
    swiper.bannerSwiper.params.onTouchStart = function(swiper){
      isTouch = true;
      $('.js_bannerSwiper .swiper-slide').each(function(){
        $(this).find('img').css({
          'width': normalWidth
        });
      })
    };
    swiper.bannerSwiper.params.onSlideChangeStart = function(swiper){
      bannerFalsh();
      $('.js_bannerSwiper').find('.js_recPic').each(function(i,n){
        $('.js_bannerSwiper').find('.js_recPic').eq(i).oPicture().init();
      });
      if (!isTouch) {
        var index = swiper.activeLoopIndex;
        if (!indexBannerInit) {
          $('.js_bannerSwiper .swiper-slide').find('img').css({
            'width': normalWidth
          });
        }
      }
      indexBannerInit = true;
    };

    swiper.bannerSwiper.params.onTouchEnd = function(swiper){
      isTouch = false;
      $('.js_bannerSwiper .swiper-slide').find('img').css({
        'width': normalWidth
      });
    };

    swiper.bannerSwiper.params.onSlideChangeEnd = function(swiper){
      var index = swiper.activeLoopIndex;
      var indexPage = $('.js_bannerSwiperPage .page-num').size();
      var indexPage = $('.js_bannerSwiperPage .page-num').size();
      if (!isTouch) {
        $('.js_bannerSwiper .swiper-slide').find('img').css({
          'width': normalWidth
        });
      }

      $('.js_bannerSwiper .swiper-slide').stop(true);
      $(swiper.activeSlide()).find('img').animate({
        'width': '100%'
      }, 10);

      swiper.startAutoplay();

      //文字
      $('.js_bannerSwiperFont1').hide();
      $('.js_bannerSwiperFont1').stop();
      $('.js_bannerSwiperFont1').eq(index).fadeIn(500);
      //分页
      $('.js_bannerSwiperPage .page-num').removeClass('active');
      $('.js_bannerSwiperPage .page-num').eq(indexPage-1-index).addClass('active');
    };
    swiper.bannerSwiper.params.onInit = function(swiper){
      $('.js_bannerSwiper .swiper-slide').show();
      
      var index = swiper.activeLoopIndex;
      $('.js_bannerSwiperFont1').hide();
      $('.js_bannerSwiperFont1').stop();
      $('.js_bannerSwiperFont1').eq(index).fadeIn(500);
      // $('.js_bannerSwiper .swiper-slide-active').find('.js_recPic').eq(0).oPicture().init();
      $('.js_bannerSwiper').find('.js_recPic').each(function(){
        $(this).oPicture().init();
      });
      $('.js_bannerSwiper').find('.js_recPic').css('width',normalWidth);
      $(swiper.activeSlide()).find('img').css('width','100%');
    };  
  } else {
    swiper.bannerSwiper.params.onSlideChangeEnd = function(swiper){
      var index = swiper.activeLoopIndex;
      var indexPage = $('.js_bannerSwiperPage .page-num').size();
      //文字
      $('.js_bannerSwiperFont').hide();
      $('.js_bannerSwiperFont').stop();
      $('.js_bannerSwiperFont').eq(index).fadeIn(500);

      //分页
      $('.js_bannerSwiperPage .page-num').removeClass('active');
      $('.js_bannerSwiperPage .page-num').eq(indexPage-1-index).addClass('active');

      $('.js_bannerSwiperPage .page-num').find('.red-line').removeClass('active');
      $('.js_bannerSwiperPage .page-num.active').find('.red-line').addClass('active');
    };
  }

  //确保加载图片以后，重新加载轮播
  setTimeout(function(){
    swiper.bannerSwiper.reInit();
    // swiper.bannerSwiper.swipeNext(); 
    // swiper.bannerSwiper.params.autoplay = 2000;
    swiper.bannerSwiper.stopAutoplay();
    swiper.bannerSwiper.startAutoplay();
  },500);

  /**
   * 首页顶部轮播hover停止自动
   */
  $('.js_bannerSwiper').hover(function(){
    swiper.bannerSwiper.stopAutoplay();
  }, function(){
    swiper.bannerSwiper.startAutoplay();    
  });

  /**
   * 产线入口
   */
  $('.js_enterMore').on('click',function(){
    $('.js_enterShow').toggleClass('l-none');
    if($(this).attr('data-type')=='more'){
      $(this).html('收起全部产品分类 x');
      $(this).attr('data-type','');
    }else{
      $(this).html('展开全部产品分类 +');
      $(this).attr('data-type','more');
    }
  });

	/**
	 * 产品推荐
	 */
	
  /**
   * 产品推荐模块
   */
  //产品推荐分页
  $('.o_df_1-3 .js_recommendPage').each(function(i,n){
      var htmlStr = '';
      for(var j=$('.js_recommendFont1').length-1;j>=0;j--){
        if(i==j){
          htmlStr += '<span class="active" data-index='+(j+1)+'>0'+(j+1)+'</span>';
        }else{
          htmlStr += '<span data-index='+(j+1)+'>0'+(j+1)+'</span>';
        }
      }
      $(this).html(htmlStr);
  });

  $('.o_sm-show .js_recommendPage').each(function(i,n){
    var htmlStr = '';
    for(var j=0;j<$('.js_recommendFont1').length;j++){
      if(i==j){
        htmlStr += '<span class="active" data-index='+(j+1)+'>0'+(j+1)+'</span>';
      }else{
        htmlStr += '<span data-index='+(j+1)+'>0'+(j+1)+'</span>';
      }
    }
    $(this).html(htmlStr);
});

	//产品推荐轮播
  swiper.recommendSwiper = new Swiper ('.js_swiperRecMain', {

    loop: true,
    autoplay: 5000,
    updateOnImagesReady: true,
    calculateHeight : true,
    onFirstInit: function(swiper){
      $('.js_swiperRecMain .swiper-slide').show();
      
      var index = swiper.activeLoopIndex;
      $('.js_recommendFont').stop();
      $('.js_recommendFont').hide();
      $('.js_recommendFont').eq(index).fadeIn(500);
      $('.js_recommendFont1').stop();
      $('.js_recommendFont1').hide();
      $('.js_recommendFont1').eq(index).fadeIn(500);
    },
    onImagesReady:function(swiper){
      $(window).scroll(function () {
        if (document.body.clientHeight + getScrollTop() > $('.index-recommend').offset().top + 400) {
          $('.js_recFlashBg').each(function(i,n){          
            if($('.js_recFlashBg').eq(i).attr('data-start')=='left'){
              $('.js_recFlashBg').eq(i).find('div').eq(0).animate({
                'right': 0
              },1000,'swing',function(){
                $('.js_recFlashBg').eq(i).find('div').eq(1).hide();
                $('.js_recFlashBg').eq(i).animate({
                  'left': '100%'
                },500,function(){
                  $('.js_swiperRecMain').css('box-shadow','0 0 20px #b9b7b7');
                });
              });
            }else{
              $('.js_recFlashBg').eq(i).children('div').eq(0).animate({
                'left': 0
              },800,'swing',function(){
                $('.js_recFlashBg').eq(i).children('div').eq(1).hide();
                $('.js_recFlashBg').eq(i).animate({
                  'right': '100%'
                },300,function(){
                  $('.js_swiperRecMain').css('box-shadow','0 0 20px #b9b7b7');
                });
              });
            }
          });
          var imgSrc = $('.js_swiperRecMain .swiper-slide').eq(swiper.previousIndex).find('img').attr('df');
          $('.js_recImgSmall').attr('src',imgSrc);
        }
      });
    },
    onSlideChangeEnd: function(swiper){
    	var index = swiper.activeLoopIndex;
    	var imgSrc = $('.js_swiperRecMain .swiper-slide').eq(swiper.previousIndex).find('img').attr('src');
      $('.js_recImgSmall').attr('src',imgSrc);

      //文字
      $('.js_recommendFont').stop().hide();
      $('.js_recommendFont').eq(index).fadeIn(500);
      $('.js_recommendFont1').stop().hide();
      $('.js_recommendFont1').eq(index).fadeIn(500);
    }
  });

  /**
   * 产品轮播hover停止自动
   */
  $('.js_swiperRecMain').hover(function(){
    swiper.recommendSwiper.stopAutoplay();
  }, function(){
    swiper.recommendSwiper.startAutoplay();    
  });
  
  //产品推荐分页
  $('.js_recommendPage span').on('click',function(){
    var pageNum = $(this).attr('data-index');
    swiper.recommendSwiper.swipeTo(pageNum-1, 500, false);
    //文字
    $('.js_recommendFont').stop().hide();
    $('.js_recommendFont').eq(pageNum-1).fadeIn(500);
    $('.js_recommendFont1').stop().hide();
    $('.js_recommendFont1').eq(pageNum-1).fadeIn(500);
  })
	$('.js_swiperRecMainPrev').on('click', function(e){
  	e.preventDefault();
    swiper.recommendSwiper.swipePrev();
  });
  $('.js_swiperRecMainNext').on('click', function(e){
    e.preventDefault();
    swiper.recommendSwiper.swipeNext();
  });


  /**
   * 首页入口
   */
  //分页
  $('.js_entrancePage').each(function(i,n){
    var htmlStr = '';
    for(var j=$('.js_entrancePage').length-1;j>=0;j--){
      if(i==j){
        htmlStr += '<div class="page-num active" data-index='+(j+1)+'>0'+(j+1)+'</div>';
      }else{
        htmlStr += '<div class="page-num" data-index='+(j+1)+'>0'+(j+1)+'</div>';
      }
    }

    $(this).html(htmlStr);
  });

  $('.js_entrancePageMd').each(function(i,n){
    var htmlStr = '';
    for(var j=$('.js_entrancePageMd').length-1;j>=0;j--){
      if(i==j){
        htmlStr += '<div class="page-num active" data-index='+(j+1)+'>0'+(j+1)+'</div>';
      }else{
        htmlStr += '<div class="page-num" data-index='+(j+1)+'>0'+(j+1)+'</div>';
      }
    }
    $(this).html(htmlStr);
  });


  var entrabceSwiperSlidesPerView = 1;
  if (screenWidth <= 700) {
  	entrabceSwiperSlidesPerView = 2;
  } 


  swiper.entrabceSwiper = new Swiper ('.js_swiperEntrabce', {

    loop: true,
    autoplay: 5000,
    // initialSlide: 0,
    calculateHeight : true,
    autoplayDisableOnInteraction : false,//用户操作之后，不禁止autoplay
    updateOnImagesReady : true,
    pagination : '.js_entrancePageXs',
    paginationClickable :true,
    roundLengths: true,
    slidesPerView: entrabceSwiperSlidesPerView,
    onSlideChangeStart: function(swiper){
      $('.temp-slide').removeClass('temp-slide');
      $('.js_swiperEntrabce .swiper-slide').find('.entrance-fontbox').css({ 'filter':'alpha(opacity=0)', '-moz-opacity':'0', '-khtml-opacity': '0', 'opacity': '0' });
      clearTimeout(clearTimer);
      var clearTimer = setTimeout(function(){
        var index = swiper.activeIndex;
        $('.js_swiperEntrabce .swiper-slide').find('.entrance-fontbox').stop();
        $('.js_swiperEntrabce .swiper-slide').eq(index).find('.entrance-fontbox').animate({ 'filter':'alpha(opacity=1)', '-moz-opacity':'1', '-khtml-opacity': '1', 'opacity': '1' }, 1000);
      },500);
    },
    onTouchEnd: function(swiper){
      var index = swiper.activeIndex;
      $('.js_swiperEntrabce .swiper-slide').find('.entrance-fontbox').stop();
      $('.js_swiperEntrabce .swiper-slide').eq(index).find('.entrance-fontbox').animate({ 'filter':'alpha(opacity=1)', '-moz-opacity':'1', '-khtml-opacity': '1', 'opacity': '1' }, 1000);
    },
    onSlideChangeEnd: function(swiper){
      $('.temp-slide').removeClass('temp-slide');
      var index = swiper.activeIndex;
      $('.js_swiperEntrabce .swiper-slide').find('.entrance-fontbox').stop();
      $('.js_swiperEntrabce .swiper-slide').eq(index).find('.entrance-fontbox').animate({ 'filter':'alpha(opacity=1)', '-moz-opacity':'1', '-khtml-opacity': '1', 'opacity': '1' }, 1000);
    },
    onInit: function (swiper){
      $('.js_swiperEntrabce .swiper-slide').show();
      
      $('.swiper-slide-active').next('.swiper-slide').addClass('temp-slide');
      var index = swiper.activeIndex;
      $('.js_swiperEntrabce .swiper-slide').find('.entrance-fontbox').stop();
      $('.js_swiperEntrabce .swiper-slide').eq(index).find('.entrance-fontbox').animate({ 'filter':'alpha(opacity=1)', '-moz-opacity':'1', '-khtml-opacity': '1', 'opacity': '1' }, 1000);
    },
    onImagesReady:function(swiper){
      $(window).scroll(function () {
        if (document.body.clientHeight + getScrollTop() > $('.index-entrance').offset().top + 400) {
          $('.js_entranceFlashBg').each(function(i,n){          
            if($('.js_entranceFlashBg').eq(i).attr('data-start')=='left'){
              $('.js_entranceFlashBg').eq(i).find('div').eq(0).animate({
                'right': 0
              },800,'swing',function(){
                $('.js_entranceFlashBg').eq(i).find('div').eq(1).hide();
                $('.js_entranceFlashBg').eq(i).animate({
                  'left': '100%'
                },300,function(){
                  $('.js_swiperEntrabce .swiper-slide .l-padding:first-child a img').css('box-shadow','0 0 20px #b9b7b7');
                });
              });
            }else{
              $('.js_entranceFlashBg').eq(i).children('div').eq(0).animate({
                'left': 0
              },800,'swing',function(){
                $('.js_entranceFlashBg').eq(i).children('div').eq(1).hide();
                $('.js_entranceFlashBg').eq(i).animate({
                  'right': '100%'
                },300,function(){
                  $('.js_swiperEntrabce .swiper-slide .l-padding:first-child a img').css('box-shadow','0 0 20px #b9b7b7');
                });
              });
            }
          });
        }
      });
    },
    onSwiperCreated: function(swiper){
      // 初始化分页器
      $('.js_entrancePageXs').find('span').each(function(i,n){
        var pageNum = '0'+''+(i+1);
        $(this).html(pageNum);
      });
      swiper.reInit();
    }
  });

  /**
   * 首页入口轮播hover停止自动
   */
  $('.js_swiperEntrabce').hover(function(){
    swiper.entrabceSwiper.stopAutoplay();
  }, function(){
    swiper.entrabceSwiper.startAutoplay();    
  });

  $('.js_swiperEntrabcePrev').on('click', function(e){
    e.preventDefault();
    swiper.entrabceSwiper.swipePrev();
  });
  $('.js_swiperEntrabceNext').on('click', function(e){
    e.preventDefault();
    swiper.entrabceSwiper.swipeNext();
  });

  //分页
  $('.js_entrancePage .page-num').on('hover',function(){
    var pageNum = parseInt($(this).attr('data-index'));
    swiper.entrabceSwiper.swipeTo(pageNum-1, 500, false);
  });
  $('.js_entrancePageMd .page-num').on('click',function(){
    var pageNum = parseInt($(this).attr('data-index'));
    swiper.entrabceSwiper.swipeTo(pageNum-1, 500, false);
  });



  swiper.entrabceSwiper.reInit();

  init();

  $(window).resize(function() {
    init();

    var screenWidth = document.body.offsetWidth;
    if (screenWidth <= 700) {
      swiper.entrabceSwiper.params.slidesPerView = 2;
      swiper.entrabceSwiper.params.watchActiveIndex = true;
      swiper.entrabceSwiper.params.updateOnImagesReady = true;
    } else {
      swiper.entrabceSwiper.params.slidesPerView = 1;
    }

    swiper.entrabceSwiper.reInit();


    if (screenWidth <= 991) {
      $(".js_bg").oBgCover().init();
    } else {
      swiper.bannerSwiper.params.slidesPerView = 1;
      swiper.bannerSwiper.params.onSlideChangeEnd = function(swiper){
        var index = swiper.activeLoopIndex;
        var indexPage = $('.js_bannerSwiperPage .page-num').size();
        var indexPage = $('.js_bannerSwiperPage .page-num').size();
        //文字
        $('.js_bannerSwiperFont').hide();
        $('.js_bannerSwiperFont').stop();
        $('.js_bannerSwiperFont').eq(index).fadeIn(500);
        //分页
        $('.js_bannerSwiperPage .page-num').removeClass('active');
        $('.js_bannerSwiperPage .page-num').eq(indexPage-1-index).addClass('active');
      };
      swiper.bannerSwiper.reInit();
    }
  });

  /**
   * 首页顶部轮播 pgaer 实践
   */

  function swiperPagerChange (ele) {
    var pageNum = ele.attr('data-index');
    swiper.bannerSwiper.swipeTo(pageNum-1, 1300, false);

    $('.js_bannerSwiperPage .page-num').removeClass('active');
    ele.addClass('active');

    $('.js_bannerSwiperFont').stop();
    $('.js_bannerSwiperFont').fadeOut();
    $('.js_bannerSwiperFont').eq(pageNum-1).fadeIn(100);
    $('.js_bannerSwiper').find('.js_recPic').each(function(i,n){
      $('.js_bannerSwiper').find('.js_recPic').eq(i).oPicture().init();
    });
  }

  /**
   * 首页动画svg
   */
  //svg动画
  var duration = 300,
  delay = 10,
  epsilon = (1000 / 60 / duration) / 4,
  firstCustomMinaAnimation = bezier(.42,.03,.77,.63, epsilon),
  secondCustomMinaAnimation = bezier(.27,.5,.6,.99, epsilon);

  //initialize the slider
  initSlider();
  function initSlider() {
    var sliderNavigation = $('.js_bannerSwiperPage').find('.page-num');

    sliderNavigation.on('click', function(event){
      swiper.bannerSwiper.stopAutoplay();
      event.preventDefault();
      sliderNavigation.off();
      var selectedItem = $(this);
      swiperPagerChange($(this));
      bannerFalsh(selectedItem);
      setTimeout(function(){
        initSlider();
        swiper.bannerSwiper.startAutoplay();
      }, 1000);
      
    });
  }

  //svg动画启动的方法，提取
  function bannerFalsh(selectedItem){
    var slider = $('.js_bannerSwiper'),
        sliderNavigation = $('.js_bannerSwiperPage').find('.page-num'),
        svgCoverLayer = $('.cd-svg-cover'),
        pathId = svgCoverLayer.find('path').attr('id'),
        svgPath = Snap('#'+pathId);
    
    var pathArray = [];
    pathArray[0] = svgCoverLayer.data('step1');
    pathArray[1] = svgCoverLayer.data('step6');
    pathArray[2] = svgCoverLayer.data('step2');
    pathArray[3] = svgCoverLayer.data('step7');
    pathArray[4] = svgCoverLayer.data('step3');
    pathArray[5] = svgCoverLayer.data('step8');
    pathArray[6] = svgCoverLayer.data('step4');
    pathArray[7] = svgCoverLayer.data('step9');
    pathArray[8] = svgCoverLayer.data('step5');
    pathArray[9] = svgCoverLayer.data('step10');  
    // if(selectedItem && !selectedItem.hasClass('selected')) {
      // if it's not already selected
      // var selectedSlidePosition = selectedItem.index(),
      var selectedSlidePosition = selectedItem?parseInt(selectedItem.attr('data-index')):10,
        selectedSlide = slider.children('li').eq(selectedSlidePosition),
        visibleSlide = slider.find('.visible'),
        visibleSlidePosition = swiper.bannerSwiper.activeIndex,
        direction = '';
      direction = ( swiper.bannerSwiper.activeIndex < swiper.bannerSwiper.previousIndex) ? 'prev': 'next';
      // updateSlide(visibleSlide, selectedSlide, direction, svgCoverLayer, sliderNavigation, pathArray, svgPath);
      updateSlide(direction, svgCoverLayer, sliderNavigation, pathArray, svgPath);
    // }
  }

  // function updateSlide(oldSlide, newSlide, direction, svgCoverLayer, sliderNavigation, paths, svgPath) {
  function updateSlide( direction, svgCoverLayer, sliderNavigation, paths, svgPath) {
    if( direction == 'next' ) {
      var path1 = paths[0],
        path2 = paths[2],
        path3 = paths[4];
        path4 = paths[6];
        path5 = paths[8];
    } else {
      var path1 = paths[1],
        path2 = paths[3],
        path3 = paths[5];
        path4 = paths[7];
        path5 = paths[9];
    }

    svgCoverLayer.addClass('is-animating');
    svgPath.attr('d', path1);
    svgPath.animate({'d': path2}, duration, firstCustomMinaAnimation, function(){
      svgPath.animate({'d': path3}, duration, secondCustomMinaAnimation, function(){
        // oldSlide.removeClass('visible');
        // newSlide.addClass('visible');
        // updateNavSlide(newSlide, sliderNavigation);
        setTimeout(function(){
          svgPath.animate({'d': path4}, duration, firstCustomMinaAnimation, function(){
            svgPath.animate({'d': path5}, duration, secondCustomMinaAnimation, function(){
              svgCoverLayer.removeClass('is-animating');
            });
          });
        }, delay);
      });
    });
  }

  function updateNavSlide(actualSlide, sliderNavigation) {
    var position = actualSlide.index();
    sliderNavigation.removeClass('selected').eq(position).addClass('selected');
  }

  function bezier(x1, y1, x2, y2, epsilon){
    //https://github.com/arian/cubic-bezier
    var curveX = function(t){
      var v = 1 - t;
      return 3 * v * v * t * x1 + 3 * v * t * t * x2 + t * t * t;
    };

    var curveY = function(t){
      var v = 1 - t;
      return 3 * v * v * t * y1 + 3 * v * t * t * y2 + t * t * t;
    };

    var derivativeCurveX = function(t){
      var v = 1 - t;
      return 3 * (2 * (t - 1) * t + v * v) * x1 + 3 * (- t * t * t + 2 * v * t) * x2;
    };

    return function(t){

      var x = t, t0, t1, t2, x2, d2, i;

      // First try a few iterations of Newton's method -- normally very fast.
      for (t2 = x, i = 0; i < 8; i++){
        x2 = curveX(t2) - x;
        if (Math.abs(x2) < epsilon) return curveY(t2);
        d2 = derivativeCurveX(t2);
        if (Math.abs(d2) < 1e-6) break;
        t2 = t2 - x2 / d2;
      }

      t0 = 0, t1 = 1, t2 = x;

      if (t2 < t0) return curveY(t0);
      if (t2 > t1) return curveY(t1);

      // Fallback to the bisection method for reliability.
      while (t0 < t1){
        x2 = curveX(t2);
        if (Math.abs(x2 - x) < epsilon) return curveY(t2);
        if (x > x2) t0 = t2;
        else t1 = t2;
        t2 = (t1 - t0) * .5 + t0;
      }

      // Failure
      return curveY(t2);

    };
  };
});




$(function() {
    //用户中心地址
    var userUrl = siteConfig.userUrl;
    //公共头检索WAS频道ID
    var headerChannelId = headerSearch.headerChannelId;
    //全文检索WAS频道ID
    var productChannelId = headerSearch.productChannelId;
    //屏幕宽度
    var screenWidth = document.body.offsetWidth;
    $('.js_searchHistory').css('color','#ccc');

    //非空判断
    function isEmpty(value) {
        if (value == null || value == undefined || value == "") {
            return true;
        }
        return false;
    }

    //过滤掉无法检索的符号
    function filterSymbol(word) {
        if (word != null || word != undefined) {
            word = word.replace(/<[^>]+>/g, "");
        }
        return word;
    }

    //搜索历史
    $('.js_searchHistory').bind('input propertychange', function () {
        if ($.trim($(this).val()) && $(this).val() != "搜索产品、服务、帮助...") {
            if (screenWidth > 1199) {
                $('.js_searchBox_xl').show();
            } else {
                $('.js_searchBox_lg').show();
            }
            $('.js_searchBoxQuick_lg').hide();
            $('.js_quick_search').hide();
            $('.js_searchBox_list_xl').hide();
            $('.js_search_list_bold').show();

            searchBoxWord($(this).val());
        } else {
            $('.js_searchBoxQuick_lg').show();
            $('.js_quick_search').show();
            $('.js_searchBox_list_xl').show();
            $('.js_search_list_bold').hide();
            $('.js_searchBox_list_lg').hide();

            $('.js_searchBox_list_xl').html(searchBoxInput("xl"));
            $('.js_searchBox_list_lg').html(searchBoxInput("lg"));
            deleteHistory();
        }

    }).on('focus', function () {
        if (screenWidth > 1199) {
            $('.js_searchBox_xl').show();
        } else {
            $('.js_searchBox_lg').show();
        }
        $('.js_searchBoxQuick_lg').hide();
        if ($.trim($(this).val()) && $(this).val() != "搜索产品、服务、帮助...") {
            $('.js_quick_search').hide();
            $('.js_searchBox_list_xl').hide();
            $('.js_search_list_bold').show();

            searchBoxWord($(this).val());
        } else {
            $('.js_searchBoxQuick_lg').show();
            $('.js_quick_search').show();
            $('.js_searchBox_list_xl').show();
            $('.js_search_list_bold').hide();
            $('.js_searchBox_list_lg').hide();

            $('.js_searchBox_list_xl').html(searchBoxInput("xl"));
            $('.js_searchBox_list_lg').html(searchBoxInput("lg"));
            deleteHistory();
        }
    });

    $('body').on('click', function (e) {
        if (!$(e.target).hasClass('js_userMsgXs')) {
            $('.js_usermsg_xs').hide();
        }
        //搜索历史浮层点击按钮确认
        if ($(e.target).hasClass('js_searchHistory')) {
            return false;
        }
        $('.js_searchBox').hide();
        $('.js_searchBoxQuick_lg').show();
        $('.js_delete_history').parent().hide();
    });

    //搜索--lg
    $('.js_search_lg').on('click', function () {
         $('.js_menuShow').removeClass('icon-close').addClass('icon-menu');
         $('.js_navMdShow').hide();
        $('.js_navSearchLgHide')
            .removeClass('o_lg-show')
            .removeClass('o_md-show')
            .removeClass('o_sm-show')
            .removeClass('o_xs-show');
        $('.js_navSearchLgHide').hide();
        $('.js_navSearchLg')
            .addClass('o_lg-show')
            .addClass('o_md-show')
            .addClass('o_sm-show')
            .addClass('o_xs-show');
        $('.js_navSearchLg').show();

    });

    //关闭搜索
    $('.js_navSearchClose').on('click', function () {

        $('.js_navSearchLg')
            .removeClass('o_lg-show')
            .removeClass('o_md-show')
            .removeClass('o_sm-show')
            .removeClass('o_xs-show');
        $('.js_navSearchLg').hide();

        $('.js_navSearchLgHide')
            .addClass('o_lg-show')
            .addClass('o_md-show')
            .addClass('o_sm-show')
            .addClass('o_xs-show');
        $('.js_navSearchLgHide').show();
        $('.js_navSearchLgHide.js_ignore').removeClass('o_lg-show').hide();

    });

    //点击搜索按钮全文搜索
    $('.js_jumpto_product_search').on('click', function () {
        jumpToProductSearch();
    });

    //回车键搜索
    $('.js_searchHistory').keydown(function (e) {
        if (e.which == 13) {
            jumpToProductSearch();
        }
    });

    //跳转至全文检索页面
    function jumpToProductSearch() {
        var historyCookie = $.cookie('historyCookie');
        var searchWord;
        if (screenWidth > 1199) {
            searchWord = $.trim($('.js_searchHistory').val());
        } else {
            searchWord = $.trim($('.js_searchHistory_lg').val());
        }

        if (!isEmpty(searchWord) && searchWord != "搜索产品、服务、帮助...") {
            if (isEmpty(historyCookie)) {
                $.cookie('historyCookie', searchWord, {path: '/'});
            } else {
                if (historyCookie.indexOf(",") == -1) {
                    if (historyCookie != searchWord) {
                        historyCookie += "," + searchWord;
                    }
                } else {
                    var historyCookieArr = historyCookie.split(",");
                    if ($.inArray(searchWord, historyCookieArr) == -1) {
                        if (historyCookieArr.length < 5) {
                            historyCookie += "," + searchWord;
                        } else {
                            historyCookieArr.shift();
                            historyCookieArr.push(searchWord);
                            historyCookie = "";
                            for (var i = 0; i < historyCookieArr.length; i++) {
                                historyCookie += "," + historyCookieArr[i];
                            }
                            historyCookie = historyCookie.substring(1);
                        }
                    }
                }
                $.cookie('historyCookie', historyCookie, {path: '/'})
            }
            searchWord = encodeURIComponent(searchWord);
            window.location.href = "http://image.tongshuai.com/was5/web/search?channelid=" + productChannelId + "&searchword=" + searchWord;
        }
    }

    //搜索框浮层检索
    function searchBoxWord(word) {
        var searchWord = filterSymbol(word);
        searchWord = $.trim(searchWord);
        if (!isEmpty(searchWord) && searchWord != "搜索产品、服务、帮助...") {
            searchWord = encodeURIComponent(searchWord);
            $.ajax({
                type: "GET",
                url: "/was5/web/search?channelid=" + headerChannelId + "&searchword=" + searchWord,
                dataType: "html",
                async: true,
                success: function (data) {
                    if (screenWidth > 1199) {
                        $('.js_search_list_bold').html(data);
                    } else {
                        $('.js_searchBox_list_lg').html(data);
                    }
                }
            });
        }
    }

        //搜索框浮层展示
    function searchBoxInput(webSize) {
        var historyCookie = $.cookie("historyCookie");
        historyCookie = filterSymbol(historyCookie);
        var searchBoxHtml = "";

        if (!isEmpty(historyCookie)) {
            $('.js_quick_search').hide();
            $('.js_delete_history').parent().show();
            if (historyCookie.indexOf(",") != -1) {
                var historyCookieArr = historyCookie.split(",");
                for (var i = 0; i < historyCookieArr.length; i++) {
                    searchBoxHtml += '<li><a href="http://image.tongshuai.com/was5/web/search?channelid=' + productChannelId + '&searchword=' + historyCookieArr[i] + '">' + htmlEncode(historyCookieArr[i]) + '</a></li>';
                }
            } else {
                searchBoxHtml = '<li><a href="http://image.tongshuai.com/was5/web/search?channelid=' + productChannelId + '&searchword=' + historyCookie + '">' + htmlEncode(historyCookie) + '</a></li>';
            }
        } else {
            $('.js_delete_history').parent().hide();
            if (webSize == "xl") {
                searchBoxHtml = '<li><a href = "http://image.tongshuai.com/service/installation_and_maintenance">在线报修</a></li>' +
                    // '<li><a href = "http://image.tongshuai.com/tongshuai/images/' + userUrl + '/product_registe">产品注册</a></li>' +
                    '<li><a href = "http://image.tongshuai.com/service/help">帮助中心</a></li>' +
                    '<li><a href = "http://image.tongshuai.com/contact">联系我们</a></li>';
            }
        }
        return searchBoxHtml;
    }

    //清空搜索历史
    function deleteHistory() {
        $(".js_delete_history").off().on('click', function () {
            $.cookie('historyCookie', null, {path: '/'});
        });
    }
    //html转义方法
    function htmlEncode(value) {
        return $('<div/>').text(value).html();
    }

});