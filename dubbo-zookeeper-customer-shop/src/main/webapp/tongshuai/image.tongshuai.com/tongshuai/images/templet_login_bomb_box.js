/**========================================================
 * @author Norman
 *
 * 登录弹层共同方法
 * */
//====================登录开始===================================
//返回路径
var returnUrl = window.location.href;
var regFrom = 'tongshuai';
var wxAppName = 'tongshuai';
var openId = '';
var wxId = '';

$(function () {

    //键盘监听事件
    document.onkeydown = function (event) {
        event = window.event || event;
        if (event.keyCode == 13) {//如果取到的键值是回车
            var js_loginType_pc = $(".usual-login-select").hasClass("cur");
            var js_loginType_phone = $(".mobile-login-select").hasClass("cur");
            if (js_loginType_pc && !js_loginType_phone) {
                $("#loginBtn").click();
            }
            if (!js_loginType_pc && js_loginType_phone) {
                $("#loginBtn2").click();
            }
        }
    }
    //======================参数校验===========
    /*$("#pwd").parent().validPassword();*/

    $("#loginName,#pwd,#sysCode").blur(function () {
        checkLoginForm1();
    });

    $("#loginName,#pwd,#sysCode").focus(function () {
        var id = $(this).attr("id")
        checkLoginForm1(id);
    });

    $("#mobile,#sysCode2,#mobileCode").blur(function () {
        checkLoginForm2();
    });
    $("#mobile,#sysCode2,#mobileCode").focus(function () {
        var id = $(this).attr("id")
        checkLoginForm2(id);
    });

    $("#sysCode2").keyup(function () {
        var mobile = $.trim($("#mobile").val());
        if (checkFormatIsRight("mobile", mobile)) {
            var sysCode2 = $.trim($("#sysCode2").val());
            if (4 == sysCode2.length) {
                if (checkSysCode(sysCode2)) {
                    $("#sendCodeBtn").removeClass("l-btn-disable");
                     $("#sysCode2_error").validHideError();
                } else {
                    $("#sendCodeBtn").addClass("l-btn-disable");
                }
            } else {
                $("#sendCodeBtn").addClass("l-btn-disable");
            }
        } else {
            $("#sendCodeBtn").addClass("l-btn-disable");
        }
    });

    /**
     * 手机验证码校验
     */
    $("#mobileCode").keyup(function () {
        var mobile = $.trim($("#mobile").val());
        if (checkFormatIsRight("mobile", mobile)) {
            var mobileCode = $.trim($("#mobileCode").val());
            if (6 == mobileCode.length && $('#sysCode2_error > i').length == 0) {
                $("#loginBtn2").removeClass("l-btn-disable")
            } else {
                $("#loginBtn2").addClass("l-btn-disable");
            }
        } else {
            $("#loginBtn2").addClass("l-btn-disable");
        }
    });
    //,#exchange
    $("#verifyCode").click(function () {
        getValidateCode("verifyCode");
    });
    //,#exchange2
    $("#verifyCode2").click(function () {
        getValidateCode("verifyCode2");
    });

    $("#loginName,#pwd,#sysCode").keyup(function () {
        var valueInput1 = false;
        var value1 = $.trim($("#loginName").val());
        var valuePh1 = $.trim($("#loginName").attr("ph"));
        if (!isNull(value1) && value1 != valuePh1) {
            valueInput1 = true;
        }

        var valueInput2 = false;
        var value2 = $.trim($("#pwd").val());
        var valuePh2 = $.trim($("#pwd").attr("ph"));
        if (!isNull(value2) && value2 != valuePh2) {
            valueInput2 = true;
        }

        var valueInput3 = false;
        if (!$("#sysCode").parent().parent().hasClass("verification-code-hide")) {
            var value3 = $.trim($("#sysCode").val());
            var valuePh3 = $.trim($("#sysCode").attr("ph"));
            if (!isNull(value3) && value3.length == 4 && value3 != valuePh3) {
                valueInput3 = true;
            }
        } else {
            valueInput3 = true;
        }
        if (valueInput1 && valueInput2 && valueInput3) {
            $("#loginBtn").removeClass("l-btn-disable");
        } else {
            $("#loginBtn").addClass("l-btn-disable");
        }
    });

    $("#loginBtn,#loginBtn2").click(function () {
        $(this).parent().find("input").validHideError();
        if (!$(this).hasClass("l-btn-disable")) {
            var id = $.trim($(this).attr("id"));
            if ("loginBtn" == id) {
                usualLogin(returnUrl);
            } else {
                mobileLogin(returnUrl);
            }
        }
    });

    /**
     * 手机验证码获取
     */
    $("#sendCodeBtn").click(function () {
        if (!$(this).hasClass("l-btn-disable")) {
            if ($('#sendCodeBtn').text() == '重新发送') {
                if ($('#sendCodeBtn').attr('resend') == 1) {
                    getSmsValidateCode();
                    $('#sendCodeBtn').attr('resend', '0');
                    return;
                }
                $('#sendCodeBtn').attr('resend', '1');
                getValidateCode("verifyCode2");
                $('#sendCodeBtn').addClass("l-btn-disable");
                $("#mobileCode_error").validHideError();
                $("#sysCode2_error").validShowError("图形验证码有误，请重新输入");
                return;
            } else {
                getSmsValidateCode();
                return;
            }

        }
    });

    $('.js_loginType').on('click', function () {
        //var phoneType = $(this);
        getValidateCode("verifyCode");
        getValidateCode("verifyCode2");
    });

    //===================参数校验结束=============

});

