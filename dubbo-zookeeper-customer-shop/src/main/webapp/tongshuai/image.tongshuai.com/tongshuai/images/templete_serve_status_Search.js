
/**
 * 服务进度查询
 */

$(".js_service_status").click(function () {
    if (istrsidssdssotoken()) {
        // 已登录，跳转到个人中心-售后服务页面
        window.location.href = siteConfig.userUrl + "/service/index.shtml";
    } else {
        // 未登录，显示弹层，并刷新验证码；同时清空输入框的内容
        init();
        $(".js_pup_wrap").removeClass("js_hide");
        $(".js_pup_status").css("display", "block");
        $(".js_shade_up").removeClass("js_hide");
        $(".js_shade_up").addClass("show");
        $("#code_serve").val("");
        $("#ph_serve").val("");
        refreshCode();
    }
})

// 登录按钮
$("#service_login").click(function () {
    var returnUrl = window.location.href;
    var regFrom = "tongshuai";
    $("#service_login").attr("href", siteConfig.userUrl
        + "/ids/ts/login.jsp?regFrom=" + regFrom + "&returnUrl=" + returnUrl);
});

// 刷新图片验证码
$("#js_exchange, #js_code").click(function () {
    refreshCode();
});
function refreshCode() {
    var timestamp = new Date().getTime();
    $("#js_code").attr("src", siteConfig.domain + "/interaction-service/validateCode/getValidateCode" + '?' + timestamp);
}

$("#js_submit_info, #code_serve").click(function () {
    // 清除之前的错误信息提示
    $("#ph_serve").removeClass("Validform_error");
    $(".js_ph").addClass("Validform_right").removeClass("Validform_wrong");
    $(".js_ph").html("");
    $("#code_serve").removeClass("Validform_error");
    $(".js_code").addClass("Validform_right").removeClass("Validform_wrong");
    $(".js_code").html("");
    $(".js_hasStatus").css("display", "none");

    // 对手机号的校验
    var phone = $("#ph_serve").val();
    // 非空的校验
    if (phone == "" || phone == null || typeof(phone) == "undefined") {
        $("#ph_serve").addClass("Validform_error");
        $(".js_ph").removeClass("Validform_right").addClass("Validform_wrong");
        $(".js_ph").html("<i class='iconfont icon-information-solid'></i>请输入手机号码");
    } else {
        // 不为空，校验长度
        if (phone.length != 11) {
            $("#ph_serve").addClass("Validform_error");
            $(".js_ph").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_ph").html("<i class='iconfont icon-information-solid'></i>请输入正确的手机号码");
        } else {
            $("#ph_serve").removeClass("Validform_error");
            $(".js_ph").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_ph").html("");
        }
        // 做合法性的校验
        var result = isPoneAvailable(phone);
        if (result == false) {
            $("#ph_serve").addClass("Validform_error");
            $(".js_ph").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_ph").html("<i class='iconfont icon-information-solid'></i>请输入正确的手机号码");
        } else {
            $("#ph_serve").removeClass("Validform_error");
            $(".js_ph").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_ph").html("");
        }
    }

    // 验证码的校验
    var code = $("#code_serve").val();
    if (code == "" || code == null || typeof(code) == "undefined") {
        $("#code_serve").addClass("Validform_error");
        $(".js_code").removeClass("Validform_right").addClass("Validform_wrong");
        $(".js_code").html("<i class='iconfont icon-information-solid'></i>请输入验证码");
    } else {
        // 长度校验
        if(code.length != 5) {
            $("#code_serve").addClass("Validform_error");
            $(".js_code").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_code").html("<i class='iconfont icon-information-solid'></i>请输入正确的验证码");
        } else {
            $("#code_serve").removeClass("Validform_error");
            $(".js_code").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_code").html("");

            // 校验验证码是否有效
            $.ajax({
                url : siteConfig.domain + "/interaction-service/queryState/validCode",
                data : {code : code},
                type : "GET",
                dataType : "json",
                success : function (returnData) {
                    if (returnData.isSuccess == true) {
                        var resultList = returnData.data;
                        var result = resultList.result;
                        if (result == "true") {
                            // 验证码合法，调用服务拉取近三个月的信息
                            getRecentList(phone);
                        } else {
                            // 验证码不合法，提示错误信息
                            $("#code_serve").addClass("Validform_error");
                            $(".js_code").removeClass("Validform_right").addClass("Validform_wrong");
                            $(".js_code").html("<i class='iconfont icon-information-solid'></i>验证码错误或失效");
                        }
                    } else {
                        $("#code_serve").addClass("Validform_error");
                        $(".js_code").removeClass("Validform_right").addClass("Validform_wrong");
                        $(".js_code").html("<i class='iconfont icon-information-solid'></i>验证码错误或失效");
                    }
                }
            });
        }
    }

})


