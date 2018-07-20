/*-----------------------------------------------------------------------------
 * @Description:  模板-服务模块-报装报修页面
 * @author:      liumengfei
 * @date        2018.03.28
 * ---------------------------------------------------------------------------*/

var templet_isSubmiting=false;
var phoneblurVal="";
//下拉框初始化
var parentPrdType = $("#js_productType").oSelect();
var PrdType = $("#js_productNo").oSelect();
var provinceBox = $("#js_notlog_province").oSelect();
var cityBox = $("#js_notlog_ctiy").oSelect();
var areaBox = $("#js_notlog_area").oSelect();
$("#js_unbindmob").oSelect().init();

//地址信息id
var saveId = "";
//服务类型
var serviceType = 1;


//地址表单验证
var address = $(".js_addAddress").Validform({
    btnSubmit: ".js-addressBtn",
    tiptype: function (msg, o, cssctl) {
        if (!o.obj.is("form")) {//验证表单元素时o.obj为该表单元素，全部验证通过提交表单时o.obj为该表单对象;
            objtip = o.obj.parents(".js-formList").children('.form-error');
            cssctl(objtip, o.type);
            if (msg != "通过信息验证！") {
                objtip.show().html(msg);
            } else {
                objtip.hide();
            }
        } else {
            var objtip = o.obj.find("#msgdemo");
            cssctl(objtip, o.type);
            objtip.text(msg);
        }
    },
    callback: function (form) {//验证后保存地址
        var type = $("#js_addressSave").attr("type");
        if (type == 0) {
            saveAddressListInfo();
        } else if (type == 1) {
            updateAddressListInfo();
        }

        return false;
    }
});

/*-----------------------------------------------------------------------------
 *初始页面执行
 * ---------------------------------------------------------------------------*/


$(function () {

    /*if (istrsidssdssotoken()) {
        //初始化登录用户地址列表信息
        //getAddressListInfo();//登录后不展示个人中心地址
        $(".dizhiyangshi").hide();
    } else {*/
        // $(".js_addressTitle").html("联系地址")
        $("#xinzengdizhi").hide();//隐藏"新增地址"按钮
        $("#dizhianniu").hide();//隐藏"新增地址保存与取消"按钮
        $(".js_addAddress div").eq(0).removeClass("log-cont-top-box").addClass("notlog-cont-top-box");
        $(".dizhiyangshi").show();
    /*}*/

    //获取url中参数datatype，确定是在线报修页还是预约安装页
    var datatype = getParam("datatype");
    if (datatype == 1) {
        $(".js-this-title").html("预约安装");
        $(".thisTitle").html("预约安装");
        document.title = '预约安装-统帅官网';
        $("#miaobaoxie").html("预约安装");
        serviceType = 2;
    } else {
        if (datatype == "" || datatype == undefined || datatype == null) {
            datatype = 2;
        }
        $(".js-this-title").html("在线报修");
        $(".thisTitle").html("在线报修");
        document.title = '在线报修 - 统帅官网';
        $("#miaobaoxie").html("在线报修");
        serviceType = 1;
    }

    //初始化产品父类
    getMainProductType(0, 1);

    //初始化省下拉框
    getProvince();

    address.ignore('#phonequhao,#phone,#phonefenjihao');


    //判断当前时间是否大于18点，对时间控件的当天时间进行置灰
    $(window).resize(function () {
        var left = $('.member-personalinfo-listiptbox').offset().left;
    })
    var current_hour = new Date().getHours();
    var current_time = new Date();
    var tomTime = current_time.getDate();
    current_time.setDate(tomTime+1);

    if (current_hour >= 18) {
        if (window.innerWidth == undefined || window.innerWidth > 1199) {
            $(".js_Date").datetimepicker({
                language: 'zh-CN',      //语言
                weekStart: 0,           //一周从哪一天开始
                todayBtn: 1,            //底部显示“今天”
                autoclose: 1,           //选择后关闭选择器
                //todayHighlight: 1,      //高亮当前日期
                startView: 2,           //首先显示的视图
                minView: 2,             //视图
                forceParse: true,       //解析输入值
                format: "yyyy-mm-dd",   // 日期格式
                pickerPosition: "bottom-left",
                startDate: current_time     // 开始时间
            });

        } else {
            $('.js_Date').mobiscroll().date({
                preset: 'date',           //日期
                lang: "zh",               //语言
                display: 'center',
                dateFormat: 'yyyy-mm-dd', // 日期格式
                dateOrder: 'yymmdd',      //面板中日期排列格式
                minDate: current_time        //  最小时间
            });
        }
    } else {
        if (window.innerWidth == undefined || window.innerWidth > 1199) {
            $(".js_Date").datetimepicker({
                language: 'zh-CN',      //语言
                weekStart: 0,           //一周从哪一天开始
                todayBtn: 1,            //底部显示“今天”
                autoclose: 1,           //选择后关闭选择器
                //todayHighlight: 1,      //高亮当前日期
                startView: 2,           //首先显示的视图
                minView: 2,             //视图
                forceParse: true,       //解析输入值
                format: "yyyy-mm-dd",   // 日期格式
                pickerPosition: "bottom-left",
                startDate: new Date()     // 开始时间
            });

        } else {
            $('.js_Date').mobiscroll().date({
                preset: 'date',           //日期
                lang: "zh",               //语言
                display: 'center',
                dateFormat: 'yyyy-mm-dd', // 日期格式
                dateOrder: 'yymmdd',      //面板中日期排列格式
                minDate: new Date()        //  最小时间
            });
        }
    }


});


/*-----------------------------------------------------------------------------
 *表单内点击事件处理
 * ---------------------------------------------------------------------------*/


//产品父类下拉框点击事件
$('#js_productType').change(function () {
    var parentPrdID = $("#js_productType").find("option:selected").attr("prdId");
    if (parentPrdID == 0 || parentPrdID == undefined) {
        $('#js_productNo').html("");
        PrdType.init();
        PrdType.lose();

        return;
    }
    //获取产品子类下拉框数据
    getNextProductType(parentPrdID, 3);
    if (!$(".js_productSelectInput_2").next("div").hasClass("fenleitishi")) {
        $(".js_productSelectInput_2").after('<div class="fenleitishi o_u o_df_6-12   o_sm_12-12 o_xs_12-12 form-error  o_sm_1-2 o_xs_1-2 Validform_checktip Validform_wrong"><i class="iconfont icon-information-solid"></i> 请选择产品</div>');
    }
    var target_top = $("#js_product_info").offset().top;
    $("html,body").scrollTop(target_top);


});

