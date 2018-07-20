// readyInit();
// document.trs_ready(function() {
var tem_third_glob_cook = get_ha_global_coo('_trs_uv'),
    tem_third_sess_cook = get_ha_global_coo('_trs_ua_s_1'),
    uid = get_ha_global_coo('_trs_user'),
    mpId = document.getElementById("_trs_glc_js_").getAttribute("data-mpId");
if (!uid) {
    uid = '';
}
var frequencyRed = new RegExp("(^| )" + 'h_trs_frequency_' + "([^;]*)(;|$)", "g");
var frequencyCookieArr = document.cookie.match(frequencyRed);
if (frequencyCookieArr) {
    for (var i = 0; i < frequencyCookieArr.length; i++) {
        var frequencyCookieItem = frequencyCookieArr[i].split('=');
        if (frequencyCookieItem[0].replace(/(^\s*)/g, "") != 'h_trs_frequency_' + mpId) {
            del_cookie(frequencyCookieItem[0])
        }
    }
}
var apiUrl = '//c.haier.com/overallCookie/global_cookie/visit?third_globCookie=' + tem_third_glob_cook + '&third_sessCookie=' + tem_third_sess_cook + '&mapId=' + mpId + '&uid=' + uid;
if (!get_ha_global_coo('h_trs_frequency_' + mpId)) {

    var ha_global_coo_timer_num = 0;
    var ha_global_coo_timer = setInterval(function() {

        tem_third_glob_cook = get_ha_global_coo('_trs_uv');
        tem_third_sess_cook = get_ha_global_coo('_trs_ua_s_1');
        uid = get_ha_global_coo('_trs_user');

        if (!uid) {
            uid = '';
        }

        apiUrl = '//c.haier.com/overallCookie/global_cookie/visit?third_globCookie=' + tem_third_glob_cook + '&third_sessCookie=' + tem_third_sess_cook + '&mapId=' + mpId + '&uid=' + uid;

        if (tem_third_sess_cook) {
            clearInterval(ha_global_coo_timer);
            include_gl_coo_js(apiUrl, tem_third_glob_cook, tem_third_sess_cook, mpId);
        } else {
            if (ha_global_coo_timer_num > 5) {
                clearInterval(ha_global_coo_timer);
                include_gl_coo_js(apiUrl, tem_third_glob_cook, tem_third_sess_cook, mpId);
            }
            ha_global_coo_timer_num += 1;
        }
    }, 500);

} else {
    try {
        ha_glob_coo_cb()
    } catch (err) {}
}
// });
function readyInit() {
    var ie = !!(window.attachEvent && !window.opera);
    var wk = /webkit\/(\d+)/i.test(navigator.userAgent) && (RegExp.$1 < 525);
    var fn = [];
    var run = function() {
        for (var i = 0; i < fn.length; i++) fn[i]();
    };
    var d = document;
    d.trs_ready = function(f) {
        if (!ie && !wk && d.addEventListener)
            return d.addEventListener('DOMContentLoaded', f, false);
        if (fn.push(f) > 1) return;
        if (ie)
            (function() {
                try {
                    d.documentElement.doScroll('left');
                    run();
                } catch (err) {
                    setTimeout(arguments.callee, 0);
                }
            })();
        else if (wk)
            var t = setInterval(function() {
                if (/^(loaded|complete)$/.test(d.readyState))
                    clearInterval(t), run();
            }, 0);
    };
}
function include_gl_coo_js(file, thirdglobal, thirdsession, mpId) {
    var _doc = document.getElementsByTagName('head')[0];
    var js = document.createElement('script');
    js.setAttribute('type', 'text/javascript');
    js.setAttribute('src', file);
    _doc.appendChild(js);

    if (! /*@cc_on!@*/ 0) { //if not IE
        //Firefox2、Firefox3、Safari3.1+、Opera9.6+ support js.onload
        js.onload = function() {
            if (_haier_gl_coo_ret_mess_.isSuccess) {
                ha_glob_cookie_visit(_haier_gl_coo_ret_mess_, thirdglobal, thirdsession, mpId);
            }
        };
    } else {
        //IE6、IE7 support js.onreadystatechange
        js.onreadystatechange = function() {
            if (js.readyState == 'loaded' || js.readyState == 'complete') {
                if (_haier_gl_coo_ret_mess_.isSuccess) {
                    ha_glob_cookie_visit(_haier_gl_coo_ret_mess_, thirdglobal, thirdsession, mpId);
                }
            }
        };

        return false;
    }
}
function get_ha_global_coo(name) {
    var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
    if (arr = document.cookie.match(reg)) {
        return unescape(arr[2]);
    } else {
        return null;
    }
}
function del_cookie(name) {
    var exp = new Date();
    name = name.replace(/(^\s*)/g, "");
    exp.setTime(exp.getTime() - 1);
    var cval = get_ha_global_coo(name);
    if (cval != null) {
        document.cookie = name + "=" + cval + ";path=/;expires=" + exp.toGMTString();
    }
}
function set_ha_global_coo(key, value, expiredays) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + expiredays);
    document.cookie = key + "=" + escape(value) + ';path=/' + ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString());
}
function ha_glob_cookie_visit(global_cookie, thirdglobal, thirdsession, mpId) {
    set_ha_global_coo('_h_cur_co_inv', global_cookie.cookie.g_cookie + "-" + global_cookie.cookie.s_cookie);
    if (thirdglobal) {
        set_ha_global_coo('h_trs_frequency_' + mpId, 1, (5 / 1440));
    }
    try {
        ha_glob_coo_cb()
    } catch (err) {}
}
function get_ha_final_g_cookie() {
    var tempCookie = get_ha_global_coo('_h_cur_co_inv');
    var cookieArray = tempCookie.split("-");
    return {
        g_cookie: cookieArray[0],
        s_cookie: cookieArray[1]
    };
}
