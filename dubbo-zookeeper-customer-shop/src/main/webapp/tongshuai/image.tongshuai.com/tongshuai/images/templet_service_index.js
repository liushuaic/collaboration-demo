/*-----------------------------------------------------------------------------
* @Description:  模板-服务首页
* @author:      张静
* @date        2018.02.09
* ---------------------------------------------------------------------------*/
//创建滚动条
var templet_isSubmiting=false;
var phoneblurVal="";
var bar = $(".js_scroll").oScrollBar();

$(".js_searchIcon").on("click",function(){ //点击搜索
    serviceSearch();
})
function serviceSearch(){ //搜索方法
    var word = $("#js_serviceSearch").val();
    if($.trim(word)!="" && $.trim(word)!="请输入产品型号、名称或关键词获取服务支持"){
        if(word.indexOf('\'')<0){
            word = delHtmlTag(word);
            word = htmldecode(word);
            word=encodeURIComponent(word);
            window.location.href='http://image.tongshuai.com/service/product_support/cooling/troubles/index.shtml?searchWord='+word;
        }
    }else{
        alert("搜索不能为空");
    }
}

//去除所有html代码
function delHtmlTag(str){
    return str.replace(/<[^>]+>/g,"");//去掉所有的html标记
}
//转义特殊字符
function htmldecode(str) {
    //str = str.replace(/&amp;/gi, '&');
    //str = str.replace(/&nbsp;/gi, ' ');
    //str = str.replace(/&quot;/gi, '"');
    //str = str.replace(/&#39;/g, "'");
    //str = str.replace(/&lt;/gi, '<');
    //str = str.replace(/&gt;/gi, '>');
    //str = str.replace(/&ensp;/gi, '>');
    //str = str.replace(/&#40;/g, "(");
    //str = str.replace(/&#41;/g, ")");
    str = str.replace(/<br[^>]*>(?:(rn)|r|n)?/gi, 'n');

    //增加判断是否输入单引号或<script>标签等
    //str = str.replace(/\'/g, "\\'");
    //str=str.replace(/\!/g,"");
    //str=str.replace(/\@/g,"");
    //str=str.replace(/\?/g,"");
    //str=str.replace(/\%/g,"");
    return str;
}