//时间下拉框点击事件
$('#js_select_data').change(function () {
    //判断时间，对上门时间下拉框处理
    var current_time = getFormatDate();
    var select_time = $("#js_select_data").val();
    if (current_time == select_time) {
        var current_hour = new Date().getHours();
        hideTimeBox(current_hour);
    } else {
        $("#js_DateTime").prev(".list").find("ul li").show();
        $("#js_DateTime option").show();
        $("#js_DateTime").prev(".list").prev(".name").html("8:00~9:00");
    }
});


//“省”下拉框点击事件
$('#js_notlog_province').change(function () {
    var proCode = $("#js_notlog_province").find("option:selected").attr("proCode");
    if (proCode == 0 || proCode == undefined) {
        $('#js_notlog_ctiy').html("");
        cityBox.init();
        cityBox.lose();
        $('#js_notlog_area').html("");
        areaBox.init();
        areaBox.lose();

    } else {
        //获取“市”下拉框数据
        getCity(proCode);
    }

});

//“市”下拉框点击事件
$('#js_notlog_ctiy').change(function () {
    var cityId = $("#js_notlog_ctiy").find("option:selected").attr("cityCode");
    if (cityId == 0 || cityId == undefined) {

        $('#js_notlog_area').html("");
        areaBox.init();
        areaBox.lose();

    } else {
        //获取“区”下拉框数据
        getArea(cityId);
    }

});

//“新增地址”按钮点击事件
$(".js_memberAddressBtn").click(function () {
    $("#js_addressSave").attr("type", "0");
    resetForm();
    $(".js_addAddress").show();//显示新增表单
    // $(".js_memberAddressBtn").hide();//隐藏"新增地址"按钮

    var target_top = $("#js_address_div").offset().top;
    $("html,body").scrollTop(target_top);
});

//"取消"按钮点击事件
$('#js_addressCancel').click(function () {

    $(".js_addAddress").hide();//隐藏新增地址表单
    $(".js_memberAddressBtn").show();//显示"新增地址"按钮

});

//“提交申请”按钮，点击事件
$("#tijiaoshenqing").click(function () {

    //提交报修报装表单信息
    submitInfo();

});

//用户地址选择“单选按钮”点击事件
$('.js_addressRadio').live('click', function () {
    $(this).parents('.js-select').addClass('address-select-true').siblings().removeClass('address-select-true');
    var address_id = $(".address-select-true a.xiugai").attr("address_id");
    getThisAddressInfo(address_id);

});

//“修改”按钮点击事件
$(".xiugai").live('click', function () {
    resetForm();
    var address_id = $(this).attr("address_id");
    getThisAddressInfo(address_id);

    $("#js_addressSave").attr("type", "1");
    $(".js_addAddress").show();//显示地址表单
    // $(".js_memberAddressBtn").hide();//隐藏"新增地址"按钮
    var target_top = $("#js_address_div").offset().top;
    $("html,body").scrollTop(target_top);
});

//区号输入框失去焦点事件
$("#phonequhao").focusout(function () {
    if ((this.value.length >= 3 && this.value.length <= 4) || this.value.length == 0) {
        $('#phonequhao').parents('.js-formList').find('.form-error').html("<i class='iconfont icon-information-solid'></i>电话号码不正确").hide();
    } else {
        $('#phonequhao').parents('.js-formList').find('.form-error').html("<i class='iconfont icon-information-solid'></i>电话号码不正确").show();
    }
});

//电话号号输入框失去焦点事件
$("#phone").focusout(function () {
    if (this.value.length == 8 || this.value.length == 0) {
        $('#phonequhao').parents('.js-formList').find('.form-error').html("<i class='iconfont icon-information-solid'></i>电话号码不正确").hide();
    } else {
        $('#phonequhao').parents('.js-formList').find('.form-error').html("<i class='iconfont icon-information-solid'></i>电话号码不正确").show();
    }
});

/*-----------------------------------------------------------------------------
 *数据处理，页面样式控制方法
 * ---------------------------------------------------------------------------*/

//根据当前时间获取AddDayCount后的日期
function getNextDay(AddDayCount) {
    var dd = new Date();
    dd.setDate(dd.getDate() + AddDayCount);//获取AddDayCount天后的日期
    var y = dd.getFullYear();
    var m = dd.getMonth() + 1;//获取当前月份的日期
    var d = dd.getDate();
    return y + "-" + m + "-" + d;
}

function getPhoneNextDay(AddDayCount) {
    var dd = new Date();
    dd.setDate(dd.getDate() + AddDayCount);//获取AddDayCount天后的日期
    var y = dd.getFullYear();
    var m = dd.getMonth() + 1;//获取当前月份的日期
    var d = dd.getDate();
    return y + "." + m + "." + d;
}


//获取url地址参数，参数是变量名称
function getParam(paramName) {
    paramValue = "";
    isFound = false;
    if (this.location.search.indexOf("?") == 0 && this.location.search.indexOf("=") > 1) {
        arrSource = decodeURIComponent(this.location.search).substring(1, this.location.search.length).split("&");
        i = 0;
        while (i < arrSource.length && !isFound) {
            if (arrSource[i].indexOf("=") > 0) {
                if (arrSource[i].split("=")[0].toLowerCase() == paramName.toLowerCase()) {
                    paramValue = arrSource[i].split("=")[1];
                    isFound = true;
                }
            }
            i++;
        }
    }
    return paramValue;
}


//按照格式（yyyy-MM-dd）获取当前时间
function getFormatDate() {
    var nowDate = new Date();
    var year = nowDate.getFullYear();
    var month = nowDate.getMonth() + 1 < 10 ? "0" + (nowDate.getMonth() + 1) : nowDate.getMonth() + 1;
    var date = nowDate.getDate() < 10 ? "0" + nowDate.getDate() : nowDate.getDate();
    return year + "-" + month + "-" + date;
}

//格式化时间数据
function formatterDateTime(data) {
    var dataTime;
    if (data != null && data != "") {
        var arr = data.split('-');
        var year = arr[0];
        var month = arr[1].length > 1 ? arr[1] : "0" + arr[1];
        var data = arr[2].length > 1 ? arr[2] : "0" + arr[2];
        dataTime = year + "-" + month + "-" + data;

    }
    return dataTime;

}

