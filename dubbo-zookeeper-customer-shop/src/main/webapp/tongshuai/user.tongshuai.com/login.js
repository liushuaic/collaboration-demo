$(function () {

    //键盘监听事件
    document.onkeydown = function (event) {
        event = window.event || event;
        if (event.keyCode == 13) {//如果取到的键值是回车
            var js_loginType_pc = $(".js_loginType_pc").is(":hidden");
            var js_loginType_phone = $(".js_loginType_phone").is(":hidden");
            if (!js_loginType_pc && js_loginType_phone) {
                $("#loginBtn").click();
            }
            if (js_loginType_pc && !js_loginType_phone) {
                $("#loginBtn2").click();
            }
        }
    }

    $("#pwd").parent().validPassword();

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

    $("#mobileCode").keyup(function () {
        var mobile = $.trim($("#mobile").val());
        if (checkFormatIsRight("mobile", mobile)) {
            var mobileCode = $.trim($("#mobileCode").val());
            if (6 == mobileCode.length && $('#sysCode2_error > i').length==0) {
                $("#loginBtn2").removeClass("l-btn-disable")
            } else {
                $("#loginBtn2").addClass("l-btn-disable");
            }
        } else {
            $("#loginBtn2").addClass("l-btn-disable");
        }
    });

    $("#verifyCode,#exchange").click(function () {
        refreshVerifyCode("verifyCode");
    });

    $("#verifyCode2,#exchange2").click(function () {
        refreshVerifyCode("verifyCode2");
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
        if (!$("#sysCode").parent().hasClass("o_df-hide")) {
            var value3 = $.trim($("#sysCode").val());
            var valuePh3 = $.trim($("#sysCode").attr("ph"));
            if (!isNull(value3) && value3.length==4 && value3 != valuePh3) {
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
                normalLogin();
            } else {
                mobileCodeLogin();
            }
        }
    });

    $("#sendCodeBtn").click(function () {
        if (!$(this).hasClass("l-btn-disable")) {
            if($('#sendCodeBtn').text()=='重新发送'){
                if($('#sendCodeBtn').attr('resend')==1){
                    sendRandomCode();
                    $('#sendCodeBtn').attr('resend','0');
                    return;
                }
                $('#sendCodeBtn').attr('resend','1');
                refreshVerifyCode("verifyCode2");
                $('#sendCodeBtn').addClass("l-btn-disable");
            }else{
                sendRandomCode();
            }

        }
    });

    $('.js_loginType').on('click', function () {
        var phoneType = $(this);
        refreshVerifyCode("verifyCode");
        refreshVerifyCode("verifyCode2");
    });

});

/**
 * 监测样式
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

    if (!$("#sysCode").parent().hasClass("o_df-hide")) {
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
 * 监测样式
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
            if($('#sendCodeBtn').attr("sendSecs")!='1'){
                $('#sendCodeBtn').removeClass('l-btn-disable');
            }

        } else {
            $("#sysCode2_error").validShowError("图形验证码有误，请重新输入");
            $("#mobileCode_error").validHideError();
            return;
        }
    }

    var value3 = $.trim($("#mobileCode").val());
    var valuePh3 = $.trim($("#mobileCode").attr("ph"));
    if (isNull(value3) || value3 == valuePh3) {
        if (isNull(domId)) {
            $("#mobileCode_error").validShowError("请输入动态密码");
        }
        return;
    } else {
        if (value3.length != 6) {
            $("#mobileCode_error").validShowError("动态密码有误，请重新输入");
        } else {
            $("#mobileCode_error").validHideError();
        }
    }
}

/**
 * 刷新验证码
 */
function refreshVerifyCode(domId) {
    $("#" + domId).attr("src", "/ids/casartePwd.code?random=" + Math.random());
}

/**
 * 普通登录
 */