/**
 * 监测样式+=======用户名密码登录
 */
function checkLoginForm1(domId) {
    var value1 = $.trim($("#loginName").val());
    var valuePh1 = $.trim($("#loginName").attr("ph"));
    if (isNull(value1) || value1 == valuePh1) {
        if (isNull(domId)) {
            $("#loginName_error").validShowError("请输入账号");
        }
        return;
    } else {
        $("#loginName_error").validHideError();
    }

    var value2 = $.trim($("#pwd").val());
    var valuePh2 = $.trim($("#pwd").attr("ph"));
    if (isNull(value2) || value2 == valuePh2) {
        if (isNull(domId)) {
            $("#pwd_error").validShowError("请输入密码");
        }
        return;
    } else {
        $("#pwd_error").validHideError();
    }

    if (!$("#sysCode").parent().parent().hasClass("verification-code-hide")) {
        var value3 = $.trim($("#sysCode").val());
        var valuePh3 = $.trim($("#sysCode").attr("ph"));
        if (isNull(value3) || value3 == valuePh3) {
            if (isNull(domId)) {
                $("#sysCode_error").validShowError("请输入图形验证码");
            }
            return;
        } else {
            $("#sysCode_error").validHideError();
        }
    }
}

/**
 * 监测样式======动态登录
 */
function checkLoginForm2(domId) {
    var value1 = $.trim($("#mobile").val());
    var valuePh1 = $.trim($("#mobile").attr("ph"));
    if (isNull(value1) || value1 == valuePh1) {
        if (isNull(domId)) {
            $("#mobile_error").validShowError("请输入手机号");
            $("#sysCode2_error").validHideError();
            $("#mobileCode_error").validHideError();
        }
        return;
    } else {
        if (!checkFormatIsRight("mobile", value1)) {
            $("#mobile_error").validShowError("手机号格式不正确，请重新输入");
            $("#sysCode2_error").validHideError();
            $("#mobileCode_error").validHideError();
            return;
        } else {
            $("#mobile_error").validHideError();
        }
    }

    var value2 = $.trim($("#sysCode2").val());
    var valuePh2 = $.trim($("#sysCode2").attr("ph"));
    if (isNull(value2) || value2 == valuePh2) {
        if (isNull(domId)) {
            $("#sysCode2_error").validShowError("请输入图形验证码");
            $("#mobileCode_error").validHideError();
        }
        return;
    } else {
        if (checkSysCode(value2)) {
            $("#sysCode2_error").validHideError();
            if ($('#sendCodeBtn').attr("sendSecs") != '1') {
                $('#sendCodeBtn').removeClass('l-btn-disable');
            }
            return;
        } else {
            $("#sysCode2_error").validShowError("图形验证码有误，请重新输入");
            $("#mobileCode_error").validHideError();
            return;
        }
    }

}


/**
 * 普通登录
 */