//根据当前时间，隐藏超过当前时间的下拉框数据
function hideTimeBox(current_hour) {
    var select_option_count = $("#js_DateTime option").length;
    for (var i = 0; i < select_option_count; i++) {
        var str = $("#js_DateTime option").eq(i).val();
        if (current_hour > str - 2) {

            $("#js_DateTime").prev(".list").find("ul li").eq(i).hide();
            $("#js_DateTime option").eq(i + 1).hide();

        } else {
            $("#js_DateTime").prev(".list").find("ul li").eq(i).show();
            $("#js_DateTime option").eq(i + 1).show();
        }

        if (current_hour + 3 == str) {
            var time = $("#js_DateTime option").eq(i).text();
            $("#js_DateTime").prev(".list").prev(".name").html(time);
        }

    }

}


//获取用户最新增加的地址的索引
/*function getMaxCreateTime() {
    var maxTime = new Date("2010-03-21 11:33:42.000").getTime();
    var temp;
    var maxIndex;
    for (var i = 0; i < $("#xinzengdizhi li").length; i++) {
        var createTime = $("#xinzengdizhi .js_addressRadio").eq(i).attr("createTime");
        if (createTime == null || createTime == "null") {
            createTime = "2010-03-21 11:33:42.000";
        }
        var e_1 = new Date(createTime).getTime();
        if (e_1 >= maxTime) {
            temp = e_1;
            e_1 = maxTime;
            maxTime = temp;

            maxIndex = i;
        }
    }
    return maxIndex;
}*/

//获取用户最新修改的地址的索引
/*function getMaxUpdateTime() {
    var maxTime = new Date("2010-03-21 11:33:42.000").getTime();
    var temp;
    var maxIndex;
    for (var i = 0; i < $("#xinzengdizhi li").length; i++) {
        var updateTime = $("#xinzengdizhi .js_addressRadio").eq(i).attr("updateTime");
        if (updateTime == null || updateTime == "null") {
            updateTime = "2010-03-21 11:33:42.000";
        }
        var e_1 = new Date(updateTime).getTime();
        if (e_1 >= maxTime) {
            temp = e_1;
            e_1 = maxTime;
            maxTime = temp;

            maxIndex = i;
        }
    }
    return maxIndex;
}*/

//校验座机号
function checkSeatNumber(phonequhaoVal, phoneVal, phonefenjihaoVal) {

    if ((phonequhaoVal.length >= 3 && phonequhaoVal.length <= 4) || phonequhaoVal.length == 0) {
        $('#phonequhao').parents('.js-formList').find('.form-error').html("<i class='iconfont icon-information-solid'></i>电话号码不正确").hide();
    } else {
        $('#phonequhao').parents('.js-formList').find('.form-error').html("<i class='iconfont icon-information-solid'></i>电话号码不正确").show();
        return false;
    }

    if (phoneVal.length == 8 || phoneVal.length == 0) {
        $('#phonequhao').parents('.js-formList').find('.form-error').html("<i class='iconfont icon-information-solid'></i>电话号码不正确").hide();
    } else {
        $('#phonequhao').parents('.js-formList').find('.form-error').html("<i class='iconfont icon-information-solid'></i>电话号码不正确").show();
        return false;
    }

    if (phonefenjihaoVal.length != 0 && (phoneVal.length == 0 || phonequhaoVal.length == 0)) {
        $('#phonequhao').parents('.js-formList').find('.form-error').html("<i class='iconfont icon-information-solid'></i>电话号码不正确").show();
        return false;
    }

    return true;

}


/*-----------------------------------------------------------------------------
 *调用服务，获取数据，将数据绘制到页面
 * ---------------------------------------------------------------------------*/

//获取产品父类数据
function getMainProductType(parentPrdID, brandName) {
    $.ajax({
        type: "GET",
        url: "/interaction-service/ProductType/ProductType?parentPrdID=" + parentPrdID + "&brandName=" + brandName,
        dataType: "json",
        async: true,
        success: function (data) {
            var addhtml = '<option value="0">产品父类</option>';
            var contdata = data.data;
            if (data.isSuccess) {

                for (var i = 0; i < contdata.length; i++) {
                    addhtml += '<option prdId="' + contdata[i].prdId + '">' + contdata[i].prdDes + '</option>';
                }
                $("#js_productType").html(addhtml);
                parentPrdType.init();
            }

        }
    });
}

//获取产品子类数据
function getNextProductType(parentPrdID, brandName) {
    $.ajax({
        type: "GET",
        url: "/interaction-service/ProductType/ProductType?parentPrdID=" + parentPrdID + "&brandName=" + brandName,
        dataType: "json",
        async: true,
        success: function (data) {
            var addhtml = '<option value="0">产品子类</option>';
            var contdata = data.data;
            if (data.isSuccess) {
                for (var i = 0; i < contdata.length; i++) {
                    addhtml += '<option prdId="' + contdata[i].prdId + '">' + contdata[i].prdDes + '</option>';
                }
                $('#js_productNo').html("");
                $("#js_productNo").append(addhtml);
                PrdType.init();
                $("#js_productNo").change(function(){
                    var proChildType = $.trim($("#js_productNo").val());//产品子类
                    if (proChildType == null || proChildType == "" || proChildType == 0) {
                        if (!$(".js_productSelectInput_2").next("div").hasClass("fenleitishi")) {
                            $(".js_productSelectInput_2").after('<div class="fenleitishi o_u o_df_6-12   o_sm_12-12 o_xs_12-12 form-error  o_sm_1-2 o_xs_1-2 Validform_checktip Validform_wrong"><i class="iconfont icon-information-solid"></i> 请选择产品</div>');
                        }
                        var target_top = $("#js_product_info").offset().top;
                        $("html,body").scrollTop(target_top);
                        return;
                    } else {
                        $(".fenleitishi").remove();
                    }
                })

            }

        }
    });
}


//获取省地区信息数据
function getProvince() {
    $.ajax({
        type: "GET",
        url: "/interaction-service/regionInfo/queryProvince",
        dataType: "json",
        async: true,
        success: function (data) {
            var addhtml = '<option value="0">请选择省</option>';
            var contdata = data.data;
            if (data.isSuccess) {
                for (var i = 0; i < contdata.length; i++) {
                    addhtml += '<option proCode="' + contdata[i].proCode + '">' + contdata[i].province + '</option>';
                }
                $("#js_notlog_province").append(addhtml);

                setTimeout(function () {
                    provinceBox.init();
                    $('#js_notlog_ctiy').html("");
                    cityBox.init();
                    cityBox.lose();
                    $('#js_notlog_area').html("");
                    areaBox.init();
                    areaBox.lose();
                }, 0);
            }

        }
    });
}