//为特殊字符加转义符
function changeSymbol(seaWord){
    //var spWords = new Array("/","）","（","(",")","*","-");//特殊字符
    var spWords = new Array("）","（","(",")","*");//特殊字符
    var singleWord = "";
    var newWord = "";

    if(seaWord!=""){
        for(var i=0;i<seaWord.length;i++){
            singleWord = seaWord.charAt(i);
            for(var j=0;j<spWords.length;j++){
                if(spWords[j]==singleWord){
                    singleWord="\\"+singleWord;
                }
            }
            newWord = newWord+singleWord;
        }
    }
    return newWord;
}
//键入内容下拉提示展示内容
function productShow(){
    $(".search_banner_list").css("visibility", "hidden");//没有数据下拉提示框隐藏
    var searchWord = $("#js_serviceSearch").val();
    searchWord = delHtmlTag(searchWord);
    searchWord = htmldecode(searchWord);
    //searchWord=encodeURIComponent(searchWord);
    if(searchWord!=''&& searchWord!=null && searchWord!="请输入产品型号、名称或关键词获取服务支持"){
        $.ajax({
            url:siteConfig.domain+"/interaction-search/front/recommendation/list",
            applicationType: true,
            data:JSON.stringify({
                "pageNo": 1,
                "pageSize": 5,
                "strWhere": "modelno=%"+changeSymbol(searchWord)+"% or pname=%"+changeSymbol(searchWord)+"%"
            }),
            success_cb:function(data){
                var proData = data.data;
                if(proData!=null&&proData!=""){
                    var proDataList = proData.entities.length;//产品个数
                    if(proDataList==0){
                        $(".search_banner_list").css("visibility", "hidden");//没有数据下拉提示框隐藏
                    }else{
                        $(".search_banner_list").css("visibility", "visible");//展示下拉提示框
                        var liList="";
                        for(var i=0; i<proDataList; i++ ){
                            liList+='<li class="list_li">';
                            if(proData.entities[i].modelno.indexOf(searchWord)==-1 && proData.entities[i].pname.indexOf(searchWord)!=-1){//展示型号
                                liList+='<a href="'+proData.entities[i].docpuburl+'">'+proData.entities[i].pname+'</a>';
                            }else if(proData.entities[i].pname.indexOf(searchWord)==-1 && proData.entities[i].modelno.indexOf(searchWord)!=-1){//展示名称
                                liList+='<a href="'+proData.entities[i].docpuburl+'">'+proData.entities[i].modelno+'</a>';
                            }else{
                                liList+='<a href="'+proData.entities[i].docpuburl+'">'+proData.entities[i].modelno+'</a>';
                            }

                            liList+='</li>';
                        }
                        $(".js_scroll").html("");//清空数据
                        $(".js_scroll").append(liList);//添加下拉提示内容
                        bar.init();//
                        if($(".o_scrollWin li").length<=4){
                            $(".js_list_search_active").addClass("less_4");
                        }else{
                            $(".js_list_search_active").removeClass("less_4");
                        }
                    }
                }else{
                    $(".search_banner_list").css("visibility", "hidden");//没有数据下拉提示框隐藏
                }

            }
        });
    }else{
        $(".search_banner_list").css("visibility", "hidden");//没有数据下拉提示框隐藏
    }

}
/**
 * 处理键盘按下后弹起的事件
 * @param event
 */
function processKeyup(event) {
    var myEvent = event || window.event;
    var keyCode = myEvent.keyCode;

    if (keyCode == 13) {//回车键
        serviceSearch();
        //输入是字母，或者退格键则需要重新请求
    } else {
        productShow();
    }
}

$("#js_serviceSearch").keyup(function(event){
    processKeyup(event);
});
$("#js_serviceSearch").focus(function(){
    productShow();
});

/**
 * 服务进度查询 by shiyuanyuan on 2018年3月1日17:30:44
 */
