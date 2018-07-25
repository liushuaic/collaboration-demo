var screenType = "";
var alreadyClickSend = false;   //是否已经点击过发送按钮
var emailInputCheckRight = false;   //邮箱注册检测input框是否通过
var emailSysCodeIsRight = false;    //邮箱验证码是否通过
$(function () {
    if (window.innerWidth < 768) {
        screenType = "mobile";
    }
    // $("#mobilePwd,#emailPwd").parent().validPassword();

    refreshVerifyCode("mobile");
    // 登录方式转换
    $('.js_regType').on('click', function () {
        refreshVerifyCode("mobile");
        refreshVerifyCode("email");
    });

    //点击换一换
    $(".js_regType_phone .code,.exchange").click(function () {
        refreshVerifyCode("mobile");
    });
    //点击换一换
    $(".js_regType_email .code,.exchange").click(function () {
        refreshVerifyCode("email");
    });

    //点击任何一个输入框，去掉错误样式
    $(".js_regType_phone input,.js_regType_email input").click(function () {
        var id = $(this).attr("id");
        $("#" + id + "_error").validHideError();
        //邮箱没有邮箱验证码了，且需要点击输入框是去掉短信验证码的错误提示，故放在这里
        $("#mobileCode_error").validHideError();
    });
    //点击任何一个输入框，去掉错误样式
    $(".js_regType_phone input,.js_regType_email input").focus(function () {
        var id = $(this).attr("id");
        $("#" + id + "_error").validHideError();
    });

    //手机号或邮箱输入框离开事件
    $("#mobile,#email").blur(function () {
        var type = $.trim($(this).attr("id"));
        check(type, "");

        if ("mobile" == type) {
            var meValue = $.trim($("#" + type).val());
            var result = checkFormat(meValue, type);
            var value = $.trim($('#mobilePwd').val());
            var pwdIsRight = checkPwdFormat(value);
            if ("200" == result && "200" == pwdIsRight) {
                $("#" + type + "SysCode").parent().parent().removeClass("o_df-hide");
            } else {
                $("#" + type + "SysCode").parent().parent().addClass("o_df-hide");
            }
        }

    });


    //检查输入框的格式
    $("#mobilePwd,#emailPwd,#mobilePwd2,#emailPwd2").keyup(function () {
        var id = $.trim($(this).attr("id"));
        var type = "mobile";
        if ("emailPwd" == id || "emailPwd2" == id) {
            type = "email";
        }
        if ("mobile" == type) {
            var meValue = $.trim($("#" + type).val());
            var result = checkFormat(meValue, type);
            var value = $.trim($(this).val());
            var pwdIsRight = checkPwdFormat(value);
            if ("200" == result && "200" == pwdIsRight) {
                $("#" + type + "SysCode").parent().parent().removeClass("o_df-hide");
            } else {
                $("#" + type + "SysCode").parent().parent().addClass("o_df-hide");
            }
        }
    });

    //密码框的离开事件
    $("#mobilePwd,#emailPwd,#mobilePwd2,#emailPwd2").blur(function () {
        var id = $.trim($(this).attr("id"));
        var type = "mobile";
        if ("emailPwd" == id || "emailPwd2" == id) {
            type = "email";
        }
        if($('#'+type+'_error  > i').length==0){
            if(check(type, "")){
                $('#emailRegBtn').removeClass('l-btn-disable');
            }
        }
    });

    //图形验证码的离开事件
    $("#mobileSysCode,#emailSysCode").blur(function () {
        var id = $.trim($(this).attr("id"));
        var type = "mobile";
        if ("emailSysCode" == id) {
            type = "email";
        }
        if($('#'+type+'_error  > i').length==0){
            check(type, "");
        }
    });

    $("#mobileSysCode,#emailSysCode").keyup(function () {
        var id = $.trim($(this).attr("id"));
        var type = "mobile";
        if ("emailSysCode" == id) {
            type = "email";
        }
        var value = $.trim($(this).val());
        var errorMsg1 = $.trim($("#" + type + "_error").innerHTML);
        var errorMsg2 = $.trim($("#" + type + "Pwd_error").innerHTML);
        if ("mobile" == type) {
            if (value.length == 4 && isNull(errorMsg1) && isNull(errorMsg2)) {
                var isRight = checkSysCode(value);
                if (isRight) {
                    $("#" + type + "SendCodeBtn").removeClass("l-btn-disable");
                    $("#" + type + "RegBtn").removeClass("l-btn-disable");
                } else {
                    $("#" + type + "SendCodeBtn").addClass("l-btn-disable");
                    $("#" + type + "RegBtn").addClass("l-btn-disable");
                }
            } else {
                $("#" + type + "SendCodeBtn").addClass("l-btn-disable");
                $("#" + type + "RegBtn").addClass("l-btn-disable");
            }
        } else {
            if (value.length == 4 && isNull(errorMsg1) && isNull(errorMsg2)) {
                if (emailInputCheckRight) {
                    emailSysCodeIsRight = checkSysCode(value);
                    if (emailSysCodeIsRight) {
                        $("#" + type + "RegBtn").removeClass("l-btn-disable");
                    } else {
                        $("#" + type + "RegBtn").addClass("l-btn-disable");
                    }
                }
            } else {
                $("#" + type + "RegBtn").addClass("l-btn-disable");
            }
        }
    });

    //短信验证码的校验
    $("#mobileCode,#emailCode").blur(function () {
        var id = $.trim($(this).attr("id"));
        var type = "mobile";
        if ("emailCode" == id) {
            type = "email";
        }
        if($('#'+type+'_error  > i').length==0){
            check(type, type + "Code");
        }
    });

    //手机注册的确定按钮全局监听
    $(".js_regType_phone input").keyup(function () {
        var mobile = $.trim($("#mobile").val());
        var mobilePwd = $.trim($("#mobilePwd").val());
        var mobileCode = $.trim($("#mobileCode").val());
        if ("200" == checkFormat(mobile, "mobile") && "200" == checkPwdFormat(mobilePwd) && 6 == mobileCode.length) {
            $("#mobileRegBtn").removeClass("l-btn-disable");
        } else {
            $("#mobileRegBtn").addClass("l-btn-disable");
        }
    });

    //邮箱注册的确定按钮全局监听
    $(".js_regType_email input").keyup(function () {
        var email = $.trim($("#email").val());
        var emailPwd = $.trim($("#emailPwd").val());
        var emailSysCode = $.trim($("#emailSysCode").val());
        if ("200" == checkFormat(email, "email") && "200" == checkPwdFormat(emailPwd)) {
            emailInputCheckRight = true;
            if (emailSysCodeIsRight) {
                $("#emailRegBtn").removeClass("l-btn-disable");
            } else {
                $("#emailRegBtn").addClass("l-btn-disable");
            }
        } else {
            emailInputCheckRight = false;
            $("#emailRegBtn").addClass("l-btn-disable");
        }
    });

    $("#mobileRegBtn,#emailRegBtn").click(function () {
        var id = $.trim($(this).attr("id"));
        var type = "mobile";
        if ("emailRegBtn" == id) {
            type = "email";
        }
        if (!$(this).hasClass("l-btn-disable")) {
            doReg(type);
        }
    });

});
/**
 * 监测样式
 * @param type
 * @param domId
 * @returns {boolean}
 */