//获取市地区信息数据
function getCity(proCode) {
    $.ajax({
        type: "GET",
        url: "/interaction-service/regionInfo/queryCity?provinceId=" + proCode,
        dataType: "json",
        async: true,
        success: function (data) {
            var addhtml = '<option value="0">请选择市</option>';
            var contdata = data.data;
            if (data.isSuccess) {
                $('#js_notlog_ctiy').html("");
                for (var i = 0; i < contdata.length; i++) {
                    addhtml += '<option cityCode="' + contdata[i].cityCode + '">' + contdata[i].city + '</option>';
                }
                $("#js_notlog_ctiy").append(addhtml);
                cityBox.init();
                $('#js_notlog_area').html("");
                areaBox.init();
                areaBox.lose();
            }

        }
    });
}

//获取区地区信息数据
function getArea(cityId) {
    $.ajax({
        type: "GET",
        url: "/interaction-service/regionInfo/queryRegion?cityId=" + cityId,
        dataType: "json",
        async: true,
        success: function (data) {
            var addhtml = '<option value="0">请选择区</option>';
            var contdata = data.data;
            if (data.isSuccess) {
                $('#js_notlog_area').html("");
                for (var i = 0; i < contdata.length; i++) {
                    addhtml += '<option Code="' + contdata[i].code + '" regionCode="' + contdata[i].regionCode + '">' + contdata[i].regionName + '</option>';
                }
                $("#js_notlog_area").append(addhtml);
                areaBox.init();
            }
        }
    });
}


//查询用户地址列表信息
/*function getAddressListInfo() {
    $.ajax({
        url: "/hshop-user/front/userRegion/list",
        type: "post",
        dataType: "json",
        data: {
            "pageNo": 1,
            "pageSize": 10
        },
        login: true,
        success_cb: function (data) {
            if (data.isSuccess) {
                var addlist = data.data.entities;
                var count = addlist.length;
                if (count != 0) {
                    $(".js_memberAddressBtn").show();//显示"新增地址"按钮
                    $(".js_addAddress").hide();//隐藏"新增地址"表单
                    $(".js_lineInfo").html("");
                    var addhtml = "";
                    for (var i = 0; i < count; i++) {
                        var id = addlist[i].id;//地址id
                        var address = addlist[i].regionDetail;//详细地址
                        var isDefault = addlist[i].isDefault;//是否为默认地址  1:是 0:否
                        var customerName = addlist[i].customerName;//用户名
                        var mobilePhone = addlist[i].mobilePhone;//手机号

                        var province = addlist[i].provinceName;//省
                        var cityName = addlist[i].cityName;//市
                        var areaName = addlist[i].areaName;//区
                        var createTime = addlist[i].createTime;//区
                        var updateTime = addlist[i].updateTime;//区

                        if (isDefault == 1) {
                            addhtml += '<li class="address-select js-select address-select-true">';
                        } else {
                            addhtml += '<li class="address-select js-select">';
                        }
                        addhtml += '<div class=" select-icon l-radio"> <input createTime="' + createTime + '"  updateTime="' + updateTime + '" type="radio" class="js_addressRadio" name="cc" > </div>';
                        addhtml += '<div class="content-text">';
                        addhtml += '<span>' + customerName + '</span><i>' + mobilePhone + '</i>';
                        addhtml += '<p>' + province + ' ' + cityName + ' ' + areaName + ' ' + address + '</p></div>';
                        addhtml += '<a href="javascript:;" address_id="' + id + '" class="xiugai icon iconfont icon-pencil-solid"><i>修改</i></a></li>';
                    }
                    $(".js_lineInfo").html(addhtml);
                    $(".js_addressRadio").jq_qvote();

                    $(".address-select-true").find('span').eq(0).click();
                    $("#xinzengdizhi li.js-select div").eq(0).find('span').addClass("dianjibiaoqian");


                    //默认选中新增加或者新修改的地址
                    var type = $("#js_addressSave").attr("type");
                    if (type == 2) {
                        return;
                    } else if (type == 0) {

                        var index = getMaxCreateTime();
                        $('.js_addressRadio').eq(index).click();
                    } else {
                        var index = getMaxUpdateTime();
                        $('.js_addressRadio').eq(index).click();
                    }

                } else {
                    $(".js_addAddress").hide();//隐藏"新增地址"表单
                    $(".js_memberAddressBtn").show();//显示"新增地址"按钮
                }

            }
        }
    })
}*/