$("#js_service_status").click(function () {
    if (istrsidssdssotoken()) {
        // 已登录，跳转到个人中心-售后服务页面
        window.location.href = siteConfig.userUrl + "/service/index.shtml";
    } else {
        // 未登录，显示弹层，并刷新验证码；同时清空输入框的内容
        //init();
        var screenWidth = document.body.offsetWidth;
        //var screenHeight = document.body.offsetHeight;
        var scrollTop = $(document).scrollTop();
        var Popup_top = screenWidth * 0.05;
        if(screenWidth > 991) {
            Popup_top = Popup_top + scrollTop;
            $(".js_service_pup").css("top", Popup_top);
        } else {
            Popup_top = screenWidth * 0.1 + scrollTop;
            $(".js_service_pup").css("top", Popup_top);
        }

        $(".js_pup_wrap").removeClass("js_hide");
        $(".js_pup_status").css("display", "block");
        $(".js_shade_up").removeClass("js_hide");
        $(".js_shade_up").addClass("show");
        //$("#code_serve").val("");
        //$("#ph_serve").val("");
        var now_width=document.body.offsetWidth;
        if(now_width>575){
            $("#code_serve").val("图形验证码");
            $("#ph_serve").val("请输入联系人手机号");
            $("#informationCode").val("短信验证码");
            $("#code_serve").css("color","#ccc");
            $("#ph_serve").css("color","#ccc");
            $("#informationCode").css("color","#ccc");

        }else{
            $("#code_serve").val("验证码");
            $("#ph_serve").val("请输入联系人手机号");
            $("#informationCode").val("短信验证码");
            $("#code_serve").css("color","#ccc");
            $("#ph_serve").css("color","#ccc");
            $("#informationCode").css("color","#ccc");
        }

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

//短信验证模块验证
function infoInputCode(){
    var $model = $('#informationCode');
    var infoText = $model.val();
    var errorText = $model.attr('errormsg');
    var nullText = $model.attr('nullmsg');
    var reg = /^[0-9]{6}$/;
    if(infoText!='短信验证码'&&infoText!=""){
        if(infoText.lengt<6||!reg.test(infoText)){
            $model.siblings('.Validform_checktip').html(errorText);
            $model.addClass('Validform_error');
            $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
        }else{
            $model.removeClass('Validform_error');
            $model.siblings('.Validform_checktip').addClass("Validform_right");
            return true;
        }
    }else{
        $model.siblings('.Validform_checktip').html(nullText);
        $model.addClass('Validform_error');
        $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
    }
}
$('#informationCode').blur(function(){
    infoInputCode();
})

$("#code_serve").blur(function () {
    // 清除之前的错误信息提示
    $("#ph_serve").removeClass("Validform_error");
    $(".js_ph").addClass("Validform_right").removeClass("Validform_wrong");
    $(".js_ph").html("");
    $("#code_serve").removeClass("Validform_error");
    $(".js_code").addClass("Validform_right").removeClass("Validform_wrong");
    $(".js_code").html("");
    $(".js_hasStatus").css("display", "none");
    phoneYanzheng();
    codeYanzheng();
    // // 对手机号的校验
    // var phone = $("#ph_serve").val();
    // // 非空的校验
    // if (phone == "" || phone == null || typeof(phone) == "undefined" || phone == "null") {
    //     $("#ph_serve").addClass("Validform_error");
    //     $(".js_ph").removeClass("Validform_right").addClass("Validform_wrong");
    //     $(".js_ph").html("<i class='iconfont icon-information-solid'></i>请输入手机号码");
    // } else {
    //     // 不为空，校验长度
    //     if (phone.length != 11) {
    //         $("#ph_serve").addClass("Validform_error");
    //         $(".js_ph").removeClass("Validform_right").addClass("Validform_wrong");
    //         $(".js_ph").html("<i class='iconfont icon-information-solid'></i>请输入正确的手机号码");
    //     } else {
    //         $("#ph_serve").removeClass("Validform_error");
    //         $(".js_ph").addClass("Validform_right").removeClass("Validform_wrong");
    //         $(".js_ph").html("");
    //     }
    //     // 做合法性的校验
    //     var result = isPoneAvailable(phone);
    //     if (result == false) {
    //         $("#ph_serve").addClass("Validform_error");
    //         $(".js_ph").removeClass("Validform_right").addClass("Validform_wrong");
    //         $(".js_ph").html("<i class='iconfont icon-information-solid'></i>请输入正确的手机号码");
    //     } else {
    //         $("#ph_serve").removeClass("Validform_error");
    //         $(".js_ph").addClass("Validform_right").removeClass("Validform_wrong");
    //         $(".js_ph").html("");
    //     }
    // }

    // // 验证码的校验
    // var code = $("#code_serve").val();
    // if (code == "" || code == null || typeof(code) == "undefined" || code == "图形验证码" || code == "验证码" || code == "null") {
    //     $("#code_serve").addClass("Validform_error");
    //     $(".js_code").removeClass("Validform_right").addClass("Validform_wrong");
    //     $(".js_code").html("<i class='iconfont icon-information-solid'></i>请输入验证码");
    // } else {
    //     // 长度校验
    //     if(code.length != 5) {
    //         $("#code_serve").addClass("Validform_error");
    //         $(".js_code").removeClass("Validform_right").addClass("Validform_wrong");
    //         $(".js_code").html("<i class='iconfont icon-information-solid'></i>验证码错误或失效");
    //     } else {
    //         $("#code_serve").removeClass("Validform_error");
    //         $(".js_code").addClass("Validform_right").removeClass("Validform_wrong");
    //         $(".js_code").html("");
    //         // 验证码合法，调用服务拉取近三个月的信息
    //         getRecentList(phone);
 
    //     }
    // }

})

$('#ph_serve').blur(function(){
    phoneYanzheng();
})
$('#js_submit_info').click(function(){
    if(phoneYanzheng()&&codeYanzheng()&&infoInputCode()){
        getRecentList($("#ph_serve").val());
    }
});

//infoInputCode
function codeYanzheng(){
    // 验证码的校验
    var code = $("#code_serve").val();
    if (code == "" || code == null || typeof(code) == "undefined" || code == "图形验证码" || code == "验证码" || code == "null") {
        $("#code_serve").addClass("Validform_error");
        $(".js_code").removeClass("Validform_right").addClass("Validform_wrong");
        $(".js_code").html("<i class='iconfont icon-information-solid'></i>请输入图形验证码");
    } else {
        // 长度校验
        if(code.length != 5) {
            $("#code_serve").addClass("Validform_error");
            $(".js_code").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_code").html("<i class='iconfont icon-information-solid'></i>图形验证码有误，请重新输入");
        } else {
            $("#code_serve").removeClass("Validform_error");
            $(".js_code").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_code").html("");
            // 验证码合法，调用服务拉取近三个月的信息
            return true;
            // getRecentList(phone);
        }
    }
}


function phoneYanzheng(){
// 对手机号的校验
    var phone = $("#ph_serve").val();
    // 非空的校验
    if (phone == "" || phone == null || typeof(phone) == "undefined" || phone == "null"|| phone == "请输入联系人手机号") {
        $("#ph_serve").addClass("Validform_error");
        $(".js_ph").removeClass("Validform_right").addClass("Validform_wrong");
        $(".js_ph").html("<i class='iconfont icon-information-solid'></i>请输入手机号");
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
            return true;
        }
    }
}

// 正则校验手机号的合法性
function isPoneAvailable(str) {
    var myreg=/^[1][3-9][0-9]{9}$/;
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
    var phoneCodeVal=$.trim($("#informationCode").val());//短信验证码
    if ((phoneCodeVal == "短信验证码" || phoneCodeVal == "" || phoneCodeVal == null)) {
        $('#informationCode').addClass("Validform_error");
        $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
        $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>请输入短信验证码');

        return;
    }
    $.ajax({
        url : siteConfig.domain + "/interaction-service/queryState/queryServicesListByPhone",
        data : {
            phone : phone,
            phoneCode:phoneCodeVal
        },
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
                        if (modelName == "null" || modelName == null || modelName == "") {
                            modelName = "";
                        }
                        var time = new Date(result.enterTime.replace(/\-/g,'/'));
                        var enterTime = time.getFullYear() + "-" + (("0" + (time.getMonth() + 1)).slice(-2))
                            + "-" + (("0" + (time.getDate())).slice(-2)); // 申请时间
                        var mobileEnterTime = time.getFullYear() + "-" + (("0" + (time.getMonth() + 1)).slice(-2))
                            + "-" + (("0" + (time.getDate())).slice(-2)) + "&nbsp;" + (("0" + (time.getHours())).slice(-2))
                            + ":" + (("0" + (time.getMinutes())).slice(-2)); // 申请时间
                        var woidStatus = result.woidStatus; // 状态码
                        var woidStatusName = result.woidStatusName; // 状态名称
                        var type = result.reqServiceType; // 类型
                        if (type == null || type == "null" || type == "") {
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
                        if (woidStatus == 3) {
                            html += '<p class="prod_status green">' + woidStatusName + '</p>';
                        } else {
                            html += '<p class="prod_status oringe">' + woidStatusName + '</p>';
                        }
                        html += '<a class="prod_gosee" href="javascript:;" onclick="getDetail(\'' + woid + '\')">' +
                            '查看详情<i class="iconfont icon-arrow-line-right"></i></a>';
                        html += '</li>';
                        html += '</ul>';

                        mobile_html += '<ul class="o_g add_item_xs">';
                        mobile_html += '<li class="o_u o_df_2-2 li_top">';
                        mobile_html += '<p class="prod_type">' + type + '</p>';
                        mobile_html += ' <p class="prod_time">' + mobileEnterTime + '</p>';
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
                        if (woidStatus == 3) {
                            mobile_html += '<p class="prod_status green">' + woidStatusName + '</p>';
                        } else {
                            mobile_html += '<p class="prod_status oringe">' + woidStatusName + '</p>';
                        }
                        mobile_html += '<a class="prod_gosee" href="javascript:;" onclick="getDetail(\'' + woid + '\')">' +
                            '查看详情</a>';
                        mobile_html += '</li>';
                        mobile_html += '</ul>';
                    }
                    $("#js_list_item").append(html);
                    $("#js_list_mobile").append(mobile_html);
                }
            }else{
                $(".js_hasStatus").css("display", "none");
                $('#informationCode').addClass("Validform_error");
                $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
                $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>'+returnData.resultMsg);
                $("#js_code").click();//仅验证码错误才重新刷新验证码
            }
        },
        error_cb: function (responseT) {
            var responseT = JSON.parse(responseT.responseText); //由JSON字符串转换为JSON对象
            var error=responseT.resultMsg;
            if(error.indexOf("短信验证码不正确")>0){
                $('#informationCode').addClass("Validform_error");
                $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
                $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>短信验证码不正确');
            }else{
                globalShade2("提交失败,请稍后重试...", 2, 2000);
            }
            $("#js_code").click();//仅验证码错误才重新刷新验证码
        }
    });
}