function check(type, domId) {
    var typeStr = "手机号";
    if ("email" == type) {
        typeStr = "邮箱"
    }
    $("#" + type + "SendCodeBtn").addClass("l-btn-disable");
    var value1 = $.trim($("#" + type).val());
    var valuePh1 = $.trim($("#" + type).attr("ph"));
    if (isNull(value1) || value1 == valuePh1) {
        $("#" + type + "_error").validShowError("请输入常用" + typeStr);
        if ("mobile" == type) {
            $("#" + type + "SysCode").parent().parent().addClass("o_df-hide");
        }
        return false;
    }
    var result1 = checkValue(value1, type);
    if ("200" != result1) {
        $("#" + type + "_error").validShowError(result1);
        $("#" + type + "Pwd_error").validHideError();
        $("#" + type + "SysCode_error").validHideError();
        $("#" + type + "Code_error").validHideError();
        return false;
    } else {
        $("#" + type + "_error").validHideError();
    }

    var value2 = $.trim($("#" + type + "Pwd").val());
    var valuePh2 = $.trim($("#" + type + "Pwd").attr("ph"));
    if (isNull(value2) || value2 == valuePh2) {
        $("#" + type + "Pwd_error").validShowError("请输入密码");
        return false;
    }
    var result2 = checkPwdFormat(value2);
    if ("200" != result2) {
        $("#" + type + "Pwd_error").validShowError("密码须为6-16位，数字、字母或符号的组合");
        return false;
    } else {
        $("#" + type + "Pwd_error").validHideError();
    }

    if (!alreadyClickSend) {     //如果没有点击过发送按钮则需要校验图形验证码
        var value3 = $.trim($("#" + type + "SysCode").val());
        var valuePh3 = $.trim($("#" + type + "SysCode").attr("ph"));
        if (isNull(value3) || value3 == valuePh3) {
            $("#" + type + "SysCode_error").validShowError("请输入图形验证码");
            refreshVerifyCode(type);
            return false;
        }
        if (value3.length == 4) {
            var isRight3 = checkSysCode(value3);
            if (!isRight3) {
                $("#" + type + "SysCode_error").validShowError("图形验证码有误，请重新输入");
                $("#"+type+"RegBtn").addClass("l-btn-disable");
                refreshVerifyCode(type);
                return false;
            } else {
                $("#" + type + "SysCode_error").validHideError();
            }
        } else {
            $("#" + type + "SysCode_error").validShowError("图形验证码有误，请重新输入");
            $("#"+type+"RegBtn").addClass("l-btn-disable");
            refreshVerifyCode(type);
            return false;
        }
    }

    if ("mobile" == type) {
        if('1'!=$("#mobileSendCodeBtn").attr("sendMobileCode")){
            $("#" + type + "SendCodeBtn").removeClass("l-btn-disable");
        }

        if ((type + "Code") == domId) {
            var value4 = $.trim($("#" + type + "Code").val());
            var valuePh4 = $.trim($("#" + type + "Code").attr("ph"));
            var errorMsgType = "";
            var codeLength = 0;
            if (type == "mobile") {
                errorMsgType = "短信";
                codeLength = 6;
            } else {
                errorMsgType = "邮箱";
                codeLength = 16;
            }
            if (isNull(value4) || value4 == valuePh4) {
                $("#" + type + "Code_error").validShowError("请输入" + errorMsgType + "验证码");
                return false;
            }
            if (value4.length != codeLength) {
                $("#" + type + "Code_error").validShowError(errorMsgType + "验证码不正确");
                return false;
            } else {
                $("#" + type + "Code_error").validHideError();
            }
        }
    }

    $("#" + type + "SendCodeBtn").off().click(function () {
        if (!$(this).hasClass("l-btn-disable")) {
            $("#" + type + "error").validHideError();
            $("#" + type + "Pwd_error").validHideError();
            $("#" + type + "SysCode_error").validHideError();
            $("#" + type + "Code_error").validHideError();
            sendCode(type);
        }
    });
    return true;
}