// 新增用户地址信息
/*function saveAddressListInfo() {

    var realnameVal = $.trim($("#realName").val());//联系人
    var mobileVal = $.trim($("#mobile").val());//手机号
    var phonequhaoVal = $.trim($("#phonequhao").val());//区号
    if (phonequhaoVal == "区号") {
        phonequhaoVal = "";
    }
    var phoneVal = $.trim($("#phone").val());//电话号
    if (phoneVal == "电话号") {
        phoneVal = "";
    }
    var phonefenjihaoVal = $.trim($("#phonefenjihao").val());//分机号
    if (phonefenjihaoVal == "分机号") {
        phonefenjihaoVal = "";
    }
    var provinceVal = $.trim($("#js_notlog_province").val());//省
    var cityVal = $.trim($("#js_notlog_ctiy").val());//市
    var areaVal = $.trim($("#js_notlog_area").val());//区
    var addressVal = $.trim($("#address").val());//地址
    var provinceCodeVal = $.trim($("#js_notlog_province option:selected").attr("proCode"));
    var cityCodeVal = $.trim($("#js_notlog_ctiy option:selected").attr("cityCode"));
    var areaCodeVal = $.trim($("#js_notlog_area option:selected").attr("regionCode"));


    //对座机号校验，并获取座机号
    var phoneCheck = checkSeatNumber(phonequhaoVal, phoneVal, phonefenjihaoVal);
    if (phoneCheck == false) {
        return;
    }
    var telPhoneVal = '';
    if (phonequhaoVal == "" && phonefenjihaoVal == "" && phoneVal == "") {
        telPhoneVal = '';
    } else {
        telPhoneVal = phonequhaoVal + ";" + phoneVal + ";" + phonefenjihaoVal;
    }

    if (areaVal == null || areaVal == "" || areaVal == 0) {
        $("#js_notlog_ctiy").parents('.js-formList').find('.form-error').show().html("<i class='iconfont icon-information-solid'></i> 请选择地址").addClass("Validform_checktip Validform_wrong");
        $("#js_notlog_ctiy").addClass("Validform_error");
        return;
    } else {
        $("#js_notlog_ctiy").parents('.js-formList').find('.form-error').hide().html("<i class='iconfont icon-information-solid'></i> 请选择地址").removeClass("Validform_checktip Validform_wrong");
        $("#js_notlog_ctiy").removeClass("Validform_error");
    }

    if (addressVal == "尽可能详细地填写街道、楼号、楼层、门牌号" || addressVal.length == 0) {
        $("#address").parents('.js-formList').find('.form-error').show().html("<i class='iconfont icon-information-solid'></i> 请填写详细地址");
        $("#address").parents('.textarea-box').addClass('textarea-box-error');
        return;
    }

    var data = {
        "customerName": realnameVal,
        "mobilePhone": mobileVal,
        "provinceName": provinceVal,
        "cityName": cityVal,
        "areaName": areaVal,
        "regionDetail": addressVal,
        "provinceId": provinceCodeVal,
        "cityId": cityCodeVal,
        "regionId": areaCodeVal,
        "telPhone": telPhoneVal
    }
    $.ajax({
        url: "/hshop-user/front/userRegion/save",
        type: "post",
        dataType: "json",
        data: data,
        login: true,
        csrf: true,
        success_cb: function (responseT) {
            if (responseT.isSuccess) {
                globalShade2("添加地址成功", 1, 2000);
                getAddressListInfo();//获取列表
                $(".js_addAddress").hide();//隐藏新增地址表单
                $(".js_memberAddressBtn").show();//显示"新增地址"按钮
                resetForm();
                getAddressListInfo();
            } else {//添加地址失败
                globalShade2(responseT.resultMsg, 2, 2000);
            }

        },
        error_cb: function (responseT) {
            var responseT = JSON.parse(responseT.responseText); //由JSON字符串转换为JSON对象
            globalShade2(responseT.resultMsg, 2, 2000);
        }
    });
}*/

//获取该条地址的信息
/*function getThisAddressInfo(id) {
    resetForm();
    saveId = id;
    var data = {id: id};
    $.ajax({
        url: "/hshop-user/front/userRegion/show",
        type: "get",
        data: data,
        dataType: "json",
        login: true,
        csrf: true,
        success_cb: function (data) {
            if (data.isSuccess) {
                var info = data.data;
                var proCode = "";

                //对修改地址表单赋值
                var realname = info.customerName;//用户姓名
                var mobile = info.mobilePhone;//手机号码
                var province = info.provinceName;//省
                var city = info.cityName;//市
                var region = info.areaName;//区
                var address = info.regionDetail; //地址
                address=converHtmlCode(address);//转义字符
                var id = info.id;//地址id
                var telPhone = info.telPhone;//区号 电话号 分机号
                var telPhone2 = telPhone.split(";"); //字符分割
                var telPhoneInput = [$("#phonequhao"), $("#phone"), $("#phonefenjihao")];
                for (var i = 0; i < telPhone2.length; i++) {
                    if (telPhone2[i].length > 0) {
                        telPhoneInput[i].val(telPhone2[i]);
                    }
                }
                $("#realName").val(realname);
                $("#mobile").val(mobile);
                $("#address").val(address);

                //对“省”下拉框赋值
                var province_box = $("#js_notlog_province option").length;
                for (var i = 0; i < province_box; i++) {
                    var province_value = $("#js_notlog_province option").eq(i).text();
                    if (province_value == province) {
                        $("#js_notlog_province option").eq(i).attr("selected", "true");
                        proCode = $("#js_notlog_province option").eq(i).attr("proCode");
                        getCityList(proCode);
                    }
                }

                provinceBox.init();


                //获取市地区信息数据
                function getCityList(proCode) {
                    $.ajax({
                        type: "GET",
                        url: "/interaction-service/regionInfo/queryCity?provinceId=" + proCode,
                        dataType: "json",
                        async: true,
                        success: function (data) {
                            var addhtml = '<option value="0">请选择市</option>';
                            var contdata = data.data;
                            var regionCityCode = "";
                            if (data.isSuccess) {
                                $('#js_notlog_ctiy').html("");
                                for (var i = 0; i < contdata.length; i++) {
                                    if (contdata[i].city == city) {
                                        addhtml += '<option selected="selected" cityCode="' + contdata[i].cityCode + '">' + contdata[i].city + '</option>';
                                        regionCityCode = contdata[i].cityCode;
                                        getAreaList(regionCityCode);
                                    } else {
                                        addhtml += '<option cityCode="' + contdata[i].cityCode + '">' + contdata[i].city + '</option>';
                                    }

                                }
                                $("#js_notlog_ctiy").append(addhtml);

                                cityBox.init();
                                $('#js_notlog_area').html("");
                                areaBox.init();
                                areaBox.lose();
                            }

                        }
                    });
                }
                //获取区地区信息数据
                function getAreaList(cityId) {
                    $.ajax({
                        type: "GET",
                        url: "/interaction-service/regionInfo/queryRegion?cityId=" + cityId,
                        dataType: "json",
                        async: true,
                        success: function (data) {
                            var addhtml = '<option value="0">请选择区</option>';
                            var contdata = data.data;
                            if (data.isSuccess) {
                                $('#js_notlog_area').html("");
                                for (var i = 0; i < contdata.length; i++) {
                                    if (contdata[i].regionName == region) {
                                        addhtml += '<option selected="selected" Code="' + contdata[i].code + '" regionCode="' + contdata[i].regionCode + '">' + contdata[i].regionName + '</option>';
                                    } else {
                                        addhtml += '<option Code="' + contdata[i].code + '" regionCode="' + contdata[i].regionCode + '">' + contdata[i].regionName + '</option>';
                                    }


                                }
                                $("#js_notlog_area").append(addhtml);
                                areaBox.init();
                            }
                        }
                    });
                }


            }
        }
    });

}*/