// 跳转服务详情页
function getDetail(woid) {
    window.location.href = siteConfig.domain + "/service/service_record/index.shtml?woid=" + woid;
}

var screenWidth_new = document.body.offsetWidth;
function init() {
    var screenWidth = document.body.offsetWidth;

    /*var screenHeight = document.body.offsetHeight;
     var scrollTop = $(document).scrollTop();
     var Popup_top = screenWidth * 0.05;
     if(screenWidth > 991) {
         Popup_top = Popup_top + scrollTop;
         $(".js_service_pup").css("top", Popup_top);
     } else {
         Popup_top = screenWidth * 0.1 + scrollTop;
         $(".js_service_pup").css("top", Popup_top);
     }*/
    if(screenWidth <= 575) {
        $("#code_serve").attr("ph", "验证码");
        //$("#code_serve").val("验证码");
    } else {
        $("#code_serve").attr("ph", "图形验证码");
        //$("#code_serve").val("图形验证码");
    }
}

/**
 * 服务进度查询 END
 */

/**
 * 弹层关闭打开 start
 */
//关闭弹窗
$(".js_close_pup").click(function() {
    $("#ph_serve").blur();
    $("#code_serve").blur();
    $("#informationCode").blur();
    $("#informationCode").removeClass("Validform_error");
    $(".js_smsCode").text("发送验证短信");
    $(".js_smsCode").removeClass("l-btn-disable");
    //		Validform_status.resetForm();
    $(".Validform_checktip").removeClass("Validform_wrong").removeClass("Validform_right");
    $(".Validform_checktip").html(""); //重置提示信息
    $("#ph_serve").removeClass("Validform_error");
    $("#code_serve").removeClass("Validform_error");
    $(".js_pup_wrap").addClass("js_hide");
    $(".js_shade_up").addClass("js_hide"); //隐藏所有弹层
    $(".js_shade_up").removeClass("show");
    $(".service_pup").css("display", "none");
    screenWidth_new = document.body.offsetWidth;
});
$(".js_policy").click(function() {
    //init();
    var screenWidth = document.body.offsetWidth;
    //var screenHeight = document.body.offsetHeight;
    var scrollTop = $(document).scrollTop();
    var Popup_top = screenWidth * 0.05;
    if(screenWidth > 991) {
        Popup_top = Popup_top + scrollTop;
        $(".js_service_pup").css("top", Popup_top);
    } else {
        Popup_top = screenWidth * 0.1 + scrollTop;
        $(".js_service_pup").css("top", Popup_top);
    }
    $(".js_pup_wrap").removeClass("js_hide");
    $(".js_shade_up").removeClass("js_hide");
    $(".js_shade_up").addClass("show");
    $(".js_pup_policy").css("display", "block");
})
$(".js_downLoad").click(function() {
    //init();
    var screenWidth = document.body.offsetWidth;
    //var screenHeight = document.body.offsetHeight;
    var scrollTop = $(document).scrollTop();
    var Popup_top = screenWidth * 0.05;
    if(screenWidth > 991) {
        Popup_top = Popup_top + scrollTop;
        $(".js_service_pup").css("top", Popup_top);
    } else {
        Popup_top = screenWidth * 0.1 + scrollTop;
        $(".js_service_pup").css("top", Popup_top);
    }
    $(".js_pup_wrap").removeClass("js_hide");
    $(".js_shade_up").removeClass("js_hide");
    $(".js_shade_up").addClass("show");
    $(".js_pup_downLoad").css("display", "block");
})
$(window).resize(function() {
    init();
    if(screenWidth_new != document.body.offsetWidth){
        screenWidth_new=document.body.offsetWidth;
        var screenWidth = document.body.offsetWidth;
        //var screenHeight = document.body.offsetHeight;
        var scrollTop = $(document).scrollTop();
        var Popup_top = screenWidth * 0.05;
        if(screenWidth > 991) {
            Popup_top = Popup_top + scrollTop;
            $(".js_service_pup").css("top", Popup_top);
        } else {
            Popup_top = screenWidth * 0.1 + scrollTop;
            $(".js_service_pup").css("top", Popup_top);
        }

    }

})