// 正则校验手机号的合法性
function isPoneAvailable(str) {
    var myreg=/^[1][2-9][0-9]{9}$/;
    if (!myreg.test(str)) {
        return false;
    } else {
        return true;
    }
}

// 校验验证码是否合法
function validCode(code) {
    $.ajax({
        url : siteConfig.domain + "/interaction-service/queryState/validCode",
        data : {code : code},
        type : "GET",
        dataType : "json",
        success : function (returnData) {
            if (returnData.isSuccess == true) {
                var resultList = returnData.data;
                var result = resultList.result;
                if (result == "true") {
                    return true;
                } else {
                    return false;
                }
            }
        }
    });
}

// 获取近三个月服务的数据列表
function getRecentList(phone) {
    $.ajax({
        url : siteConfig.domain + "/interaction-service/queryState/queryServicesListByPhone",
        data : {phone : phone},
        type : "GET",
        dataType : "json",
        success : function (returnData) {
            if(returnData.isSuccess == true) {
                var resultList = returnData.data;
                var count = resultList.length; // 返回信息的条数
                if(count <= 0) {
                    // 信息数为0，提示内容未查询到数据
                    $(".js_hasStatus").removeClass("js_hide");
                    $(".js_shade_up").removeClass("js_hide");
                    $(".js_shade_up").addClass("show");
                    $(".js_hasStatus").css("display", "block");
                } else {
                    $(".js_pup_status").css("display", "none"); // 表单弹层隐藏
                    $(".js_shade_up").removeClass("js_hide");
                    $(".js_shade_up").addClass("show");
                    $("#js_list_info").css("display", "block"); // 列表弹层显示

                    // 对返回结果进行排序：记录按完成进度排序，完成进度低的在前，同进度的记录按申请时间排序，时间近的在前
                    for (var m = 0; m < (count-1); m++) {
                        for (var n = (m+1); n < count; n++) {
                            if (resultList[m].woidStatus > resultList[n].woidStatus) {
                                // 状态数值越小，完成进度越低，排在前。前者大于后者，往后排
                                var temp = resultList[m];
                                resultList[m] = resultList[n];
                                resultList[n] = temp;
                            } // else if (resultList[m].woidStatus == resultList[n].woidStatus) {
                            //     // 完成进度相同，按申请时间排序，距离当前时间越近的在前
                            //     var date1 = resultList[m].enterTime;
                            //     var date2 = resultList[n].enterTime;
                            //     var now = new Date();
                            //     if (((date1-now)/1000) < ((date2-now)/1000)) {
                            //         // date1与当前时间的差值小于date2与当前时间的差值，后者距离当前时间近，在前
                            //         var item = resultList[n];
                            //         resultList[n] = resultList[m];
                            //         resultList[m] = item;
                            //     }
                            // }
                        }
                    }

                    // 信息数大于0，弹层显示信息列表
                    $("#js_list_num").html(count);
                    $("#js_list_item").html("");
                    $("#js_list_mobile").html("");
                    var html = "";
                    var mobile_html = "";
                    for (var i = 0; i < count; i ++) {
                        var result = resultList[i];
                        var woid = result.woid; // 工单号，用于查询详情
                        var parentPrdName = result.parentPrdName; // 产品大类名称
                        var modelName = result.modelName; // 产品型号
                        var time = new Date(result.enterTime);
                        var enterTime = time.getFullYear() + "-" + (("0" + (time.getMonth() + 1)).slice(-2))
                            + "-" + (("0" + (time.getDate())).slice(-2)); // 申请时间
                        var woidStatusName = result.woidStatusName; // 状态名称
                        var type = result.reqServiceType; // 类型
                        if (type.length <= 0) {
                            type = "";
                        }

                        html += '<ul class="o_g add_item">';
                        html += '<li class="o_u o_df_4-10">';
                        html += '<p class="prod_name">' + parentPrdName + '</p>';
                        html += '<p class="prod_size">' + modelName + '</p>';
                        html += '</li>';
                        html += '<li class="o_u o_df_3-10">';
                        html += '<p class="prod_type">' + type + '</p>';
                        html += '<p class="prod_time">' + enterTime + '</p>';
                        html += '</li>';
                        html += '<li class="o_u o_df_3-10">';
                        html += '<p class="prod_status oringe">' + woidStatusName + '</p>';
                        html += '<a class="prod_gosee" href="javascript:;" onclick="getDetail(\'' + woid + '\')">' +
                            '查看详情<i class="iconfont icon-arrow-line-right"></i></a>';
                        html += '</li>';
                        html += '</ul>';

                        mobile_html += '<ul class="o_g add_item_xs">';
                        mobile_html += '<li class="o_u o_df_2-2 li_top">';
                        mobile_html += '<p class="prod_type">' + type + '</p>';
                        mobile_html += ' <p class="prod_time">' + enterTime + '</p>';
                        mobile_html += '</li>';
                        mobile_html += '<li class="o_u o_df_2-2 li_mid">';
                        mobile_html += '<p class="prod_title">产品名称 : </p>';
                        mobile_html += '<p class="prod_name">' + parentPrdName + '</p>';
                        mobile_html += '</li>';
                        mobile_html += '<li class="o_u o_df_2-2 li_mid">';
                        mobile_html += '<p class="prod_title">产品型号 : </p>';
                        mobile_html += '<p class="prod_size">' + modelName + '</p>';
                        mobile_html += '</li>';
                        mobile_html += '<li class="o_u o_df_2-2 li_bottom">';
                        mobile_html += '<p class="prod_status oringe">' + woidStatusName + '</p>';
                        mobile_html += '<a class="prod_gosee" href="javascript:;" onclick="getDetail(\'' + woid + '\')">' +
                            '查看详情<i class="iconfont icon-arrow-line-right"></i></a>';
                        mobile_html += '</li>';
                        mobile_html += '</ul>';
                    }
                    $("#js_list_item").append(html);
                    $("#js_list_mobile").append(mobile_html);
                }
            }
        },
        error:function(){

        }
    });
}