//修改用户地址信息
/*function updateAddressListInfo() {

    var realnameVal = $.trim($("#realName").val());//联系人
    var mobileVal = $.trim($("#mobile").val());//手机号
    var phonefenjihaoVal = $.trim($("#phonefenjihao").val());//分机号
    if (phonefenjihaoVal == "分机号") {
        phonefenjihaoVal = "";
    }
    var phoneVal = $.trim($("#phone").val());//电话号
    if (phoneVal == "电话号") {
        phoneVal = "";
    }
    var phonequhaoVal = $.trim($("#phonequhao").val());//区号
    if (phonequhaoVal == "区号") {
        phonequhaoVal = "";
    }

    var provinceVal = $.trim($("#js_notlog_province").val());//省
    var cityVal = $.trim($("#js_notlog_ctiy").val());//市
    var areaVal = $.trim($("#js_notlog_area").val());//区
    var addressVal = $.trim($("#address").val());//地址
    var provinceCodeVal = $.trim($("#js_notlog_province option:selected").attr("proCode"));
    var cityCodeVal = $.trim($("#js_notlog_ctiy option:selected").attr("cityCode"));
    var areaCodeVal = $.trim($("#js_notlog_area option:selected").attr("regionCode"));
    //对座机号进行校验
    var phoneCheck = checkSeatNumber(phonequhaoVal, phoneVal, phonefenjihaoVal);
    if (phoneCheck == false) {
        return;
    }
    var telPhoneVal = '';
    if (phonequhaoVal == "" && phonefenjihaoVal == "" && phoneVal == "") {
        telPhoneVal = '';
    } else {
        telPhoneVal = phonequhaoVal + ";" + phoneVal + ";" + phonefenjihaoVal;
    }

    if (addressVal == "尽可能详细地填写街道、楼号、楼层、门牌号" || addressVal.length == 0) {
        $("#address").parents('.js-formList').find('.form-error').show().html("<i class='iconfont icon-information-solid'></i> 请填写详细地址");
        $("#address").parents('.textarea-box').addClass('textarea-box-error');
        return;
    }

    var data = {
        "customerName": realnameVal,
        "mobilePhone": mobileVal,
        "provinceName": provinceVal,
        "cityName": cityVal,
        "areaName": areaVal,
        "regionDetail": addressVal,
        "provinceId": provinceCodeVal,
        "cityId": cityCodeVal,
        "regionId": areaCodeVal,
        "telPhone": telPhoneVal,
        "id": saveId
    }
    $.ajax({
        url: "/hshop-user/front/userRegion/update",
        type: "post",
        dataType: "json",
        data: data,
        login: true,
        csrf: true,
        success_cb: function (data) {
            if (data.isSuccess) {
                getAddressListInfo();//获取列表
                $(".js_addAddress").hide();//隐藏新增地址表单
                globalShade2("修改地址成功", 1, 2000);
                $(".js_memberAddressBtn").show();//显示"新增地址"按钮
                resetForm();
                getAddressListInfo();
            } else {//添加地址失败
                globalShade2(data.resultMsg, 2, 2000);
            }

        },
        error_cb: function () {
            globalShade2("修改地址错误,请稍后重试...", 1, 2000);
        }
    });

}*/


