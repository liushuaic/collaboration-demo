var taqHome;
(function(){function na(){var a=l.getElementById("NewsPaperName"),b=l.getElementById("NewsEditionName"),c=l.getElementById("NewsEditionNumber"),g=l.getElementById("NewsArticleTitle"),d=l.getElementById("NewsArticleAuthor"),e=l.getElementById("NewsArticleID"),C=l.getElementById("NewsArticleTime");if(c||e)a&&(f.a_pn=s(a.innerHTML)),b&&(f.a_ea=s(b.innerHTML)),c&&(f.a_en=s(c.innerHTML)),g&&(a=s(g.innerHTML).replace(/<br.*?>/g," "),f.a_nt=a),d&&(f.a_ar=s(d.innerHTML)),e&&(f.a_id=s(e.innerHTML)),C&&(f.a_te=
s(C.innerHTML));f.title=v.title||""}function Ga(a){K||(r("user state returned."),K=!0,(D=String(a))&&"null"!=D&&"undefined"!=D?(Y("_trs_user",D,"/",null,P(v.domain)),f.uid=D):(a=P(v.domain),Y("_trs_user","","/",new Date(0),a)))}function oa(a){return null==a||void 0==a?!0:"string"!=typeof a?!1:0==s(a).length}function s(a){return a.replace(/^\s+|\s+$/gm,"")}function Ha(){var a="",b=document.getElementsByTagName("meta");try{if(0<b.length)for(var c=0;c<b.length;c++){var g=b[c],d=g.getAttribute("charset");
if(d){a=d;break}else{var e=g.getAttribute("http-equiv");if(e&&"content-type"==e.toLowerCase()){var f=g.content.split(";"),d=1<f.length?f[1].split("=")[1]:null;if(d){a=d;break}}}}}catch(u){r("fail to parse charset: "+u)}return a.toUpperCase()}function p(a,b){return null==a||void 0==a?a:s(a).length>b?a.substring(0,b-3)+"...":a}function Z(a){var b=l.cookie.indexOf(a+"=");if(-1==b)return null;b=b+a.length+1;a=l.cookie.indexOf(";",b);-1==a&&(a=l.cookie.length);return decodeURIComponent(l.cookie.substring(b,
a))}function pa(a,b,c,g,d){null==d||void 0==d||0==Q(d)?l.cookie=a+"="+encodeURIComponent(b)+"; path="+c+"; expires="+g:l.cookie=a+"="+encodeURIComponent(b)+"; path="+c+"; domain="+d+"; expires="+g}function Y(a,b,c,g,d){a=encodeURIComponent(a)+"="+encodeURIComponent(b);c&&(a+="; path="+c);g instanceof Date&&(a+="; expires="+g.toGMTString());d&&(a+="; domain="+d);l.cookie=a}function qa(a){if(oa(a)||"undefined"==a||"string"!=typeof a)return!0;if(24<a.length)return r("length="+a.length+": "+a),!0;var b=
/^[^_=]{1,5}_\d+_[^_=]{8,9}$/;return/^[^_=]{8,9}_\d+_[^_=]{1,5}$/.test(a)||b.test(a)?!1:(r(a+" not valid"),!0)}function ra(a){var b=parseInt(Math.floor(1E3*Math.random()+1)+""+Math.floor(1E3*Math.random()+1));return String((new Date).valueOf().toString(36).concat("_").concat(a).concat("_").concat(b.toString(36)))}function sa(a){var b=parseInt(Math.floor(1E3*Math.random()+1)+""+Math.floor(1E3*Math.random()+1));return String((a+"").concat("_").concat((new Date).valueOf().toString(36)).concat("_").concat(b.toString(36)))}
function Ia(a,b){var c=a.match(RegExp("(^|&|\\?|#)("+b+")=([^&#]*)(&|$|#)",""));return c?c[3]:"null"}function Ja(a){function b(){document.documentElement.scrollHeight!=g&&(c=document.documentElement.scrollWidth,g=document.documentElement.scrollHeight,$.postMessage({type:"contentSize",value:[c,g]}))}var c="",g="";a.data&&"taHeatShow"==a.data.type&&(ta||(ta=!0,G(window,"resize",b)),c=document.documentElement.scrollWidth,g=document.documentElement.scrollHeight,$.postMessage({type:"contentSize",value:[c,
g]}))}function r(a){if(window.console&&console.log)try{console.log(a)}catch(b){}}function Ka(){var a;try{return a=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7"),a.GetVariable("$version")}catch(b){}try{return a=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6"),version="WIN 6,0,21,0",a.AllowScriptAccess="always",a.GetVariable("$version")}catch(c){}try{return a=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3"),a.GetVariable("$version")}catch(g){}try{return new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3"),
"WIN 3,0,18,0"}catch(d){}try{return new ActiveXObject("ShockwaveFlash.ShockwaveFlash"),"WIN 2,0,0,11"}catch(e){return"-1"}}function La(){var a="Shockwave Flash ";if(navigator.plugins&&0<navigator.plugins.length){var b=navigator.plugins["Shockwave Flash"];if(!b)return"-1";try{if(void 0!=b.version)return b.version}catch(c){}b=b.description;return-1!=b.indexOf(a)?b.substring(a.length):b}for(var b=Ka().split(","),g="",a="WIN ",d=0,e=b.length;d<e;d++)-1!=b[d].indexOf(a)?(g+=b[d].substring(a.length),g+=
"."):d==e-1?g+=b[d]:(g+=b[d],g+=".");return g}function R(){var a=!f.uid&&!K&&3E3>(new Date).getTime()-ua;L||("true"!=va?(na(),L=!0):Q(v.title)?(na(),L=!0):L=!1);var b=!L&&3E3>(new Date).getTime()-wa;if(a||b)setTimeout(R,500);else{var a="",c;for(c in f)oa(f[c])||(""!=a&&(a+="&"),a+=c+"="+encodeURIComponent(f[c]));if(taqHome){xa=!0;try{aa=(new Date).getTime(),ya=f.mpId}catch(g){}(new Image(1,1)).src=taqHome+"/1.gif?"+a}else r("no _taq.home!")}}function za(a){a=H.timing;try{if(0>=parseInt(a.loadEventEnd))setTimeout(function(){za(f)},
50);else{var b=a.domainLookupEnd-a.domainLookupStart,c=a.connectEnd-a.connectStart,g=a.responseStart-a.requestStart,d=a.domContentLoadedEventStart-a.fetchStart,e=a.responseEnd-a.navigationStart,C=Ma();-1!==q.navigator.userAgent.indexOf("Chrome")&&(f.p_fp=-1,q.chrome&&(msFirstPaint=q.chrome.loadTimes().firstPaintTime,f.p_fp=0<=msFirstPaint?msFirstPaint:-1));-1!=navigator.appName.indexOf("Microsoft Internet Explorer")&&document.all&&(msFirstPaint=a.msFirstPaint-a.navigationStart,f.p_fp=0<=msFirstPaint?
msFirstPaint:-1);requestType=H.navigation.type;var u=a.loadEventEnd-a.navigationStart;f.p_d=0<=b?b:-1;f.p_ct=0<=c?c:-1;f.p_st=0<=g?g:-1;f.p_nt=0<=e?e:-1;f.p_tt=0<=u?u:-1;f.p_dr=0<=d?d:-1;f.p_rt=requestType;f.p_c=0;f.p_tajs=0<=C?Math.floor(C):-1;1===requestType&&(f.p_c=0);0===a.requestStart&&(f.p_c=1);a.connectStart===a.connectEnd&&(f.p_c=1);if("getEntriesByType"in H&&H.getEntriesByType("resource")instanceof Array){var k=H.getEntriesByType("resource");f.p_rc=k.length}R()}}catch(h){}}function Ma(){var a=
0;try{var b=l.getElementById("_trs_ta_js").src,c=q.performance.getEntriesByName(b);0<c.length&&(a=c[0].duration)}catch(g){}return a}function Na(a){var b=a.getAttribute("data-trs-ta-event-key");if(null==b||"undefined"==b||""==b||"null"==b){for(;(a=a.parentNode)&&1==a.nodeType;)if(b=a.getAttribute("data-trs-ta-event-key"),null!=b&&"undefined"!=b&&""!=b&&"null"!=b)return a;return null}return a}function Q(a){return"string"!=typeof a?!1:0<a.length}function x(a){return null==a||"undefined"==a||""==a||"null"==
a?a:a.replace(/\t/g," ").replace(/(^\s*)|(\s*$)/g,"").replace(/[\r\n]/g," ")}function ba(a){return null==a||"undefined"==a||""==a||"null"==a?a:a.replace(/(^\s*)|(\s*$)/g,"")}function k(a,b,c){null!=c&&"undefined"!=c&&""!=c&&"null"!=c&&(a+="&"+b+"="+c);return a}function M(){if("spa"==ca){var a=p(document.URL,1024);return p(encodeURIComponent(a),1024)}return p(encodeURIComponent(N),1024)}function da(a,b,c){var g=b.getAttribute("href"),d=g?g.match(/^#/):!1,e=d?g:b.href,e=p(e,255),C=p(b.id,255),g=p(x(b.innerText),
255);c&&c.elemText&&(g=p(x(c.elemText),255));g||(g=ea(b));c=p(b.type,255);var u=p(b.name,255);b=p(b.target,255);a=k(a,"mpId",ya);a=k(a,"cs",f.cs);a=k(a,"cu",f.cu);a=k(a,"pv",f.pv);a=k(a,"e_id",C);a=k(a,"url",M());if(Q(e)&&(a=k(a,"e_tu",encodeURIComponent(e)),!d)){var h,e=ba(e);0==e.indexOf("http")||0==e.indexOf("https")?(d=e.substring(0,e.indexOf("://")),e=e.substring(e.indexOf("://")+3),-1<e.indexOf("/")?h=e.substring(0,e.indexOf("/")):h=e):0==e.indexOf("//")?(d=null,e=e.substring(e.indexOf("//")+
2),-1<e.indexOf("/")?h=e.substring(0,e.indexOf("/")):h=e):-1<e.indexOf(":")?(d=e.substring(0,e.indexOf(":")),h=null):(d=null,h=parseDomain2(document.URL));a=k(a,"e_td",encodeURIComponent(h));a=k(a,"e_tp",encodeURIComponent(d))}a=k(a,"e_tt",c);a=k(a,"e_tx",encodeURIComponent(g));a=k(a,"e_en",u);return a=k(a,"e_ht",b)}function fa(a){var b,c;b=Math.floor(a.pageX);c=Math.floor(a.pageY);var g=window.innerWidth||document.documentElement.clientWidth||document.body.offsetWidth;isNaN(b)&&(c=Math.max(document.documentElement.scrollTop,
document.body.scrollTop),b=Math.max(document.documentElement.scrollLeft,document.body.scrollLeft),c=Math.floor(a.clientY+c),b=Math.floor(a.clientX+b));return{x:b,y:c,z:Math.floor(b-g/2)}}function Oa(a){var b={flag:!1};for(a;a&&1==a.nodeType;a=a.parentNode)if(a.getAttribute("href")){b.anchorEle=a;b.anchorText=function(){if("area"==a.nodeName.toLowerCase()){var c=a.parentNode,b=c.name||c.id,c=function(){for(var a=null,c=document.getElementsByTagName("img"),d=0;d<c.length;d++)if(c[d].getAttribute("usemap")==
"#"+b){a=c[d];break}return a}();return ea(c)}c=p(x(Aa(a)),19);if(0<c.length)return c;c=p(x(a.title),19);if(0<c.length)return c;var d;return(c=function(){for(var c="",b=a.childNodes,g=0;g<b.length;g++)if(1==b[g].nodeType&&(d||(d=b[g]),"img"==b[g].nodeName.toLowerCase())){c=b[g];break}return c}())?ea(c):d?d.nodeName.toLowerCase()+" "+p(x(Aa(d)),19):""}();b.flag=!0;break}return b}function ea(a){if(!a)return"";var b=a.getAttribute("alt")?ba(a.getAttribute("alt")):"",c=a.getAttribute("title")?ba(a.getAttribute("title")):
"";a=a.getAttribute("src")?a.getAttribute("src"):"";return p(x(b?b:c?c:a),25)}function Aa(a){return a?"string"==typeof a.textContent?a.textContent:a.innerText:""}function Pa(a){if(document!=(a.target||a.srcElement)){var b=Na(a.target||a.srcElement);if(null!=b){var c=b.tagName.toLowerCase();if("a"==c||"input"==c||"button"==c){var g=p(b.getAttribute("data-trs-ta-event-key"),255),d=p(b.getAttribute("data-trs-ta-event-type"),255),e=p(x(b.getAttribute("data-trs-ta-event-itemtype")),255),f=p(x(b.getAttribute("data-trs-ta-event-item")),
255),u=p(x(b.getAttribute("data-trs-ta-event-itemname")),255),l,n,q;q=fa(a);l=q.x;n=q.y;q=q.z;var v=a.type;m=da(m,b);m=k(m,"t_k",encodeURIComponent(g));m=k(m,"t_t",encodeURIComponent(d));m=k(m,"t_it",encodeURIComponent(e));m=k(m,"t_i",encodeURIComponent(f));m=k(m,"t_in",encodeURIComponent(u));m=k(m,"x",l);m=k(m,"y",n);m=k(m,"x2",q);m=k(m,"e_tn",c);m=k(m,"e_et",v);(new Image(1,1)).src=m;m=Ba}}b=a.target||a.srcElement;if(null!=b&&(e=p(b.tagName.toLowerCase(),255),d=fa(a),c=d.x,g=d.y,d=d.z,f=Ca.collectable(b),
u=Oa(b),l="a"==e||"input"==e||"button"==e,"a"!=e&&"input"!=e&&"button"!=e&&(I=""==I?"{"+c+","+g+","+d+"}":I+(";{"+c+","+g+","+d+"}"),ga()),l||f)){u.flag?(h=da(h,u.anchorEle,{elemText:u.anchorText}),e=p(u.anchorEle.tagName.toLowerCase(),255),h=k(h,"e_tn",e),h=k(h,"e_iac","1")):(h=da(h,b),h=k(h,"e_tn",e),h=k(h,"e_iac","0"));e=p(a.type,255);f="";u=0;try{var t=Da.readXPath(b),s=new Da.Base64,f=encodeURIComponent(s.encode(t));0!=aa&&(u=Math.floor(((new Date).getTime()-aa)/1E3))}catch(w){r("someting wrong for getting element xPath"),
r(w)}h=k(h,"e_et",e);h=k(h,"e_nd",f);h=k(h,"e_etd",u);h=k(h,"x",c);h=k(h,"y",g);h=k(h,"x2",d);if(isNaN(c))try{h=k(h,"p_err",JSON.stringify({isPage:a.pageX,isClient:a.clientX,isScroll:document.documentElement.scrollTop,isBodyScroll:document.body.scrollTop}))}catch(y){}(new Image(1,1)).src=h;h=J+"&clicktype=2"}s=fa(a);a=s.x;t=s.y;s=s.z;""==E?(E="{x:"+a+",y:"+t+"}",O="{z:"+s+",y:"+t+"}"):(E+=",{x:"+a+",y:"+t+"}",O+=",{z:"+s+",y:"+t+"}");ha()}}function Qa(){ga();ha()}function ga(){""!=I&&(S+="&pa=["+
I+"]",I="",(new Image(1,1)).src=S+"&pv="+f.pv,S=J+"&clicktype=1&url="+M())}function ha(){""!=E&&(w+="&br="+ia+"*"+ja,w+="&pa=["+E+"]",w+="&pb=["+O+"]",O=E="",(new Image(1,1)).src=w,w=J+"&clicktype=3&url="+M())}function P(a){for(var b="http://net.haier.com/c/js/.com.cn .net.cn .org.cn .gov.cn .edu.cn .ac.cn .mil.cn .ah.cn .bj.cn .cq.cn .fj.cn .gd.cn .gs.cn .gz.cn .gx.cn .ha.cn .hb.cn .he.cn .hi.cn .hl.cn .hn.cn .jl.cn .js.cn .jx.cn .ln.cn .nm.cn .nx.cn .qh.cn .sc.cn .sd.cn .sh.cn .sn.cn .sx.cn .tj.cn .xj.cn .xz.cn .yn.cn .zj.cn .hk.cn .mo.cn .tw.cn .com .cn .net .cc .org .tv .edu .mil .info .mobi .biz .pro .travel .museum .int .areo .post .rec".split(" "),
c="",g=0;g<b.length;g++)if(c=b[g],-1!=a.indexOf(c)){a=a.replace(c,"");a=a.substring(a.lastIndexOf(".")+1,a.length);a+=c;break}return a}function G(a,b,c){a.attachEvent?a.attachEvent("on"+b,c):a.addEventListener&&a.addEventListener(b,c,!1)}function Ra(){var a=function(){return{Base64:function(){_keyStr="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";this.encode=function(a){var b="",d,e,f,h,k,l,m=0;for(a=_utf8_encode(a);m<a.length;)d=a.charCodeAt(m++),e=a.charCodeAt(m++),f=a.charCodeAt(m++),
h=d>>2,d=(d&3)<<4|e>>4,k=(e&15)<<2|f>>6,l=f&63,isNaN(e)?k=l=64:isNaN(f)&&(l=64),b=b+_keyStr.charAt(h)+_keyStr.charAt(d)+_keyStr.charAt(k)+_keyStr.charAt(l);return b};this.decode=function(a){var b="",d,e,f,k,h,l=0;for(a=a.replace(/[^A-Za-z0-9\+\/\=]/g,"");l<a.length;)d=_keyStr.indexOf(a.charAt(l++)),e=_keyStr.indexOf(a.charAt(l++)),k=_keyStr.indexOf(a.charAt(l++)),h=_keyStr.indexOf(a.charAt(l++)),d=d<<2|e>>4,e=(e&15)<<4|k>>2,f=(k&3)<<6|h,b+=String.fromCharCode(d),64!=k&&(b+=String.fromCharCode(e)),
64!=h&&(b+=String.fromCharCode(f));return b=_utf8_decode(b)};_utf8_encode=function(a){a=a.replace(/\r\n/g,"\n");for(var b="",d=0;d<a.length;d++){var e=a.charCodeAt(d);128>e?b+=String.fromCharCode(e):(127<e&&2048>e?b+=String.fromCharCode(e>>6|192):(b+=String.fromCharCode(e>>12|224),b+=String.fromCharCode(e>>6&63|128)),b+=String.fromCharCode(e&63|128))}return b};_utf8_decode=function(a){for(var b="",d=0,e=c1=c2=0;d<a.length;)e=a.charCodeAt(d),128>e?(b+=String.fromCharCode(e),d++):191<e&&224>e?(c2=a.charCodeAt(d+
1),b+=String.fromCharCode((e&31)<<6|c2&63),d+=2):(c2=a.charCodeAt(d+1),c3=a.charCodeAt(d+2),b+=String.fromCharCode((e&15)<<12|(c2&63)<<6|c3&63),d+=3);return b}},readXPath:function(a){if(""!==a.id)return"//*[@id='"+a.id+"']";for(var b=0,d=a.parentNode,e=a.parentNode.childNodes,f=0,k=e.length;f<k;f++){var h=e[f];if(h==a)return d==document.body?a.tagName.toLowerCase()+(1==b+1?"":"["+(b+1)+"]"):arguments.callee(a.parentNode)+"/"+a.tagName.toLowerCase()+(1==b+1?"":"["+(b+1)+"]");1==h.nodeType&&h.tagName==
a.tagName&&b++}},indexOf:function(a,b){if(null!=Array.prototype.indexOf)return a.indexOf(b);for(var d=0;d<a.length;d++)if(a[d]===b)return d;return-1}}}(),b=["TEXTAREA","HTML","BODY"];return{tools:a,collectable:function(c){if(c==document||!c)return!1;c=c.tagName.toUpperCase();return-1<a.indexOf(b,c)?!1:!0}}}function ka(a){if(xa){ga();ha();var b=a.oldURL;a=a.newURL;f.pv=sa(f.mpId);f.title=v.title||"";f.url=a||"";f.refer=b||"";R()}}var f={},q=window;if(!q["ta.js"/*tpa=http://net.haier.com/c/js/ta.js*/]){q["ta.js"/*tpa=http://net.haier.com/c/js/ta.js*/]=!0;var T=q.location.hash.substring(1),
T=Ia(T,"heatShow");q.TA17Obj={};var Sa=q.TA17Obj,l=document,t=!1,y=Ha(),z=(l.characterSet?l.characterSet:l.charset).toUpperCase();f.bc=z;if(Q(y)){f.mc=y;var Ea=/^GB/;if(!(y==z||Ea.test(y)&&Ea.test(z))){r("meta charset is different from browser charset, return.");return}}try{t=l.domain==top.document.domain}catch(Ta){r("unable check top.document.domain: "+Ta)}var v=t?top.document:l;f.domain=v.domain||"";q&&q.screen&&(f.sh=q.screen.height||0,f.sw=q.screen.width||0,f.cd=q.screen.colorDepth||0);if(t=l.getElementById("gscrumb"))f.gc=
s(t.innerHTML);var va=!1,wa,L=!1,ca=null,t=null;if("undefined"!=typeof _taq){taqHome=_taq.home;for(var n in _taq)switch(_taq[n][0]){case "_mpId":f.mpId=_taq[n][1];break;case "_setUID":_taq[n][1]&&""!=_taq[n][1]&&(f.uid=_taq[n][1])}}else{y=l.getElementById("_trs_ta_js");if(!y){r("not found _trs_ta_js script element, so just return!");return}z=y.src.split("?")[1].split("&");for(n in z)try{var F=z[n].split("=")[0],U=z[n].split("=")[1];"mpid"==F?f.mpId=U:"waitTitle"==F?va=U:"siteType"==F?ca=U:"cPrefix"==
F&&(t=U,/^(http(s)?:)?\/\//.test(t)||(t="//"+t))}catch(Ua){r("fail and skip, i="+n+", myselfSrcParamArray="+z)}taqHome=t?t:y.src.split("/js/")[0]}wa=(new Date).getTime();var D=Z("_trs_user"),ua,K=!1;if(D)f.uid=D,r("get user id from cookie");else if("undefined"!=typeof window.TA17Callbacks_getAndSendLoginUser){ua=(new Date).getTime();try{r("start to get user id"),window.TA17Callbacks_getAndSendLoginUser(Ga)}catch(Va){r("no valid method for getting user was provided."),K=!0}}else r("no valid method for getting user was provided."),
K=!0;Sa.clearLoginUser=function(){var a=P(v.domain);Y("_trs_user","","/",new Date(0),a)};var A,B;f.pv=sa(f.mpId);0<l.cookie.length&&(A=Z("_trs_ua_s_1"),B=Z("_trs_uv"));qa(A)&&(n=A,A=ra(f.mpId),r("sessionCookie expired: "+n+", so create new: "+A));qa(B)&&(n=B,B=ra(f.mpId),r("UVCookie expired: "+n+", so create new: "+B));n=new Date;n.setDate(n.getDate()+730);F=P(v.domain);pa("_trs_uv",B,"/",n.toGMTString(),F);r("set UVCookie topLevelDomain: "+F+", _trs_uv="+B);n=new Date;n.setMinutes(n.getMinutes()+
30);pa("_trs_ua_s_1",A,"/",n.toGMTString());r("set sessionCookie: _trs_ua_s_1="+A);f.cs=A||"";f.cu=B||"";f.title=v.title||"";f.url=v.URL||"";f.refer=v.referrer||"";if(1==T){var V=document.createElement("iframe"),la;la=document.referrer&&"function"==typeof document.referrer.indexOf&&0<=document.referrer.indexOf("/console/heatmap")?document.referrer.slice(0,document.referrer.indexOf("/console/heatmap")):taqHome;var ma=document.documentElement.scrollWidth,W=document.documentElement.scrollHeight,X=0;
V.src=la+"/agent.html#"+ma+"*"+W;document.body.appendChild(V);V.style.display="none";var Fa=function(){document.documentElement.scrollHeight!=W?(X=0,ma=document.documentElement.scrollWidth,W=document.documentElement.scrollHeight,V.src=la+"/agent.html?random="+Math.random()+"#"+ma+"*"+W):3>=X?(X++,setTimeout(Fa,1E3)):X=0};G(window,"resize",Fa);T=0}var $={listenMessage:function(a){G(window,"message",a)},postMessage:function(a){try{window.parent.postMessage(a,"*")}catch(b){r(b.message)}}},ta=!1;$.listenMessage(Ja);
navigator&&(f.lang=navigator.language||navigator.browserLanguage||"",f.fl=La(),f.je=navigator.javaEnabled()?1:0,f.ce=navigator.cookieEnabled?1:0);var H=q.performance;H?za(f):R();var aa=0,ya=0,xa=!1;/msie (\d+\.\d+)/i.test(navigator.userAgent);var Ba=taqHome+"/1.gif?event=click&sr="+screen.width+"*"+screen.height+"&url="+encodeURIComponent(document.URL),m=Ba,ia=0,ja=0;document.all||document.captureEvents(Event.MOUSEMOVE);var ia=document.documentElement&&document.documentElement.scrollWidth||document.body&&
document.body.scrollWidth||0,ja=document.documentElement&&document.documentElement.scrollHeight||document.body&&document.body.scrollHeight||0,N=p(document.URL,1024);0<N.indexOf("#")&&(N=N.substring(0,N.indexOf("#")));var J=taqHome+"/1.gif?event=mousedown&sr="+screen.width+"*"+screen.height+"&br="+ia+"*"+ja,S=J+"&clicktype=1&url="+M(),h=J+"&clicktype=2",w=J+"&clicktype=3&url="+M(),I="",E="",O="",Ca=Ra(),Da=Ca.tools;G(document,"mouseup",Pa);G(window,"unload",Qa);"spa"==ca&&"onhashchange"in window.document.body&&
G(window,"hashchange",function(a){clearTimeout(ka.timeoutId);ka.timeoutId=setTimeout(function(){ka(a)},500)})}})();