function usualLogin(returnUrl) {

    var userName = $.trim($("#loginName").val());
    var password = $.trim($("#pwd").val());
    var verifyCode = $.trim($("#sysCode").val());
    var verifyCodePh = $.trim($("#sysCode").attr("ph"));
    if (isNull(verifyCode) || verifyCode == verifyCodePh) {
        verifyCode = "";
    }
    //var regFrom = "";
    $.ajax({
        type: "post",
        dataType: "text",
        url: siteConfig.domain + "/ids/ts/do_loginAjax.jsp",
        data: {
            'userName': userName,
            'password': password,
            'verifyCodes': verifyCode,
            /*'autoLogin': autoLogin,*/
            'regFrom': regFrom
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#pwd_error").validShowError("系统开了个小差，请稍后再试~");
        },
        success: function (returnData) {
            var errorMsg = "";
            var resultData = $.trim(returnData);
            if (resultData.indexOf("ok") > -1) {
                window.location.href = returnUrl;
                return;
            } else if (resultData.indexOf("need_activate") > -1) {
                //非法登录，需要验证
                window.location.href = "http://image.tongshuai.com/ids/ts/login_validate.jsp?regFrom=" + regFrom + "&returnUrl=" + returnUrl + "&openId=" + openId + "&wxId=" + wxId + "&wxAppName=" + wxAppName;
                return;
            } else if (resultData.indexOf("need_verifyCode") > -1) {
                $("#sysCode").parent().parent().removeClass("verification-code-hide");
                errorMsg = "请输入图形验证码";
                getValidateCode("verifyCode");
                $("#sysCode_error").validShowError(errorMsg);
                $('#loginBtn').addClass('l-btn-disable');
                return;
            } else if (resultData.indexOf("该用户尚未激活") > -1) {//后台停用
                errorMsg = "账号或密码不正确，请重新输入";
            } else if (resultData.indexOf("account_locked") > -1) {//后台停用
                //errorMsg = "您的账号已锁定，请联系管理员";
                errorMsg = "您的账户可能存在安全风险，请稍后重试！";
            } else if (resultData.indexOf("show;") > -1) {
                $("#sysCode").parent().parent().removeClass("verification-code-hide");
                getValidateCode("verifyCode");
                if (resultData.indexOf("wrong_verifyCode") > -1) {
                    errorMsg = "图形验证码有误，请重新输入";
                    //refreshVerifyCode("verifyCode");
                    $("#sysCode_error").validShowError(errorMsg);
                    $('#loginBtn').addClass('l-btn-disable');
                    return;
                } else if (resultData.indexOf("用户名或密码错误") > -1) {
                    errorMsg = "账号或密码不正确，请重新输入";
                } else if (resultData.indexOf("重试密码次数超出限制") > -1) {
                    errorMsg = "密码错误次数超出限制，账户暂被锁定，一小时后重试";
                } else {
                    errorMsg = "账号或密码不正确，请重新输入";
                }
            } else if (resultData.indexOf("用户名或密码错误") > -1) {
                errorMsg = "账号或密码不正确，请重新输入";
            } else if (resultData.indexOf("重试密码次数超出限制") > -1) {
                errorMsg = "密码错误次数超出限制，账户暂被锁定，一小时后重试";
            } else if (resultData.indexOf("身份服务器提示信息") > -1) {
                errorMsg = "操作太频繁，请24小时后重试";
            } else if (returnData.indexOf('attack') > -1) {//防Dos攻击
                errorMsg = "操作太频繁，请2小时后重试";
            } else {
                errorMsg = "账号或密码不正确，请重新输入";
            }
            $("#pwd_error").validShowError(errorMsg);
            $('.js-landUserPassBtn').addClass('l-btn-disable');

        }
    });

}

/**
 * 手机端动态登录
 *
 */
