//产品列表页js
$(function () {
    $(window).resize(function () {
        init();
    });
    //初始化
    function init() {
        var screenHeight = document.body.offsetHeight;
        var screenWidth = document.body.offsetWidth;
        if (screenWidth > 1199) {
            $('.js_layerShowMore').hide();
            $('.js_listNavShowMore').attr('data-flag',"1");
            initNavClick();
            //readXmlFile(url);

        } else {
            //mobileReadXmlFile(url);
            if(document.body.offsetWidth>575){
                $('.js_listNavShowMore').find('span').text('展开全部筛选项');
            }else{
                $('.js_listNavShowMore').find('span').text('展开筛选项');
            }
            $('.js_listNavShowMore').find('i').removeClass('icon-close').addClass('icon-plus');
        }
    }
   //移动端时产品入口层点击显示与隐藏    
    $(".js_showFloatList").hover(function () {
    	if(document.body.offsetWidth>1199){
    		$(".js_showFloatList .float-list").css("display","block");
    		$(".js_showFloatList .icon-arrow-line-down").css("display","none");
    		$(".js_showFloatList .icon-arrow-line-up").css("display","inline-block");
    	}
    },function () {
    	if(document.body.offsetWidth>1199){
    		$(".js_showFloatList .float-list").css("display","none");
    		$(".js_showFloatList .icon-arrow-line-down").css("display","inline-block");
    		$(".js_showFloatList .icon-arrow-line-up").css("display","none");
    	}
    })
    $(".js_showFloatList").click(function () {
    	if(document.body.offsetWidth<=1199){
    		if($(".js_showFloatList .float-list").css("display")=="none"){
    			$(".js_showFloatList .float-list").css("display","block");
    			$(".js_showFloatList .icon-arrow-line-down").css("display","none");
    			$(".js_showFloatList .icon-arrow-line-up").css("display","inline-block");
    			$("body").click(function (e) {
    				var size1 = $(e.target).parents('.float-list').size();
    				var size2 = $(e.target).parents('.js_showFloatList').size();
    				if($(e.target).hasClass('float-list')||size1||$(e.target).hasClass('js_showFloatList')||size2){
    				}else{
    					$(".js_showFloatList .float-list").css("display","none");
		  			    $(".js_showFloatList .icon-arrow-line-down").css("display","inline-block");
		  			    $(".js_showFloatList .icon-arrow-line-up").css("display","none");
    				}				
    			})
    		}else{
    			$(".js_showFloatList .float-list").css("display","none");
    			$(".js_showFloatList .icon-arrow-line-down").css("display","inline-block");
    			$(".js_showFloatList .icon-arrow-line-up").css("display","none");
    		}
    	}
    })
    //初始化筛选项收起隐藏按钮事件
    //导航-展开全部筛选项
    $('.js_listNavShowMore').on('click', function () {
         initNavClick();
    });


    //筛选项-全部删除
    $('.js_deleteAll').on('click', function () {
        //删除筛选头部选项
        $('.js_filter').empty();
        $(".list-filter-select").css('display','none');
        /**
         * 全部删除筛选子项的代码写在这里
         */
         $(".sole-type.active").each(function (e,n) {
             $(this).removeClass("active");
         });
        searchWord="";
        order="";
        isSelectItemStr="";
        //重新查询
        search(searchWord, _tableName, _xmlPath, curPage, pageSize, order, isSelectItemStr);
    });

    //checkbox初始化
    $(".js_proGroup,.js_radio").jq_qvote();





    //切换登录
    $('.js_landType').children('div').mousedown(function () {
        var index = $(this).index();
        $(this).addClass('cur').siblings().removeClass('cur');
        var $childObj = $('.js_landInputBox').children('div');
        $childObj.eq(index).show().siblings().hide();
        $('.js_landUpdateBtn').children('a').eq(index).show().siblings().hide();
        getValidateCode("verifyCode");
        getValidateCode("verifyCode2");
    })

    $('.js-landPasswordInput2').bind('input propertychange', function () {

        var value = $(this).val();
        /*var input2NullText = $(this).attr('nullmsg');
        var input2ErreoText = $(this).attr('errormsg');
        var objtip = $(this).parents(".js-landInputBox").children('.Validform_checktip');
*/
        if (value && value != "密码") {
            //$(this).show();
            $('.js-landPasswordInput1').hide();
        } else {
            /* $(this).hide();
             $('.js-landPasswordInput1').eq(0).show();
             $('.js-landPasswordInput1').addClass('Validform_error');
             objtip.html(input2NullText);*/
            //$('.js-landPasswordInput1').
        }


    })

    //校验表单验证

    $('.js-landPasswordInput1').focus(function () {
        $(this).hide();
        $('.js-landPasswordInput2').show().focus();
    })
    $('.js-landPasswordInput2').blur(function () {
        var value = $(this).val();
        var input2NullText = $(this).attr('nullmsg');
        var input2ErreoText = $(this).attr('errormsg');
        var objtip = $(this).parents(".js-landInputBox").children('.Validform_checktip');

        if (value && value != "密码") {
            $(this).show();


            if ($('.js-landUserIdInput').val()) {

            }
        } else {
            $(this).hide();
            $('.js-landPasswordInput1').eq(0).show();
            $('.js-landPasswordInput1').addClass('Validform_error');
            objtip.html(input2NullText);
            //$('.js-landPasswordInput1').
        }
    })
});

//导航-展开全部筛选项
function initNavClick() {

    var navList = $('.js_listNavShowMore').siblings('.filter-line');
    var flag = parseInt($('.js_listNavShowMore').attr('data-flag'));

    if (flag) {
        if(document.body.offsetWidth>575){
            $('.js_listNavShowMore').find('span').text('展开全部筛选项');
        }else{
            $('.js_listNavShowMore').find('span').text('展开筛选项');
        }
        $('.js_listNavShowMore').find('i').removeClass('icon-close').addClass('icon-plus');
    } else {
        if(document.body.offsetWidth>575){
            $('.js_listNavShowMore').find('span').text('收起全部筛选项');
        }else{
            $('.js_listNavShowMore').find('span').text('收起筛选项');
        }
        $('.js_listNavShowMore').find('i').removeClass('icon-plus').addClass('icon-close');
    }

    navList.each(function (i, n) {
        if (i < 4 || i >= navList.size()) {
            return;
        }
        if (flag) {
            $(this).addClass('o_df-hide');
        } else {
            $(this).removeClass('o_df-hide');
        }
    });

    if (document.body.offsetWidth < 1200) {
        $('.js_layerShowMore').show();
        $(document.body).css({
            "overflow-x":"hidden",
            "overflow-y":"hidden"
        });
        $('.js_layerClose').on('click', function () {
            $('.js_layerShowMore').hide();
            if(document.body.offsetWidth>575){
                $('.js_listNavShowMore').find('span').text('展开全部筛选项');
            }else{
                $('.js_listNavShowMore').find('span').text('展开筛选项');
            }
            $('.js_listNavShowMore').find('i').removeClass('icon-close').addClass('icon-plus');
            $(document.body).css({
            "overflow-x":"scroll",
            "overflow-y":"scroll"
            });
        });
         

    }

    $('.js_listNavShowMore').attr('data-flag', Math.abs(parseInt(flag) - 1));
}