//刷新验证码
function refreshVerifyCode(type) {
    $("#" + type + "VerifyCode").attr("src", "/ids/casartePwd.code?random=" + Math.random());
}
/**
 *倒计时Mobile
 */
var timeOutM;
function sendMobileCodeCountDown(_iSeconds) {
    if (--_iSeconds > 0) {
        $("#mobileSendCodeBtn").addClass("l-btn-disable").text(_iSeconds + "秒后重新发送");
        $("#mobileSendCodeBtn").attr("sendMobileCode","1");
        timeOutM = setTimeout("sendMobileCodeCountDown(" + _iSeconds + ")", 1000);
    } else {
        $("#mobileSendCodeBtn").removeClass("l-btn-disable").text("重新发送");
        $("#mobileSendCodeBtn").attr("sendMobileCode","0");
        clearTimeout(timeOutM);
    }
}
/**
 *倒计时Email
 */
var timeOutE;
function sendEmailCodeCountDown(_iSeconds) {
    if (--_iSeconds > 0) {
        $("#emailSendCodeBtn").addClass("l-btn-disable").text(_iSeconds + "秒后重新发送");
        timeOutE = setTimeout("sendEmailCodeCountDown(" + _iSeconds + ")", 1000);
    } else {
        $("#emailSendCodeBtn").removeClass("l-btn-disable").text("重新发送");
        clearTimeout(timeOutE);
    }
}
//检查输入的值
function checkValue(value, type) {
    var result = "200";
    var formatResult = checkFormat(value, type);
    if ("200" != formatResult) {
        return formatResult;
    } else {
        var isUnique = checkValueUnique(value);
        if (!isUnique) {
            if ("mobile" == type) {
                result = "该手机号已注册，你可以<a class='validLink' href='" + loginUrl + "'>立即登录</a>";
            } else {
                result = "该邮箱已注册，你可以<a class='validLink' href='" + loginUrl + "'>立即登录</a>";
            }
        }
    }
    return result;
}
//验证手机号格式是否正确
function checkFormat(value, type) {
    var result = "200";
    if ("mobile" == type) {
        if (!checkFormatIsRight(type, value)) {
            result = "手机号格式不正确，请重新输入";
            return result;
        }
    } else {
        if (!checkFormatIsRight(type, value)) {
            result = "邮箱格式不正确，请重新输入";
            return result;
        }
    }
    return result;
}
//检查是否唯一
function checkValueUnique(value) {
    var result = false;
    $.ajax({
        type: "post",
        dataType: "text",
        url: "http://user.tongshuai.com/ids/ts/checkUtils.jsp",
        async: false,
        data: {
            'value': value,
            'coAppName': regFrom,
            'operation': 'regCheck'
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
/**
 *
 * @param type
 */
function sendCode(type) {
    var value = $.trim($("#" + type).val());
    var sysCode = $.trim($("#" + type + "SysCode").val());
    $.ajax({
        type: "post",
        dataType: "text",
        url: "http://user.tongshuai.com/ids/ts/sendMobileCode.jsp",
        async: false,
        data: {
            'value': value,
            'coAppName': regFrom,
            'sysCode': sysCode,
            'operation': 'reg'
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#" + type).validShowError("系统开了个小差，请稍后再试");
        }
        ,
        success: function (returnData) {
            returnData = $.trim(returnData);
            var typeMsg = "手机号";
            var timeMsg = "一";
            if (type == "email") {
                typeMsg = "邮箱";
                timeMsg = "二";
            }
            if (returnData == '200') {
                result = true;
                if ("mobile" == type) {
                    sendMobileCodeCountDown(60);
                    alreadyClickSend = true;
                    return;
                } else {
                    sendEmailCodeCountDown(120);
                }
            } else if (returnData == "invalid_phone_number") {
                $("#" + type).validShowError(typeMsg + "格式不正确，请重新输入");
            } else if (returnData == "phone_number_occupied") {
                $("#" + type).validShowError("该" + typeMsg + "已注册，你可以<a class='validLink' href='" + loginUrl + "'>立即登录</a>");
            } else if (returnData == "sms_limit_send_today" || returnData.indexOf("24小时后重试") > -1
                || returnData.indexOf('cannot_getback_more') > -1) {
                $("#" + type).validShowError("您的发送太频繁，请明日再试");
            } else if (returnData.indexOf("1分钟后") > -1 || returnData.indexOf("too_often") > -1 || returnData.indexOf("too.often") > -1) {
                $("#" + type).validShowError("您的发送太频繁，请" + timeMsg + "分钟再试");
            } else if (returnData == "mobile_temporarily_locked") {
                $("#" + type).validShowError("手机号暂被锁定，请联系管理员");
            } else if (returnData == "sysCode_is_illegal") {
                $("#" + type + "SysCode").validShowError("图形验证码有误，请重新输入");
            } else if (returnData == "sysCode_is_null") {
                $("#" + type + "SysCode").validShowError("请输入图形验证码");
                refreshVerifyCode(type);
            } else {
                $("#" + type).validShowError("系统开了个小差，请稍后再试");
            }
            alreadyClickSend = false;
            $("#"+type+"RegBtn").addClass("l-btn-disable");
        }
    });
}

/**
 * 注册
 * @param type
 */
function doReg(type) {
    var value = $.trim($("#" + type).val());
    var password = $.trim($("#" + type + "Pwd").val());
    var sysCode = $.trim($("#" + type + "SysCode").val());
    var valueCode = $.trim($("#" + type + "Code").val());
    var data = {
        'password': password,
        'verifycode': sysCode,
        'code': valueCode,
        'regFrom': regFrom,
        'IDSEXT_EXTRALABEL': IDSEXT_EXTRALABEL,
        'regFromUrl': regFromUrl
    };
    if ("mobile" == type) {
        data.mobile = value;
    } else {
        data.email = value;
    }
    $.ajax({
        type: "post",
        dataType: "text",
        url: "http://user.tongshuai.com/ids/ts/do_regUser.jsp",
        async: false,
        data: data,
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        },
        success: function (returnData) {
            var regSuccessUrl = 'reg_success.jsp?regFromUrl=' + returnUrl + "&regFrom=" + regFrom;
            var errorMsgType = "短信";
            var errorMsgTime = "1分钟";
            if ("email" == type) {
                errorMsgType = "邮箱";
                errorMsgTime = "2分钟";
                regSuccessUrl = 'reg2.jsp?returnUrl=' + returnUrl + "&regFrom=" + regFrom;
            }
            returnData = $.trim(returnData);
            if (returnData == '200') {
                $('#email').val('');
                $('#emailPwd2').val('');
                $('#emailSysCode').val('');
                window.location.href = regSuccessUrl;
                return;
            }
            if (returnData.indexOf("verification_code_expired") > -1 || returnData.indexOf("verification_code_not_match") > -1) {
                $("#" + type + "Code_error").validShowError(errorMsgType + "验证码不正确");
            } else if (returnData.indexOf("too.often") > -1) {
                $("#" + type + "Code_error").validShowError("您的发送太频繁，请" + errorMsgTime + "后重试");
            } else if (returnData.indexOf("phone_number_occupied") > -1) {
                $("#" + type).validShowError("该手机号已注册，你可以<a class='validLink' href='" + loginUrl + "'>立即登录</a>");
            } else if (returnData.indexOf("hour_was_late_can_not_reg") > -1) {
                $("#" + type + "Code_error").validShowError("太晚了，该休息了，睡一觉起来再战");
            } else if (returnData.indexOf("您的操作太频繁了，请1分钟后重试") > -1) {
                $("#" + type + "_error").validShowError("您的操作太频繁了，请" + errorMsgTime + "后重试");
            }else if (returnData.indexOf("您的操作太频繁了，请24小时后重试") > -1) {
                $("#" + type + "_error").validShowError("您的操作太频繁了，请24小时后重试");
            } else if (returnData.indexOf("sysCode_is_illegal") > -1) {
                $("#" + type + "SysCode_error").validShowError("图形验证码已过期");
            }else {
                $("#" + type + "Code_error").validShowError(errorMsgType + "验证码不正确");
            }
        }
    });
}