function mobileLogin(returnUrl) {
    var mobile = $.trim($("#mobile").val());
    var mobileCode = $.trim($("#mobileCode").val());
    var valuePh3 = $.trim($("#mobileCode").attr("ph"));
    if (isNull(mobileCode) || mobileCode == valuePh3) {
        $("#mobileCode_error").validShowError("请输入动态密码");
        return;
    } else {
        if (mobileCode.length != 6) {
            $("#mobileCode_error").validShowError("动态密码有误，请重新输入");
            return;
        } else {
            $("#mobileCode_error").validHideError();
        }
    }


    $.ajax({
        type: "post",
        dataType: "text",
        url: siteConfig.domain + "/ids/ts/do_loginAndSendCode.jsp",
        data: {
            'mobile': mobile,
            'verifyCode': mobileCode,
            'operation': 'login',
            "wxAppName": wxAppName,
            "openId": openId,
            "wxId": wxId,
            'regFrom': regFrom,
            'returnUrl': returnUrl
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#mobile_error").validShowError("系统开了个小差，请稍后再试~");
        },
        success: function (returnData) {
            var errorMsg = "";
            if (returnData.indexOf('200') > -1) {   //登录成功
                window.location.href = returnUrl;
                return;
            } else if (returnData.indexOf('systemCode_can_be_null') > -1) {
                errorMsg = "请输入图形验证码";
                $("#sysCode2_error").validShowError(errorMsg);
            } else if (returnData.indexOf('systemCode_is_illegal') > -1) {
                errorMsg = "图形验证码有误，请重新输入";
                $("#sysCode2_error").validShowError(errorMsg);
            } else {
                errorMsg = "动态密码有误，请重新输入";
                $("#mobileCode_error").validShowError(errorMsg);
            }
            $('.js-landPhoneInfoBtn').addClass('l-btn-disable');
        }
    });

}

/**
 * 获取验证码
 *
 */
function getValidateCode(domId) {
    $("#" + domId).attr("src", siteConfig.domain + "/ids/casartePwd.code?random=" + Math.random());
}


/**
 * 获取手机短信验证码
 *
 */
function getSmsValidateCode() {

    var mobile = $.trim($("#mobile").val());
    var systemCode = $.trim($("#sysCode2").val());

    if (isNull(mobile)) {
        $("#mobile_error").validShowError("请输入手机号");
        return;
    }
    if (isNull(systemCode)) {
        $("#sysCode2_error").validShowError("请输入图形验证码");
        return;
    }
    $.ajax({
        type: "post",
        dataType: "text",
        url: siteConfig.domain + "/ids/ts/do_loginAndSendCode.jsp",
        data: {
            'mobile': mobile,
            'systemCode': systemCode,
            'operation': 'send',
            'regFrom': regFrom
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#mobile_error").validShowError("系统开了个小差，请稍后再试~");
        },
        success: function (returnData) {
            var errorMsg = "";
            if (returnData.indexOf('200') > -1) {   //发送成功
                sendSecs(60);
                return;
            } else if (returnData.indexOf('请1分钟后重试') > -1) {
                errorMsg = "您的操作太频繁了，请1分钟后重试";
                 getValidateCode("verifyCode2");
                $("#mobile_error").validShowError(errorMsg);
            } else if (returnData.indexOf('invalid_phone_number') > -1) {
                errorMsg = "手机号格式不正确，请重新输入";
                 getValidateCode("verifyCode2");
                $("#mobile_error").validShowError(errorMsg);
            } else if (returnData.indexOf('请24小时后重试') > -1) {
                errorMsg = "您的操作太频繁了，请24小时后重试";
                 getValidateCode("verifyCode2");
                $("#mobile_error").validShowError(errorMsg);
            } else if (returnData.indexOf('出于安全考虑，一个IP固定时间内最多注册10个用户，请2小时后重试。') > -1) {
                errorMsg = "您的操作太频繁了，请2小时后重试";
                 getValidateCode("verifyCode2");
                $("#mobile_error").validShowError(errorMsg);
            } else if (returnData.indexOf('systemCode_is_illegal') > -1 || returnData.indexOf('systemCode_can_be_null') > -1) {
                errorMsg = "图形验证码有误，请重新输入";
                 getValidateCode("verifyCode2");
                getValidateCode("verifyCode2");
                $("#sysCode2_error").validShowError(errorMsg);
            } else if (returnData.indexOf('too_late_can_not_reg') > -1) {
                errorMsg = "太晚了，该休息了，睡一觉起来再战";
                 getValidateCode("verifyCode2");
                $("#mobile_error").validShowError(errorMsg);
            } else if (returnData.indexOf('sms_limit_send_today') > -1) {
                errorMsg = "您的发送太频繁，请明日再试";
                 getValidateCode("verifyCode2");
                $("#mobile_error").validShowError(errorMsg);
            } else {
                errorMsg = "您的操作太频繁了，请24小时后重试";
                 getValidateCode("verifyCode2");
                $("#mobile_error").validShowError(errorMsg);
            }
            $("#mobileCode_error").validHideError();

        }
    });

}

