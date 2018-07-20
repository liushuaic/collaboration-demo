/**
 * Created by 15610 on 2018/2/26.
 */
$(function(){
    // $("#js_unbindmob").oSelect().init();
    // $("#js_notlog_province").oSelect().init();
    // $("#js_notlog_ctiy").oSelect().init();
    // $("#js_notlog_area").oSelect().init();
    // //$("#js_DateTime").oSelect().init();
    // $("#js_productType").oSelect().init();
    // $("#js_productNo").oSelect().init();


    var windowWidth = $(window).width();
    var simulateTouchType = true;
    if(windowWidth>991){
        simulateTouchType = false;
    }else{
        simulateTouchType = true;
    }

    //详细地址判定样式
    $('.js_addressMore').focus(function(){
        if($(this).hasClass('Validform_error')){
            $(this).parents('.textarea-box').addClass('textarea-box-yellow');
        }else{
            $(this).parents('.textarea-box').addClass('textarea-box-error').removeClass('textarea-box-yellow');
        }
     
    }).blur(function(){
        if($(this).hasClass('Validform_error')){
            $(this).parents('.textarea-box').addClass('textarea-box-yellow');
        }else{
            $(this).parents('.textarea-box').removeClass('textarea-box-error').removeClass('textarea-box-yellow');
        }

        // $(this).parents('.textarea-box').removeClass('textarea-box-yellow');
    })

    //轮播图(服务流程)
	var mySwiper_navigation = new Swiper('.js_serve_detail', {
		paginationClickable: true,
		slidesPerView: 'auto',
        simulateTouch : simulateTouchType,
	})
    $('.js_productSelectInput').click(function(){
        $('.js-formList').show();
        var parent =  $(this).parent('.js-formList');
        parent.hide();
//            parent.sibling().show();
    });

    $(".js_addressRadio").jq_qvote();//与上面用法一致

    //表单验证
    $(".js-formVerification").Validform({
        btnSubmit:".js-formBtn",
        tiptype:function(msg,o,cssctl){
            if(!o.obj.is("form")){//验证表单元素时o.obj为该表单元素，全部验证通过提交表单时o.obj为该表单对象;
                objtip = o.obj.parents(".js-formList").children('.form-error');
                //console.log(objtip)
                cssctl(objtip,o.type);
                objtip.html(msg);
            }else{
                var objtip=o.obj.find("#msgdemo");
                cssctl(objtip,o.type);
                objtip.text(msg);
            }
        }
    });
    //表单验证
   var addressForm =  $(".js_addAddress").Validform({
        btnSubmit:".js-addressBtn",
        tiptype:function(msg,o,cssctl){
            if(!o.obj.is("form")){//验证表单元素时o.obj为该表单元素，全部验证通过提交表单时o.obj为该表单对象;
                objtip = o.obj.parents(".js-formList").children('.form-error');
                cssctl(objtip,o.type);
//                    console.log("error",msg);
                if(msg!="通过信息验证！"){
                    objtip.show().html(msg);
                }else{
                    objtip.hide();
                }
            }else{
                var objtip=o.obj.find("#msgdemo");
                cssctl(objtip,o.type);
                objtip.text(msg);
            }
        }
    });
addressForm.ignore(".quhao,.tellphone,.fenji");
// 产品信息其他需求验证
    $('.js_productInfo').blur(function(){
        var contText = $(this).val();
        var errorObj = $(this).parent('.js-formList').children('.form-error');
        if(contText.length>85){
            errorObj.html("<i class='iconfont icon-information-solid'></i>内容不正确")
        }else if(contText.length==0||contText=="可选填"){
            errorObj.html("<i class='iconfont icon-information-solid'></i>内容不得为空")
        }
    })


    //    时间控件

    // $(window).resize(function() {
    //     var left = $('.member-personalinfo-listiptbox').offset().left;
    // })

    // if (window.innerWidth == undefined || window.innerWidth > 1199) {
    //     $(".js_Date").datetimepicker({
    //         language: 'zh-CN',      //语言
    //         weekStart: 0,           //一周从哪一天开始
    //         todayBtn: 1,            //底部显示“今天”
    //         autoclose: 1,           //选择后关闭选择器
    //         //todayHighlight: 1,      //高亮当前日期
    //         startView: 2,           //首先显示的视图
    //         minView: 2,             //视图
    //         forceParse: true,       //解析输入值
    //         format: "yyyy-mm-dd",   // 日期格式
    //         pickerPosition: "bottom-left",
    //         startDate: new Date()     // 开始时间
    //     });
    //
    //
    //
    // }else{
    //     $('.js_Date').mobiscroll().date({
    //         preset: 'date',           //日期
    //         lang: "zh",               //语言
    //         display: 'center',
    //         dateFormat: 'yyyy-mm-dd', // 日期格式
    //         dateOrder: 'yymmdd',      //面板中日期排列格式
    //         minDate:new Date()        //  最小时间
    //     });
    // }


//设置默认上门时间
    $(".js_Date").val(gettommrow(new Date()));
//上门时间下拉
    var visitDate = $("#js_DateTime").oSelect();
    visitDate.init();

    function gettommrow(date){
        var gettommrow_milliseconds=date.getTime()+1000*60*60*24;
        var gettommrow = new Date();
        gettommrow.setTime(gettommrow_milliseconds);

        var strYear = gettommrow.getFullYear();
        var strDay = gettommrow.getDate();
        var strMonth = gettommrow.getMonth()+1;
        if(strDay<10)
        {
            strDay="0"+strDay;
        }
        if(strMonth<10)
        {
            strMonth="0"+strMonth;
        }
        datastr = strYear+"-"+strMonth+"-"+strDay;
        return datastr;
    }

//设置不能选择历史时间
    function setNotCheck(){
        //要求服务日期
        var _serviceDate = $(".js_Date").val();
        var _date = new Date();
        //当前的日期
        var _year = _date.getFullYear();
        //月
        var _month = _date.getMonth()+1;
        _month = ("00"+_month).substr((""+_month).length);
        var _day = _date.getDate();
        _day = ("00"+_day).substr((""+_day).length);
        var _nowDate = _year+"-"+_month+"-"+_day;
        //当前时间
        var _nowHours = _date.getHours();
        var _optionHtml = "";
        var _optionArray = [];
        _optionArray.push("<option value='8:00~9:00'>8:00~9:00</option>");
        _optionArray.push("<option value='9:00~10:00'>9:00~10:00</option>");
        _optionArray.push("<option value='10:00~11:00'>10:00~11:00</option>");
        _optionArray.push("<option value='11:00~12:00'>11:00~12:00</option>");
        _optionArray.push("<option value='12:00~13:00'>12:00~13:00</option>");
        _optionArray.push("<option value='13:00~14:00'>13:00~14:00</option>");
        _optionArray.push("<option value='14:00~15:00'>14:00~15:00</option>");
        _optionArray.push("<option value='15:00~16:00'>15:00~16:00</option>");
        _optionArray.push("<option value='16:00~17:00'>16:00~17:00</option>");
        _optionArray.push("<option value='17:00~18:00'>17:00~18:00</option>");
        _optionArray.push("<option value='18:00~19:00'>18:00~19:00</option>");
        _optionArray.push("<option value='19:00~20:00'>19:00~20:00</option>");
        //如果服务时间等于当天，不能选择过去的时间段
        if(_serviceDate==_nowDate){
            var _optionIndex = _nowHours-5;
            if(_optionIndex>11){
                $("#js_DateTime").html(_optionArray.join(" "));
                var n = _date.getTime() + 1*24*60*60*1000;
                var resu = new Date(n);
                var remon = resu.getMonth()+1;
                remon = remon>9?""+remon:"0"+remon;
                setTimeout(function(){
                    $(".js_Date").val(gettommrow(new Date()));
                },10);
            }else{
                for(var i=0;i<12;i++){
                    if(i>=_optionIndex){
                        _optionHtml += _optionArray[i];
                    }
                }
                $("#js_DateTime").html('<option value="0">--请选择时间段--</option>'+_optionHtml);
                visitDate.init();
            }
        }else{
            $("#js_DateTime").html('<option value="0">--请选择时间段--</option>'+_optionArray.join(" "));
            visitDate.init();
        }
    }




    var IE8 = isIe && navigator.userAgent.indexOf("MSIE 8.0") > 0 && !isIe11;
    var IE9 = isIe && navigator.userAgent.indexOf("MSIE 9.0") > 0 && !isIe11;
    //alert(IE9);

    if(IE8){
        if(windowWidth>1199){
            $('.xl-hide').hide();
        }else if(windowWidth>991&&windowWidth<1200){
            $('.lg-hide').hide();
        }else if(windowWidth>700&&windowWidth<992){
            $('.md-hide').hide();
        }else if(windowWidth>575&&windowWidth<701){
            $('.sm-hide').hide();
        }else if( windowWidth<576){
            $('.xs-hide').hide();
        }
    }

    $("#js_DateTime").siblings('.i_down').addClass("icon-shizhong").addClass("iconfont").removeClass("i_down");


    $('.js_addressRadio').click(function(){
        $(this).parents('.js-select').addClass('address-select-true').siblings().removeClass('address-select-true');
    })


//顶部导航
    var listWidth =  windowWidth*0.0833333>60? windowWidth*0.0833333:60;
    var $listArr =$('.swiper-wrapper li');
    for(var i =0;i<$listArr.length;i++){
        if($listArr.eq(i).hasClass('list-last')||$listArr.eq(i).hasClass('list-frist')){
            $listArr.eq(i).css('width',+ listWidth+ 'px');
        }else{
            $listArr.eq(i).css('width',+ listWidth*2+ 'px');
        }
    }
    if(windowWidth<600){
        $listArr.eq(0).css('width', '60px');
        $listArr.eq($listArr.length).css('width','60px');
    }
    $('.swiper-wrapper').css('width',+ listWidth*8+ 'px');

    //整体评价内容字数验证

    $('.js_EvaluateVal').bind('input propertychange', function() {
        var text =$(this).val();
        var textlength = $(this).val().length;
        $('.js_EvaluateValLength').html(textlength);
        if( textlength>= 85){
            $('.js_EvaluateValLength').html(85);
            var valueText = $(this).val().substring(0,85);
            $('.js_EvaluateVal').text(valueText);
        }else{
            if(text=="可选填"){
                $('.js_EvaluateValLength').html(0);
            }else{
                $('.js_EvaluateValLength').html(textlength);

            }
        }
    });



    //ie9下兼容text动态改变
    if(IE9){
        $('.js_EvaluateVal').on('focus', function() {
            document.addEventListener('selectionchange', textChange);
        }).on('blur', function() {
            document.removeEventListener('selectionchange', textChange);
        });
    }
    var textChange =function (){
        $('.js_EvaluateValLength').html($('.js_EvaluateVal').val().length);
}

    $('.js_EvaluateVal').blur(function(){
        var textlength = $(this).val().length;
        var text =$(this).val();

        if( textlength>= 85){
            $('.js_EvaluateVal').val($(this).val().substring(0,85));
            $('.js_EvaluateValLength').html(85);

        }else{
            if(text=="可选填"){
                //console.log(666666666)
                $('.js_EvaluateValLength').html(0);
            }else{
                $('.js_EvaluateValLength').html(textlength);

            }
        }
    });
    // li可点击
$('.js-select').live('click',function(e){
    var index = $(this).index(); 
    $('.c_ipt_cr').eq(index).removeClass('c_ipt_cr_crus').addClass('c_ipt_cr_rs');  
    $(this).siblings().find('.c_ipt_cr_rs').addClass('c_ipt_cr_crus').removeClass('c_ipt_cr_rs');  
    $(this).addClass('address-select-true').siblings().removeClass('address-select-true');
});

    $('.js_addressMore').bind('input propertychange change', function() {
        var text = $(this).val();
        if(text =="尽可能详细地填写街道、楼号、楼层、门牌号" ||text.length==0){
            $(this).parents('.js-formList').find('.form-error').show().html("<i class='iconfont icon-information-solid'></i>请填写详细地址");
            $(this).parents('.textarea-box').addClass('textarea-box-error');

        }else{
            if(text.length>50){
                $(this).parents('.js-formList').find('.form-error').show().html("<i class='iconfont icon-information-solid'></i>最大字数50");
                $(this).parents('.textarea-box').addClass('textarea-box-error');
            }else{
                $(this).parents('.js-formList').find('.form-error').hide();
                $(this).parents('.textarea-box').removeClass('textarea-box-error');
            }
        }
    })
})

 