//提交报装报修信息
function submitInfo() {
    if(templet_isSubmiting){//正在提交
        globalShade2('正在提交，请稍后','3');
        return;
    }

    var proParentType = $.trim($("#js_productType").val());//产品父类
    var proChildType = $.trim($("#js_productNo").val());//产品子类
    if (proChildType == null || proChildType == "" || proChildType == 0) {
        if (!$(".js_productSelectInput_2").next("div").hasClass("fenleitishi")) {
            $(".js_productSelectInput_2").after('<div class="fenleitishi o_u o_df_6-12   o_sm_12-12 o_xs_12-12 form-error  o_sm_1-2 o_xs_1-2 Validform_checktip Validform_wrong"><i class="iconfont icon-information-solid"></i> 请选择产品</div>');
        }
        var target_top = $("#js_product_info").offset().top;
        $("html,body").scrollTop(target_top);
        return;
    } else {
        $(".fenleitishi").remove();
    }
    var productCategoryId = $("#js_productNo option:selected").attr("prdid");
    var service_time = $("#js_select_data").val();
    var serviceTime = formatterDateTime(service_time);
    var serviceTimeSlot = $("#js_DateTime option:selected").text();
    var reqDesc = $("#reqDesc").val();
    if (reqDesc == "可选填") {
        reqDesc = "";
    }

    var realnameVal = $.trim($("#realName").val());//联系人

    if (/*!istrsidssdssotoken() && */(realnameVal == "请输入联系人的姓名" || realnameVal == "" || realnameVal == null)) {
        $("#realName").parents('.js-formList').find('.form-error').show().html("<i class='iconfont icon-information-solid'></i>请输入联系人的姓名").addClass("Validform_checktip Validform_wrong");
        $("#realName").addClass("Validform_error");

        var target_top = $("#js_address_div").offset().top;
        $("html,body").scrollTop(target_top);
        return;
    }

    var mobileVal = $.trim($("#mobile").val());//手机号
    if (/*!istrsidssdssotoken() &&*/ (mobileVal == "请输入手机号码" || mobileVal == "" || mobileVal == null)) {
        $("#mobile").parents('.js-formList').find('.form-error').show().html("<i class='iconfont icon-information-solid'></i>请输入手机号").addClass("Validform_checktip Validform_wrong");
        $("#mobile").addClass("Validform_error");

        var target_top = $("#js_address_div").offset().top;
        $("html,body").scrollTop(target_top);
        return;
    }

    var phoneVal = $.trim($("#phone").val());//电话号
    if (phoneVal == "电话号") {
        phoneVal = "";
    }
    var phonequhaoVal = $.trim($("#phonequhao").val());//区号
    if (phonequhaoVal == "区号") {
        phonequhaoVal = "";
    }
    var phonefenjihaoVal = $.trim($("#phonefenjihao").val());//分机号
    if (phonefenjihaoVal == "分机号") {
        phonefenjihaoVal = "";
    }
    var provinceVal = $.trim($("#js_notlog_province").val());//省
    var cityVal = $.trim($("#js_notlog_ctiy").val());//市
    var areaVal = $.trim($("#js_notlog_area").val());//区
    var addressVal = $.trim($("#address").val());//地址
    var areaCodeVal = $("#js_notlog_area option:selected").attr("regionCode");
    var Code = $("#js_notlog_area option:selected").attr("Code");

    //对座机号进行校验
    var phoneCheck = checkSeatNumber(phonequhaoVal, phoneVal, phonefenjihaoVal);
    if (phoneCheck == false) {
        return;
    }
    var telPhoneVal = '';
    if (phonequhaoVal == "" && phonefenjihaoVal == "" && phoneVal == "") {
        telPhoneVal = '';
    } else {
        telPhoneVal = phonequhaoVal + ";" + phoneVal + ";" + phonefenjihaoVal;
    }


    //if (!istrsidssdssotoken()) {
        if (areaVal == null || areaVal == "" || areaVal == 0) {
            $("#js_notlog_ctiy").parents('.js-formList').find('.form-error').show().html("<i class='iconfont icon-information-solid'></i>请选择地址").addClass("Validform_checktip Validform_wrong");
            $("#js_notlog_ctiy").addClass("Validform_error");

            var target_top = $("#js_address_div").offset().top;
            $("html,body").scrollTop(target_top);
            return;
        } else {
            $("#js_notlog_ctiy").parents('.js-formList').find('.form-error').hide().html("<i class='iconfont icon-information-solid'></i>请选择地址").removeClass("Validform_checktip Validform_wrong");
            $("#js_notlog_ctiy").removeClass("Validform_error");
        }
    //}

    if (/*!istrsidssdssotoken() && */(addressVal == "尽可能详细地填写街道、楼号、楼层、门牌号" || addressVal.length == 0)) {
        $("#address").parents('.js-formList').find('.form-error').show().html("<i class='iconfont icon-information-solid'></i>请填写详细地址");
        $("#address").parents('.textarea-box').addClass('textarea-box-error');
        return;
    }

    var picCodeVal=$.trim($("#imgCode").val());//验证码
    if (/*!istrsidssdssotoken() &&*/ (picCodeVal == "图形验证码" || picCodeVal == "" || picCodeVal == null)) {
        $("#imgCode").parents('.js-formList').find('.form-error').show().html("<i class='iconfont icon-information-solid'></i>请输入图形验证码").addClass("Validform_checktip Validform_wrong");
        $("#imgCode").addClass("Validform_error");

        var target_top = $("#js_address_div").offset().top;
        $("html,body").scrollTop(target_top);
        return;
    }
    var phoneCodeVal=$.trim($("#informationCode").val());//短信验证码
    if (/*!istrsidssdssotoken() &&*/ (phoneCodeVal == "短信验证码" || phoneCodeVal == "" || phoneCodeVal == null)) {
        $("#informationCode").parents('.js-formList').find('.form-error').show().html("<i class='iconfont icon-information-solid'></i>请输入短信验证码").addClass("Validform_checktip Validform_wrong");
        $("#informationCode").addClass("Validform_error");

        var target_top = $("#js_address_div").offset().top;
        $("html,body").scrollTop(target_top);
        return;
    }


    var isSelect = $('#xinzengdizhi li').hasClass('address-select-true');
    /*if (istrsidssdssotoken()) {
        if (!isSelect) {
            globalShade2("请选择地址！", 2, 2000);
            return;
        }
    }*/


    var data = {

        "proParentType": proParentType,
        "proChildType": proChildType,
        "productCategoryId": productCategoryId,
        "serviceTime": serviceTime,
        "serviceTimeSlot": serviceTimeSlot,
        "requirementDesc": reqDesc,
        "realName": realnameVal,
        "mobilePhone": mobileVal,
        "province": provinceVal,
        "city": cityVal,
        "district": areaVal,
        "address": addressVal,
        "areaCode": areaCodeVal,
        "telephone": telPhoneVal,
        "adminRegionCode": Code,
        "phoneCode":phoneCodeVal,
        "clientType": 0,
        "serviceSource": "统帅官网",
        "serviceType": serviceType


    }
    templet_isSubmiting = true;
    $.ajax({
        url: "/interaction-service/afterSaleService/afterSaleInfoSave",
        type: "post",
        dataType: "json",
        data: JSON.stringify(data),
        applicationType: true,
        csrf: true,
        success_cb: function (data) {
            if (data.isSuccess) {
                if (serviceType == 2) {
                    window.location.href = siteConfig.domain + "/service/installation_and_maintenance/success.shtml?datatype=1";
                } else {
                    window.location.href = siteConfig.domain + "/service/installation_and_maintenance/success.shtml?datatype=2";
                }
                resetForm()//重置表单
                templet_isSubmiting = false;
            } else {//添加地址失败
                if(data.resultMsg=="短信验证码不正确"){
                    $('.js_smserror').css("display","inline-block");
                    $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>短信验证码不正确').removeClass("Validform_right").addClass("Validform_wrong");
                    $('#informationCode').css('border-color','#f39800');
                }else{
                    globalShade2(data.resultMsg, 2, 2000);
                }
                var imgpath = siteConfig.domain+"/interaction-service/afterSaleService/createValidateCode?" + new Date().getMilliseconds();
                $(".js_img_code").attr("src", imgpath);
                templet_isSubmiting = false;
            }

        },
        error_cb: function (responseT) {
            var responseT = JSON.parse(responseT.responseText); //由JSON字符串转换为JSON对象
            var error=responseT.resultMsg;
            if(error.indexOf("短信验证码不正确")>0){
                $('.js_smserror').css("display","inline-block");
                $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>短信验证码不正确').removeClass("Validform_right");;
                $('#informationCode').css('border-color','#f39800');
            }else{
                globalShade2("提交失败,请稍后重试...", 2, 2000);
            }
            var imgpath = siteConfig.domain+"/interaction-service/afterSaleService/createValidateCode?" + new Date().getMilliseconds();
            $(".js_img_code").attr("src", imgpath);
            templet_isSubmiting = false;
        }
    });


}

//重置地址表单项
function resetForm() {
    $("#realName").val("");
    $("#mobile").val("");
    $("#address").val("");
    $("#phonequhao").val("");
    $("#phone").val("");
    $("#reqDesc").val("");
    $("#imgCode").val("");
    $("#informationCode").val("");
    $("#phonefenjihao").val("");
    $('#js_notlog_province').children(':selected').prop('selected', false);
    $('#js_notlog_ctiy').children(':selected').prop('selected', false);
    $('#js_notlog_area').children(':selected').prop('selected', false);
    provinceBox.init();
    cityBox.init();
    areaBox.init();
    cityBox.lose();
    areaBox.lose();
    $("#realName").blur();
    $("#mobile").blur();
    $("#address").blur();
    $("#phonequhao").blur();
    $("#phone").blur();
    $("#phonefenjihao").blur();
    $("#imgCode").blur();
    $("#reqDesc").blur();
    $("#informationCode").blur();
    $("#address").css('border', '');
    $('.Validform_wrong').html(' ');
    $('.form-error').html(' ');
    $('.Validform_error').removeClass('Validform_error');
    $('.js_inputNone').css('border-color', '#ccc');
    $('#js_productType').children(':selected').prop('selected', false);
    $('#js_productNo').children(':selected').prop('selected', false);
    parentPrdType.init();
    PrdType.init();
    PrdType.lose();

}