/**
 *倒计时Mobile
 */
var timeOutM;

function sendSecs(_iSeconds) {
    if (--_iSeconds > 0) {
        $("#sendCodeBtn").addClass("l-btn-disable").text(_iSeconds + "秒后重新发送");
        timeOutM = setTimeout("sendSecs(" + _iSeconds + ")", 1000);
        $('#sendCodeBtn').attr("sendSecs", "1");
    } else {
        $("#sendCodeBtn").removeClass("l-btn-disable").text("重新发送");
        clearTimeout(timeOutM);
        $('#sendCodeBtn').attr("sendSecs", "0");

    }
}


//判断验证码是否正确
function checkSysCode(value) {
    var result = false;
    $.ajax({
        type: "post",
        dataType: "text",
        url: siteConfig.domain + "/ids/ts/checkUtils.jsp",
        async: false,
        data: {
            'value': value,
            'operation': 'checkSysCode'
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        },
        success: function (returnData) {
            if ($.trim(returnData) == '200') {
                result = true;
            }
            if(returnData.indexOf('code_is_empty') > -1){
                getValidateCode("verifyCode2");
            }
        }
    });
    return result;
}

/**
 * 显示登录弹框
 */
function showLoginBombBox() {

    var height = $(window).height();
    //var boxHeight = $('.js_landContBox').height();
    var boxHeight = 330;

    var top = $(document).scrollTop() + 'px';
    $('.js_landShades').show();
    $('.js_landContBox').css({'top': top, 'margin-top': ((height - boxHeight) / 2) + 'px'}).show();
    $("body").css({overflow: "hidden"});
//                    $('.js_landContBox').show();
    $('.js_landClose').click(function () {
        $('.js_landContBox').hide();
        $('.js_landShades').hide();
        $("body").css({overflow: "auto"});
        return false;
    });
    $(".returnUrlReg").attr("href",$(".returnUrlReg").attr("href")+returnUrl);
    $(".returnUrlForget").attr("href",$(".returnUrlForget").attr("href")+returnUrl);
}


/**
 * 判断格式是否正确
 * @param type
 * @param value
 * @returns {boolean}
 */
function checkFormatIsRight(type, value) {
    var result = false;
    if ("mobile" == type) {
        var mobile_regexp = /^[1][3-9][0-9]{9}$/;
        if (mobile_regexp.test(value)) {
            result = true;
        }
    } else {
        var email_regexp = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if (email_regexp.test(value)) {
            result = true;
        }
    }
    return result;
}


/**
 * 非空校验
 */
function isNull(value) {
    if ("" != value && 'null' != value && null != value && typeof(value) != "undefined") {
        return false;
    } else {
        return true;
    }
}


//验证密码格式正确性
function checkPwdFormat(_sPwd) {
    var result = "200";
    if (_sPwd.length < 6) {
        //密码长度小于6
        result = "密码太短啦，还不到6位呢！";
        return result;
    } else if (_sPwd.length > 16) {
        //密码长度大于16
        result = "密码太长啦，已经超过16位啦！";
        return result;
    }
    var regqj = /[^\x00-\xff]/;   //[^\x00-\xff]全角字符   //[\u4e00-\u9fa5]汉字
    var regchina = /^[\u2E80-\uFE4F]+$/;
    var space = /[ ]/g;
    var str = _sPwd;
    if (regchina.test(str) || regqj.test(str) || space.test(str)) {
        result = "全角、中文、空格是不能用在密码中的~";
        return result;
    }
    var reghasNum = /[0-9]+/;
    var reghasABC = /[a-zA-Z]+/;
    var reghasXXX = /[_`~!@#$%^&*()+=|{}':;',\[\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]+/;
    var flag = 0;

    if (reghasNum.test(str)) {
        flag++;
    }
    if (reghasABC.test(str)) {
        flag++;
    }
    if (reghasXXX.test(str)) {
        flag++;
    }
    if (flag < 2) {
        result = "密码须为6-16位，数字、字母或符号的组合";
    }
    return result;
}

//登录===================================结束