// 跳转服务详情页
function getDetail(woid) {
    window.location.href = siteConfig.domain + "/service/service_record/index.shtml?woid=" + woid;
}

function init() {
    var screenWidth = document.body.offsetWidth;
    var screenHeight = document.body.offsetHeight;
    var scrollTop = $(document).scrollTop();
    var Popup_top = screenWidth * 0.05;
    if(screenWidth > 991) {
        Popup_top = Popup_top + scrollTop;
        $(".js_service_pup").css("top", Popup_top);
    } else {
        Popup_top = screenWidth * 0.1 + scrollTop;
        $(".js_service_pup").css("top", Popup_top);
    }
    if(screenWidth <= 575) {
        $("#code_serve").attr("ph", "验证码");
        $("#code_serve").val("验证码");
    } else {
        $("#code_serve").attr("ph", "图形验证码");
        $("#code_serve").val("图形验证码");
    }
}


//关闭弹窗
$(".js_close_pup").click(function() {

    $(".Validform_checktip").removeClass("Validform_wrong").removeClass("Validform_right");
    $(".Validform_checktip").html(""); //重置提示信息
    $(".js_pup_wrap").addClass("js_hide");
    $(".js_shade_up").addClass("js_hide");//隐藏所有弹层
    $(".js_shade_up").removeClass("show");
    $(".service_pup").css("display", "none");
});

/**
 * 服务进度查询 END
 */