//特殊字符转义
function converHtmlCode(code){
    /*html字符编号转为html字符*/
    var parDom = $('<span>');
    return parDom.html(code).text();
}

//验证码
var imgpath =siteConfig.domain+"/interaction-service/afterSaleService/createValidateCode?" + new Date().getMilliseconds();
$(".js_img_code").attr("src", imgpath);

$(".js_img_code").click(function () {
    var imgpath = siteConfig.domain+"/interaction-service/afterSaleService/createValidateCode?" + new Date().getMilliseconds();
    $(".js_img_code").attr("src", imgpath);
});

//获取短信验证码
$(".js_smsCode").mousedown(function(){
    if(templet_isSubmiting){//正在提交
        globalShade2('正在提交，请稍后','3');
        return;
    }
    if($(".js_smsCode").hasClass("l-btn-disable")){
        return;
    }
    var phoneValue = $("#mobile").val();
    var imgCodeValue=$("#imgCode").val();
    if(isNull(imgCodeValue)||phoneValue=="请输入手机号码"){  //是否为空
        $('.js_mobileerror').css("display","inline-block");
        $('.js_mobileerror').html('<i class="iconfont icon-information-solid"></i>请输入手机号').removeClass("Validform_right");
        $('#mobile').css('border-color','#f39800');
        var windowObjTop = $('#mobile').offset().top;
        $(window).scrollTop(windowObjTop);

        return;
    }else if(isNull(imgCodeValue)||imgCodeValue=="图形验证码"){
        $('.js_imgerror').css("display","inline-block");
        $('.js_imgerror').html('<i class="iconfont icon-information-solid"></i>请输入图形验证码').removeClass("Validform_right");
        $('#imgCode').css('border-color','#f39800');
        return;
    }else if($(".js_mobileerror").hasClass("Validform_wrong")||$(".js_imgerror").hasClass("Validform_wrong")){
        return;
    }
    templet_isSubmiting = true;
    $.ajax({
        url:siteConfig.domain+ "/interaction-service/afterSaleService/sendSMS",
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
                    $('.js_mobileerror').css("display","inline-block");
                    $('.js_mobileerror').html('<i class="iconfont icon-information-solid"></i>手机号码不正确').removeClass("Validform_right");
                    $('#mobile').css('border-color','#f39800');
                }else if("请输入手机号"==resultMsg){
                    $('.js_mobileerror').css("display","inline-block");
                    $('.js_mobileerror').html('<i class="iconfont icon-information-solid"></i>请输入手机号').removeClass("Validform_right");
                    $('#mobile').css('border-color','#f39800');
                }else if("图形验证码有误，请重新输入"==resultMsg){
                    $('.js_imgerror').css("display","inline-block");
                    $('.js_imgerror').html('<i class="iconfont icon-information-solid"></i>图形验证码有误，请重新输入').removeClass("Validform_right");
                    $(".js_img_code").click();//仅验证码错误才重新刷新验证码
                    $('#imgCode').css('border-color','#f39800');
                }else if("短信验证码不正确"==resultMsg){
                    $('.js_smserror').css("display","inline-block");
                    $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>短信验证码不正确').removeClass("Validform_right");
                    $('#informationCode').css('border-color','#f39800');
                }else {
                    phoneblurVal=$("#mobile").val();
                    if(resultMsg=="一分钟内只能请求一次验证码"){
                        $('.js_smserror').css("display","inline-block");
                        $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>您的发送太频繁，请一分钟再试').removeClass("Validform_right");
                        $('#informationCode').css('border-color','#f39800');
                    }else{
                        $('.js_smserror').css("display","inline-block");
                        $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>'+resultMsg).removeClass("Validform_right");
                        $('#informationCode').css('border-color','#f39800');
                    }

                    var imgpath = siteConfig.domain+"/interaction-service/afterSaleService/createValidateCode?" + new Date().getMilliseconds();
                    $(".js_img_code").attr("src", imgpath);
                }
                templet_isSubmiting = false;
            }
        },error_cb: function (responseT) {
            var responseT = JSON.parse(responseT.responseText); //由JSON字符串转换为JSON对象
            var error=responseT.resultMsg;
            if(error.indexOf("短信验证码不正确")>0){
                $('.js_smserror').css("display","inline-block");
                $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>短信验证码不正确').removeClass("Validform_right");
                $('#informationCode').css('border-color','#f39800');
                phoneblurVal=$("#mobile").val();
            }else if(error.indexOf("一分钟内只能请求一次验证码")>0){
                $('.js_smserror').css("display","inline-block");
                $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>您的发送太频繁，请一分钟再试').removeClass("Validform_right");
                $('#informationCode').css('border-color','#f39800');
                phoneblurVal=$("#mobile").val();
            }else if(error.indexOf("一天内只能请求5次验证码")>0){
                $('.js_smserror').css("display","inline-block");
                $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>一天内只能请求5次验证码').removeClass("Validform_right");
                $('#informationCode').css('border-color','#f39800');
                phoneblurVal=$("#mobile").val();
            }else if(error.indexOf("同一个IP每天只能请求50次验证码")>0){
                $('.js_smserror').css("display","inline-block");
                $('.js_smserror').html('<i class="iconfont icon-information-solid"></i>同一个IP每天只能请求50次验证码').removeClass("Validform_right");
                $('#informationCode').css('border-color','#f39800');
                phoneblurVal=$("#mobile").val();
            }else{
                globalShade2("提交失败,请稍后重试...", 2, 2000);
            }
            var imgpath = siteConfig.domain+"/interaction-service/afterSaleService/createValidateCode?" + new Date().getMilliseconds();
            $(".js_img_code").attr("src", imgpath);
            templet_isSubmiting = false;
        }
    })
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
//修改手机号删除错误提示
$("#mobile").blur(function () {
    var phoneAfterval=$("#mobile").val();
    if(phoneblurVal!=phoneAfterval){
        $("#informationCode").css('border-color', '#ccc');
        $("#informationCode").removeClass("Validform_error");
        $(".js_smserror").removeClass("Validform_wrong").addClass("Validform_right");
    }

});