function normalLogin() {
    var loginName = $.trim($("#loginName").val());
    var pwd = $.trim($("#pwd").val());
    var verifyCode = $.trim($("#sysCode").val());
    var verifyCodePh = $.trim($("#sysCode").attr("ph"));
    if (isNull(verifyCode) || verifyCode == verifyCodePh) {
        verifyCode = "";
    }
    var isTwoWeeksLogin = $('#twoWeeksLogin').is(':checked');
    $.ajax({
        type: "post",
        dataType: "text",
        url: "http://user.tongshuai.com/ids/ts/do_loginAjax.jsp",
        data: {
            'returnUrl': returnUrl,
            'userName': loginName,
            'password': pwd,
            'autoLogin': isTwoWeeksLogin,
            'verifyCodes': verifyCode,
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
                window.location.href = "http://user.tongshuai.com/ids/ts/login_validate.jsp?regFrom=" + regFrom + "&returnUrl=" + returnUrl + "&openId=" + openId + "&wxId=" + wxId + "&wxAppName=" + wxAppName;
                return;
            } else if (resultData.indexOf("need_verifyCode") > -1) {
                $("#sysCode").parent().removeClass("o_df-hide");
                errorMsg = "请输入图形验证码";
                refreshVerifyCode("verifyCode");
                $("#sysCode_error").validShowError(errorMsg);
                $('#loginBtn').addClass('l-btn-disable');
                return;
            } else if (resultData.indexOf("该用户尚未激活") > -1) {//后台停用
                errorMsg = "账号或密码不正确，请重新输入";
            } else if (resultData.indexOf("account_locked") > -1) {//后台停用
                //errorMsg = "您的账号已锁定，请联系管理员";
                errorMsg = "您的账户可能存在安全风险，请稍后重试！";
            } else if (resultData.indexOf("show;") > -1) {
                $("#sysCode").parent().removeClass("o_df-hide");
                refreshVerifyCode("verifyCode");
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
            $('#loginBtn').addClass('l-btn-disable');

        }
    });
}
/**
 *动态口令发送
 */
function sendRandomCode() {
    var mobile = $.trim($("#mobile").val());
    var systemCode = $.trim($("#sysCode2").val());
    $.ajax({
        type: "post",
        dataType: "text",
        url: "http://user.tongshuai.com/ids/ts/do_loginAndSendCode.jsp",
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
                $("#mobile_error").validShowError(errorMsg);
            }else if (returnData.indexOf('invalid_phone_number') > -1) {
                errorMsg = "手机号格式不正确，请重新输入";
                $("#mobile_error").validShowError(errorMsg);
            } else if (returnData.indexOf('请24小时后重试') > -1) {
                errorMsg = "您的操作太频繁了，请24小时后重试";
                $("#mobile_error").validShowError(errorMsg);
            } else if (returnData.indexOf('出于安全考虑，一个IP固定时间内最多注册10个用户，请2小时后重试。') > -1) {
                errorMsg = "您的操作太频繁了，请2小时后重试";
                $("#mobile_error").validShowError(errorMsg);
            } else if (returnData.indexOf('systemCode_is_illegal') > -1 || returnData.indexOf('systemCode_can_be_null') > -1) {
                errorMsg = "图形验证码有误，请重新输入";
                refreshVerifyCode("verifyCode2");
                $("#sysCode2_error").validShowError(errorMsg);
            } else if (returnData.indexOf('too_late_can_not_reg') > -1) {
                errorMsg = "太晚了，该休息了，睡一觉起来再战";
                $("#mobile_error").validShowError(errorMsg);
            } else if (returnData.indexOf('sms_limit_send_today') > -1) {
                errorMsg = "您的发送太频繁，请明日再试";
                $("#mobile_error").validShowError(errorMsg);
            } else {
                errorMsg = "您的操作太频繁了，请24小时后重试";
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
        $('#sendCodeBtn').attr("sendSecs","1");
    } else {
        $("#sendCodeBtn").removeClass("l-btn-disable").text("重新发送");
        clearTimeout(timeOutM);
        $('#sendCodeBtn').attr("sendSecs","0");
    }
}

/**
 * 动态口令的登录
 */
function mobileCodeLogin() {
    var mobileCode = $.trim($("#mobileCode").val());
    var mobile = $.trim($("#mobile").val());

    $.ajax({
        type: "post",
        dataType: "text",
        url: "http://user.tongshuai.com/ids/ts/do_loginAndSendCode.jsp",
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
            $('#loginBtn2').addClass('l-btn-disable');
        }
    });
}

//判断验证码是否正确
function checkSysCode(value) {
    var result = false;
    $.ajax({
        type: "post",
        dataType: "text",
        url: "http://user.tongshuai.com/ids/ts/checkUtils.jsp",
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
        }
    });
    return result;
}