//验证码
//获取短信验证码
$(".js_smsCode").mousedown(function(){
    if(templet_isSubmiting){//正在提交
        globalShade2('正在提交，请稍后','3');
        return;
    }
    if($(".js_smsCode").hasClass("l-btn-disable")){
        return;
    }
    var phoneValue = $("#ph_serve").val();
    var imgCodeValue=$("#code_serve").val();
    if(codeYanzheng()&&phoneYanzheng()){
        $("#informationCode").removeClass("Validform_error");
        $(".js_smserror").removeClass("Validform_wrong").addClass("Validform_right").html("");
        templet_isSubmiting = true;
        $.ajax({
            url:siteConfig.domain+ "/interaction-service/queryState/sendSMS",
            type: "get",
            dataType: "json",
            data: {
                "code":imgCodeValue,
                "phone":phoneValue
            },
            csrf: true,
            success_cb: function (data) {
                if (data.isSuccess) {
                    var result=data.data
                    if(result=true){
                        $(".js_smsCode").addClass("l-btn-disable");//置灰按钮
                        $(".js_smsCode").html('<span id="timeremain">59</span>秒重新发送');
                        clearInterval(sendMsgTimer);//清除计数器
                        remaintimer();//倒计时时间
                        /*setTimeout(function () {
                            $(".js_smsCode").removeClass("l-btn-disable");
                            $(".js_smsCode").html("重新发送");
                        },59000);*/
                        templet_isSubmiting = false;
                    }
                }else{
                    var resultMsg=data.resultMsg;
                    if("手机号格式不正确，请重新输入"==resultMsg){
                        $('#ph_serve').addClass("Validform_error");
                        $('.js_ph').removeClass("Validform_right").addClass("Validform_wrong");
                        $('.js_ph').html('<i class="iconfont icon-information-solid"></i>手机号码不正确');
                    }else if("请输入手机号"==resultMsg){
                        $('#ph_serve').addClass("Validform_error");
                        $('.js_ph').removeClass("Validform_right").addClass("Validform_wrong");
                        $('.js_ph').html('<i class="iconfont icon-information-solid"></i>请输入手机号');

                    }else if("图形验证码有误，请重新输入"==resultMsg){
                        $('#code_serve').addClass("Validform_error");
                        $('.js_code').removeClass("Validform_right").addClass("Validform_wrong");
                        $('.js_code').html('<i class="iconfont icon-information-solid"></i>图形验证码有误，请重新输入');
                        $("#js_code").click();//仅验证码错误才重新刷新验证码
                    }else if("短信验证码不正确"==resultMsg){
                        $('#informationCode').addClass("Validform_error");
                        $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
                        $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>短信验证码不正确');
                    }else {
                        if(resultMsg=="一分钟内只能请求一次验证码"){
                            $('#informationCode').addClass("Validform_error");
                            $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
                            $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>您的发送太频繁，请一分钟再试');
                        }else{
                            $('#informationCode').addClass("Validform_error");
                            $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
                            $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>'+resultMsg);
                        }
                        phoneblurVal=$("#ph_serve").val();
                    }
                    templet_isSubmiting = false;
                }
            },error_cb: function (responseT) {
                var responseT = JSON.parse(responseT.responseText); //由JSON字符串转换为JSON对象
                var error=responseT.resultMsg;
                if(error.indexOf("短信验证码不正确")>0){
                    phoneblurVal=$("#ph_serve").val();
                    $('#informationCode').addClass("Validform_error");
                    $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
                    $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>短信验证码不正确');
                }else if(error.indexOf("一分钟内只能请求一次验证码")>0){
                    phoneblurVal=$("#ph_serve").val();
                    $('#informationCode').addClass("Validform_error");
                    $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
                    $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>一分钟内只能请求一次验证码');
                }else if(error.indexOf("一天内只能请求5次验证码")>0){
                    phoneblurVal=$("#ph_serve").val();
                    $('#informationCode').addClass("Validform_error");
                    $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
                    $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>一天内只能请求5次验证码');

                }else if(error.indexOf("同一个IP每天只能请求50次验证码")>0){
                    phoneblurVal=$("#ph_serve").val();
                    $('#informationCode').addClass("Validform_error");
                    $('.js_smserror').removeClass("Validform_right").addClass("Validform_wrong");
                    $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>同一个IP每天只能请求50次验证码');

                }else{
                    globalShade2("提交失败,请稍后重试...", 2, 2000);
                }
                $("#js_code").click();//仅验证码错误才重新刷新验证码
                templet_isSubmiting = false;
            }
        })
    }

})
//发送短信倒计时时间
var sendMsgTimer;
function remaintimer(){
    sendMsgTimer=setInterval(function () {
        var remainTime=$("#timeremain").html();
        remainTime=remainTime-1;
        if(remainTime<=0){
            remainTime=1;
            $(".js_smsCode").removeClass("l-btn-disable");
            $(".js_smsCode").html("重新发送");
        }
        $("#timeremain").html(remainTime);
    },1000)
}
function isNull(val) {
    if (val == null || val == "" || val == "undefined" || val == "null" || val == "NULL") {
        return true;
    }
    return false;
}

/*$('#code_serve').focus(function(){
    $('.js_smsCode').mouseover(function(){
        if($('#code_serve').val()!="图形验证码"){
            $('#code_serve').blur();
        }
    })
})*/
//修改手机号删除错误提示
$("#ph_serve").blur(function () {
    var phoneAfterval=$("#ph_serve").val();
    if(phoneblurVal!=phoneAfterval){
        $("#informationCode").removeClass("Validform_error");
        $(".js_smserror").removeClass("Validform_wrong").addClass("Validform_right");
    }

});