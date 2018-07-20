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
          'domain':'http://image.tongshuai.com/images/.tongshuai.com'
      });
      if(timeTotal<=0){
          clearInterval(timeHtml);
          obj.removeClass(btnDisable).html(objHtml).removeAttr('data-type');
          $.cookie(cookieName,null,{
              'path':'/',
              'domain':'http://image.tongshuai.com/images/.tongshuai.com'
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
