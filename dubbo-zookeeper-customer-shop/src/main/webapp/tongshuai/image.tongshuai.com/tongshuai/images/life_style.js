$(function () {
	//响应式图片
	$(".js_recPic_pic").each(function() {
		$(this).oPicture({
			//自定义节点宽度
			//sm:544,md:700,lg:992,xl:1200,
		}).init();
	});
    var windowHeight = $(window).height();
    var windowWidth = $(window).width();

    if(windowWidth>1199){
        var navHeight = 120;
    }else if(windowWidth>700){
        var navHeight = 100;

    }else if(windowWidth<576){
     var titleWidth =  $('.js_lifeStyleCreateTop').width();
        $('.js_lifeStyleCreateTop').find('li').css('width',titleWidth/3)
    }
    var styleVideoHeight = $('.js_styleVideoCont').height();
    var styleVudeoPading = (windowHeight - navHeight - styleVideoHeight) / 2;
    var lifeCasePhotoH = windowWidth / 3 / 0.75;
    var lifeCasePhotoHMd = windowWidth / 2 / 0.75;
    if (windowWidth > 991) {
        // alert(1);
        $('.js_styleVideoBox').css('height', windowHeight - navHeight);
        $('.js_styleVideoCont').css({'padding-top': styleVudeoPading, 'padding-bottom': styleVudeoPading});
        //$("#mep_0").css('max-height', windowHeight - navHeight+'px');
    }

    $('.js_styleVideoBox').find('.js_recPic').each(function(){
        $(this).oPicture().init();
    });

// xl屏幕下视频模块hover有效

    $('.js_styleVideoContRight').hover(function () {
        if (windowWidth > 1199) {
            var type = $(this).attr('data-alt');
            if (type == 'false') {
                $('.js_styleVideoContLeft').hide();
                $(this).css({'width': '50%'});
                $(this).attr('data-alt', 'true');
                $('.js_bannerRightHover').addClass('back-gray').siblings().removeClass('back-gray');
                $('.js_bannerRightHoverHide').hide();
                $('.js_bannerRightHoverShow').show();
                $('.js_styleVideoContRight img').animate({'margin-right': '0'}, "slow");


            }
        }
        //if(windowWidth > 991){
        //
        //}
    }, function () {
        if (windowWidth > 1199) {
            $('.js_styleVideoContLeft').show();
            $(this).css({'width': '25%'});
            $(this).attr('data-alt', 'false');
            $('.js_bannerNoHover').addClass('back-gray').siblings().removeClass('back-gray');
            $('.js_bannerRightHoverHide').show();
            $('.js_bannerRightHoverShow').hide();
            $('.js_styleVideoContRight img').css({'margin-right': '-50%'});

        }
        //if(windowWidth > 991){
        //
        //}
    })


    $('.js_styleVideoContLeft').hover(function () {
            if (windowWidth > 1199) {
                var type = $(this).attr('data-alt');
                if (type == 'false') {
                    $('.js_styleVideoContRight').hide();
                    $(this).css({'width': '50%', 'background-position': 'left top'});
                    $(this).attr('data-alt', 'true');

                    $('.js_bannerLeftHover').addClass('back-gray').siblings().removeClass('back-gray');
                    $('.js_bannerRightHoverHide').hide();
                    $('.js_bannerRightHoverShow').show();

                    $('.js_styleVideoContLeft img').animate({'margin-left': '0'}, "slow");

                }
            }
        //if(windowWidth > 991){
        //
        //
        //}
        }, function () {
            if (windowWidth > 1199) {
                $('.js_styleVideoContRight').show();
                $(this).css({'width': '25%', 'background-position': 'right top'});
                $(this).attr('data-alt', 'false');

                $('.js_bannerNoHover').addClass('back-gray').siblings().removeClass('back-gray');
                $('.js_bannerRightHoverHide').show();
                $('.js_bannerRightHoverShow').hide();

                $('.js_styleVideoContLeft img').css({'margin-left': '-50%'} );

            }
        //if(windowWidth > 991){
        //
        //}
        }
    )

// xl屏幕下视频模块click有效

    $('.js_styleVideoContLeft').click(function () {
            // alert(1);
            if (windowWidth < 1199 && windowWidth > 991) {
                var type = $(this).attr('data-alt');
                if (type == 'false') {
                    $(this).attr('data-alt', 'true');
                    $('.js_styleVideoContRight').hide();
                    $(this).css({'width': '33.33333337%', 'background-position': 'left top'});
                    $('.js_BannnerLeftClick').show();
                    $('.js_BannnerRightClick').hide();
                } else {
                    $(this).attr('data-alt', 'false');
                    $(this).css({'width': '16.66666667%', 'background-position': 'right top'});
                    $('.js_styleVideoContRight').show();
                    $('.js_BannnerLeftClick').hide();
                    $('.js_BannnerRightClick').show();
                }
            }
        }
    )
    $('.js_styleVideoContRight').click(function () {
            // alert(1);
            if (windowWidth < 1199 && windowWidth > 991) {
                var type = $(this).attr('data-alt');
                if (type == 'false') {
                    $(this).attr('data-alt', 'true');
                    $('.js_styleVideoContLeft').hide();
                    $(this).css({'width': '33.33333337%', 'background-position': 'left top'});
                    $('.js_BannnerLeftClick').hide();
                    $('.js_BannnerLeftClickSib').hide();
                    $('.js_BannnerRightClick').show();
                    return;
                } else {
                    $(this).attr('data-alt', 'false');
                    $(this).css({'width': '16.66666667%', 'background-position': 'right top'});
                    $('.js_styleVideoContLeft').show();
                    $('.js_BannnerLeftClickSib').show();
                    $('.js_BannnerLeftClick').hide();
                    $('.js_BannnerRightClick').hide();



                    return;

                }
            }
        }
    )


// md之下设置顶部导航轮播图片宽度

    var maxImgHeight = windowWidth / 12 * 11 / 7 * 4;
// alert(maxImgHeight);
    $('.js_videoMdImgMin img').css({
        "height": maxImgHeight / 4 * 3,
        "top": maxImgHeight / 8 + 'px'
    })
    if (windowWidth > 1199) {
        if( $('.js_superiorityBox').height()<windowWidth / 3 / 0.75){
            $('.js_superiorityBox').height(windowWidth / 3 / 0.75);
        }else{
            $('.js_superiorityBox').height($('.js_superiorityBox').height());
        }




    }
    //else{
    //    $('.js_superiorityBox').height( $('.js_superiorityCenter').height());
    //}


    $('.js_videoMdImgMin').height($('.js_videoMdImgMax').height())

    if (windowWidth > 1199) {
        $('.js_lifeStylePhotoCentent').height(windowWidth / 2);
        // $('.js_lifeStylePhotoLeft').children('.js_lifeStylePhotoCentent').height(windowWidth/3);
        $('.js_lifeStylePhotoLeft').children('.js_lifeStylePhotoCentent').css({
            'height': windowWidth / 3,
            'margin-top': (windowWidth / 2 - windowWidth / 3) / 2
        });
        $('.js_lifeStylePhotoRight').children('.js_lifeStylePhotoCentent').css({
            'height': windowWidth / 3,
            'margin-top': (windowWidth / 2 - windowWidth / 3) / 2
        });
        $('.js_photoRightBtn').css('line-height', windowWidth / 2 + 'px');
        $('.js_photoLeftBtn').css('line-height', windowWidth / 2 + 'px');
    } else {
        $('.js_lifeStylePhotoCentent').height(windowWidth * 0.6666666667);
        $('.js_lifeStylePhotoLeft').children('.js_lifeStylePhotoCentent').css({
            'height': windowWidth * 0.47,
            'margin-top': (windowWidth / 2 - windowWidth / 3) / 2
        });
        $('.js_lifeStylePhotoRight').children('.js_lifeStylePhotoCentent').css({
            'height': windowWidth * 0.47,
            'margin-top': (windowWidth / 2 - windowWidth / 3) / 2
        });
        $('.js_photoRightBtn').css('line-height', windowWidth * 0.6666666667 + 'px');
        $('.js_photoLeftBtn').css('line-height', windowWidth * 0.6666666667 + 'px');

    }


//核心优势

    $('.js_lifeStyleSuperiorityL').height(windowWidth / 3 / 0.75);
    $('.js_lifeStyleSuperiorityLDown').css({
        "height": windowWidth / 3,
        "top": (windowWidth / 3 / 0.75 - windowWidth / 3) / 2
    });

    $('.js_superioritySwiperLeft').css({'height':windowWidth/9*4});
    $('.js_superioritySwiperRight').css({'height':windowWidth/9*4});
    $('.js_superiorityLeftMin').css({  "top": (windowWidth / 3 / 0.75 - windowWidth / 3) / 2 });


    if(windowWidth>1199){
        $('.js_superiorityRightBtn').css({"height": windowWidth / 3,'line-height': windowWidth / 3+'px'});
        $('.js_superiorityLeftBtn').css({"height": windowWidth / 3,'line-height': windowWidth / 3+'px'});
        $('.js_superiorityLeftMin').css({'height':windowWidth/3+'px'});
        $('.js_superiorityLeftMin').eq(0).css({'left':(windowWidth/3-66)+'px'});
        $('.js_superiorityLeftMin').eq(2).css({'left':(windowWidth/3-66)+'px'});
        $('.js_superiorityLeftMin').eq(1).css({'right':(windowWidth/3-66)+'px'});
        $('.js_superiorityLeftMin').eq(3).css({'right':(windowWidth/3-66)+'px'});

    }

// 设置lift-style-case 图片切换按钮高度
    if (windowWidth > 991) {
        $('.js_lifeStyleCaseLeft').css({'height': lifeCasePhotoH, "line-height": lifeCasePhotoH + 'px'});
        $('.js_lifeStyleCaseRight').css({'height': lifeCasePhotoH, "line-height": lifeCasePhotoH + 'px'});
        $('.js_lifeStyleCaseText').css({'height': lifeCasePhotoH});
        $('.js_lifeStyleCaseLeftBtn').show();
        $('.js_lifeStyleCaseRightBtn').show();
    } else {
        //$('.js_lifeStyleCaseLeft').css({'height': lifeCasePhotoHMd, "line-height": lifeCasePhotoHMd + 'px','margin-top':($('.js_lifeStyleCasePhoto').height()-lifeCasePhotoHMd)/2})
      //  $('.js_lifeStyleCaseLeft').css({'height': lifeCasePhotoHMd, "line-height": lifeCasePhotoHMd + 'px','margin-top':($('.js_lifeStyleCasePhoto').height()-lifeCasePhotoHMd)/2})
      //  //$('.js_lifeStyleCaseRight').css({'height': lifeCasePhotoHMd, "line-height": lifeCasePhotoHMd + 'px','margin-top':($('.js_lifeStyleCasePhoto').height()-lifeCasePhotoHMd)/2})
      //  $('.js_lifeStyleCaseRight').css({'height': lifeCasePhotoHMd, "line-height": lifeCasePhotoHMd + 'px','margin-top':($('.js_lifeStyleCasePhoto').height()-lifeCasePhotoHMd)/2})
      ////alert(lifeCasePhotoHMd);

        $('.js_lifeStyleCaseText').css({'height':'270px','margin-top':'30px'});

    }


    // 创造优生活title
    //$('.js_lifeStyleCreateTop li').click(function () {
    //    $(this).addClass('cur').siblings().removeClass('cur');
    //    var $index = $(this).index();
    //    var className = '.js_lifeStyleCreateSwipe_'+($index+1);
    //    $('.js_lifeStyleCreateSwipe').eq($index).show().siblings('.js_lifeStyleCreateSwipe').hide();
    //    $('.js_lifeStyleCreateTitle').eq($index).show().siblings('p').hide();
    //   if($(className).find('li').length>1){
    //       $('.js_lifeStyleCreateLeftBtn').show();
    //       $('.js_lifeStyleCreateRightBtn').show();
    //   }else{
    //       $('.js_lifeStyleCreateLeftBtn').hide();
    //       $('.js_lifeStyleCreateRightBtn').hide();
    //   }
    //})


//视频
    $ie8 = false;
    $ie9 = false;
    var browser = navigator.appName;
    if (browser == "Microsoft Internet Explorer") {
        var b_version = navigator.appVersion;
        var version = b_version.split(";");
        var trim_Version = version[1].replace(/[ ]/g, "");
        if (trim_Version == "MSIE8.0") {
            $ie8 = true;
        }else if(trim_Version == "MSIE9.0"){
            $ie9 = true;
        }
    }


    pageScript();
    //function videoMethod() {
    //
    //    $('audio,video').mediaelementplayer({
    //        success: function (media, player, node) {
    //            console.log($('#' + node.id + '-mode').html('mode: ' + player.pluginType));
    //            $('#' + node.id + '-mode').html('mode: ' + player.pluginType);
    //        },
    //        showPosterWhenEnded:true,//显示海报
    //        autosizeProgress:false,//根据其他元素的大小自动计算进度条的宽度
    //        iPadUseNativeControls:true,//强制iPad的原生控件
    //        iPhoneUseNativeControls:true,//强制iPhone的本机控件
    //        AndroidUseNativeControls:true,//强制Android的原生控件
    //        usePluginFullScreen: false,//在全屏模式下激活指针事件检测的标志
    //        hideVideoControlsOnPause: true        //暂停显示控件
    //    });
    //}

    function pageScript() {
        //videoMethod();
         if (window.innerWidth == undefined || window.innerWidth > 1199) {
             var userAgent = navigator.userAgent;
             var player = new MediaElementPlayer('#player');
             $(".js_styleLifevideoClose ").on('click', function () {
                 player.pause();
                 $(".js_playerBox ").hide();
                 $('.js_styleVideoBox').show();
                 $('.video-cont-center').css({width: '50%'});

                 $('.js_styleVideoContLeft').css({width: '25%'}).removeClass('left_click');

                 $('.js_styleVideoContRight').css({width: '25%'}).removeClass('left_click');
             });

             
             $(".js_lifeStylePlay ").on('click', function () {
                 $('.js_styleVideoBox').hide();
                 $(".js_playerBox ").show().find(".mejs-video ").removeClass("o_df-hide ");
                 $("#player").removeClass("o_df-hide");
                 $("#mep_0").css({'max-height': windowHeight - navHeight+'px','width':'100%'});
                 $('.mejs-fullscreen-button').remove();
                 //$("#mep_0").css('width', '100%');
                 //
                 //$('.mejs-fullscreen-button button').live('click',function(){
                 //    if($(this).attr('data-type')){
                 //        $("#mep_0").css('max-height', windowHeight - navHeight+'px');
                 //        $(this).removeAttr('data-type');
                 //
                 //    }else{
                 //        $("#mep_0").css('max-height','100%');
                 //        $(this).attr('data-type','1');
                 //        $(window).keyup(function(event){
                 //            alert(event.keyCode)
                 //            if(event.keyCode==27){
                 //                $("#mep_0").css('max-height', windowHeight - navHeight+'px');
                 //                $('.mejs-fullscreen button').removeAttr('data-type');
                 //
                 //            }
                 //            //console.log(e.keyCode)
                 //        })
                 //    }
                 //});

                 if (!$ie8) {
                     $("#player")[0].play();
                    if($ie9){
                        $("#player").attr({"height":windowHeight - navHeight+'px','width':windowWidth});
                        $('#mep_0').css({"height":windowHeight - navHeight+'px','width':'100%'});
                        $('.mejs-layer').css({"height":windowHeight - navHeight+'px','width':'100%'});
                        $('.js_playerBox').css({"height":windowHeight - navHeight+'px','width':'100%'});
                    }
                    
                 }else{
                 	if (windowWidth > 991) {
                        // alert(1);
                        $('.js_styleVideoBox').css('height', windowHeight - navHeight+'px');
                        $('.js_styleVideoCont').css({'padding-top': styleVudeoPading, 'padding-bottom': styleVudeoPading});
                    }
                 }
             });
         }else if(window.innerWidth > 991){
             $(".js_lifeStylePlay ").on('click', function (){
               var videoSrc =  $(this).attr('data-src');
                 $("#player").attr("src", videoSrc).removeClass("o_df-hide");
                 $(".js_playerBox ").show().find(".mejs-video ").removeClass("o_df-hide ");
                 $("#player ").removeClass("o_df-hide ").css({'width':'100%','height':windowWidth*0.6+'px'});
                 $("#player")[0].play();
                 if(windowWidth>991){
                     $('.js_styleVideoBox').hide();
                 }else{
                     $('.js_videoMdShow').hide();
                     var navHeight = $('.l-nav').height();
                     var firstPHeight = $('.aboutus_banner').height();
                     $(document).scrollTop(navHeight+firstPHeight);
                     $('.js_jchg_video').css('height',windowWidth*0.6+'px')
                 }
                 $(".js_styleLifevideoClose ").on('click', function () {
                     var player = new MediaElementPlayer('#player');
                     player.pause();
                     $(".js_playerBox ").hide();
                     $('.js_styleVideoBox').show();
//                   $('.js_videoMdShow').show();

                 });

             })
         }else{
         	 $(".js_lifeStylePlay ").on('click', function (){
               var videoSrc =  $(this).attr('data-src');
                 $("#player").attr("src", videoSrc).removeClass("o_df-hide");
                 $(".js_playerBox ").show().find(".mejs-video ").removeClass("o_df-hide ");
                 $("#player ").removeClass("o_df-hide ").css({'width':'100%','height':windowWidth*0.6+'px'});
                 $('.js_videoMdShow').hide();
                 var navHeight = $('.l-nav').height();
                 var firstPHeight = $('.aboutus_banner').height();
                 $(document).scrollTop(navHeight+firstPHeight);
                 $('.js_jchg_video').css('height',windowWidth*0.6+'px');
                 $("#player")[0].play();
                 $(".js_styleLifevideoClose ").on('click', function () {
                     var player = new MediaElementPlayer('#player');
                     player.pause();
                     $(".js_playerBox ").hide();
                     $('.js_styleVideoBox').show();
                     $('.js_videoMdShow').show();

                 });

             })
         }
    }


// 优生活轮播
    var mySwiper = new Swiper('.swiper-container', {
        loop: true,
        autoplay: 2000,
        //cssWidthAndHeight: true,
        calculateHeight : true,
        autoplayDisableOnInteraction: false, //手动滑动图片后是否停止滚动轮播
        onSlideChangeStart: function (swiper) {
            var dataType =  $('.js_lifeStylePhotoBox').attr('data-type');
            var contentNext = $('.js_lifeStyleGoodLifeSwipe .swiper-slide-active').next().children('.js_lifeStylePhotoCentent').children('img').attr('src');
            var contentPrev = $('.js_lifeStyleGoodLifeSwipe .swiper-slide-active').prev().children('.js_lifeStylePhotoCentent').children('img').attr('src');
            var $leftBack = $('.js_lifeStylePhotoLeft').children('.js_lifeStylePhotoCentent').children('img');
            var $rightBack = $('.js_lifeStylePhotoRight').children('.js_lifeStylePhotoCentent').children('img');
            if(dataType=='left'){
                if (contentPrev == undefined) {
                    contentPrev = $('.js_lifeStyleGoodLifeSwipe').find('.swiper-slide').eq(2).children('.js_lifeStylePhotoCentent').children('img').attr('src');
                    $leftBack.attr('src', contentPrev);
                    $rightBack.attr('src', contentNext);
                } else {
                    $rightBack.attr('src', contentNext);
                    $leftBack.attr('src', contentPrev);
                }
            }else{
                if (contentNext == undefined) {
                    contentNext = $('.js_lifeStyleGoodLifeSwipe').find('.swiper-slide').eq(2).children('.js_lifeStylePhotoCentent').children('img').attr('src');
                    $leftBack.attr('src', contentPrev);
                    $rightBack.attr('src',  contentNext);
                } else {
                    $leftBack.attr('src',contentPrev);
                    $rightBack.attr('src',contentNext);

                }
            }
            var index = $('.js_lifeStyleGoodLifeSwipe').find('.swiper-slide-active').attr('data-index');
            $('.js_lifeStyelGoodLifeDown').eq(index - 1).addClass('show').siblings().removeClass('show');
//          var myT1=new Date();
//          console.log(myT1.getTime()-tilll);
//			tilll=myT1.getTime();
        },
        onInit: function () {
            $('.js_lifeStyleGoodLifeSwipe').find('.js_recPic').each(function(){
                $(this).oPicture().init();
            });
        }

    });

    // 优生活切换按钮
    $('.js_photoLeftBtn').on('click', function (e) {
        $('.js_lifeStylePhotoBox').attr('data-type','left');
        e.preventDefault();
        mySwiper.swipePrev();
    });
    $('.js_photoRightBtn').on('click', function (e) {
        $('.js_lifeStylePhotoBox').attr('data-type','right');
        e.preventDefault();
        mySwiper.swipeNext();
    });




// 头部banner轮播
// $('.')
    if (windowWidth < 992) {
        var bannerSwipe = new Swiper('.js_lifeStyleVideoSwipe', {
            loop: true,
            autoplay: 5000,
            simulateTouch: false,
            //cssWidthAndHeight: true,
            calculateHeight : true,
            autoplayDisableOnInteraction: false,//手动滑动图片后是否停止滚动轮播
            onSlideChangeStart: function (swiper) {
                var bannerIndex = $('.js_lifeStyleVideoSwipe').find('.swiper-slide-active').attr('data-index');
                if (bannerIndex == 1) {
//                  console.log(1);
                    $('.js_videoMdImgMin').children('img').attr('src', $('.js_videoMdImgMaxL').children('img').attr('src'));
                } else {
                    $('.js_videoMdImgMin').children('img').attr('src', $('.js_videoMdImgMaxR').children('img').attr('src'));
                    //console.log(2);

                }
            }
        })
        var bannerIndex = $('.js_lifeStyleVideoSwipe').find('.swiper-slide-active').attr('data-index');
        if (bannerIndex == 1) {
//          console.log(1);
            $('.js_videoMdImgMin').children('img').attr('src', $('.js_videoMdImgMaxL').children('img').attr('src'));
        } else {
            $('.js_videoMdImgMin').children('img').attr('src', $('.js_videoMdImgMaxR').children('img').attr('src'));
            //console.log(2);

        }
    }

    if (windowWidth > 574) {




// 核心优势 轮播

        var superioritySwiperLeft = new Swiper('.js_superioritySwiperLeft', {
            loop: true,
            autoplay: 5000,
            simulateTouch: true,
            //cssWidthAndHeight: true,
            calculateHeight : true,
            autoplayDisableOnInteraction: false,//手动滑动图片后是否停止滚动轮播
            onSlideChangeStart: function (swiper) {
                var dataType = $('.js_superiorityBox').attr('data-type');
                if (dataType == 1) {
                    $('.js_superiorityBox').attr('data-type', '2');
                    $('.js_superiorityCenter').eq(0).hide();
                    $('.js_superiorityCenter').eq(1).show();
                    $('.js_superiorityJt').eq(1).show();
                    $('.js_superiorityJt').eq(0).hide();
                    $('.js_superiorityDownText').eq(1).show();
                    $('.js_superiorityDownText').eq(0).hide();
                    //$('.js_superiorityCenter').eq(0)
                } else if (dataType == 2) {
                    $('.js_superiorityBox').attr('data-type', '1');
                    $('.js_superiorityCenter').eq(1).hide();
                    $('.js_superiorityCenter').eq(0).show();
                    $('.js_superiorityJt').eq(1).hide();
                    $('.js_superiorityJt').eq(0).show();
                    $('.js_superiorityDownText').eq(1).hide();
                    $('.js_superiorityDownText').eq(0).show();
                }

                if(windowWidth>575){
                    $('.js-scroll-num').html(' ');

                    $('.js-scroll-num').each(function(index){
                        var dataNum = $(this).attr('data-num');
                        for (var i = 0; i <  dataNum.length; i++) {
                            $(this).append('<div num="'+dataNum[i]+'"><span>0</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span></div>');

                        }
                        if($(this).hasClass('js-scroll-more')){
                            $(this).append('<sup>+</sup>')
                        }
                    });

                    if($('.js-scroll-num').not('.js-inited').length > 0){
                        $('.js-scroll-num').find('div').each(function(){
                            $(this).addClass('js-inited');
                            $(this).find('span').eq(0).animate({
                                'margin-top': -50 * $(this).attr('num') + 'px'
                            },1000);
                        })
                    }

                }


            }
        })






// 核心优势 轮播
        var superioritySwiperRight = new Swiper('.js_superioritySwiperRight', {
            loop: true,
            autoplay: 5000,
            simulateTouch: false,
            //cssWidthAndHeight: true,
            calculateHeight : true,
            autoplayDisableOnInteraction: false,//手动滑动图片后是否停止滚动轮播
            onSlideChangeStart: function (swiper) {
            }
        })
    }
    $('.js_superiorityRightBtn').on('click', function (e) {
        e.preventDefault();

        superioritySwiperLeft.swipePrev();
        superioritySwiperRight.swipePrev()
    })
    $('.js_superiorityLeftBtn').on('click', function (e) {
        // alert(1)

        e.preventDefault();
        superioritySwiperLeft.swipeNext();
        superioritySwiperRight.swipeNext();
    })


// 真是案例轮播图

    var caseSwiper = new Swiper('.js_lifeStyleCasePhoto', {
        loop: true,
        autoplay: 5000,
        simulateTouch: false,
        //cssWidthAndHeight: true,
        calculateHeight : true,

        autoplayDisableOnInteraction: false,//手动滑动图片后是否停止滚动轮播
        onSlideChangeStart: function (swiper) {

            var index = $('.js_lifeStyleCasePhoto').find('.swiper-slide-active').attr('data-index');
            $('.js_casePhotoNub').children('li').eq(index - 1).addClass('cur').siblings().removeClass('cur');
            $('.js_lifeStyleCaseText').children('li').eq(index - 1).addClass('cur').siblings().removeClass('cur');

            var casePhotoPrev = $('.js_lifeStyleCasePhoto').find('.swiper-slide-active').prev().children('img').attr('src');
            var casePhotoNext = $('.js_lifeStyleCasePhoto').find('.swiper-slide-active').next().children('img').attr('src');
            // var casePhoto = $('.js_lifeStyleCasePhoto').find('.swiper-slide-active').prev().attr('data-index');
            $('.js_casePhotoMinLeft').children('img').attr('src', casePhotoPrev);

            if(windowWidth<992){
                $('.js_casePhotoMinLeft').css('top',($('.js_lifeStyleCasePhoto').height()-lifeCasePhotoHMd)/2);
                $('.js_casePhotoMinRight').css('top',($('.js_lifeStyleCasePhoto').height()-lifeCasePhotoHMd)/2);
                $('.js_lifeStyleCaseLeft').css({'height': lifeCasePhotoHMd, "line-height": lifeCasePhotoHMd + 'px','margin-top':($('.js_lifeStyleCasePhoto').height()-lifeCasePhotoHMd)/2});
                $('.js_lifeStyleCaseRight').css({'height': lifeCasePhotoHMd, "line-height": lifeCasePhotoHMd + 'px','margin-top':($('.js_lifeStyleCasePhoto').height()-lifeCasePhotoHMd)/2});
                $('.js_lifeStyleCaseLeftBtn').show();
                $('.js_lifeStyleCaseRightBtn').show();

            }
            if (casePhotoNext == undefined) {
                casePhotoNext = $('.js_lifeStyleCasePhoto').find('.swiper-slide').eq(2).children('img').attr('src');
                $('.js_casePhotoMinRight').children('img').attr('src', casePhotoPrev);

            } else {
                $('.js_casePhotoMinRight').children('img').attr('src', casePhotoNext);

            }
            // console.log(casePhotoNext);
        }
    });


    $('.js_lifeStyleCaseLeftBtn').on('click', function (e) {
        e.preventDefault();
        caseSwiper.swipePrev()

    });
    $('.js_lifeStyleCaseRightBtn').on('click', function (e) {
        e.preventDefault();
        caseSwiper.swipeNext()
    });


// 创造优生活 轮播


    var CreateSwipe=[];

    //生产暂时隐藏
    //
    //var createSwipeTittle = new Swiper('.js_lifeStyleCreateTop', {
    //    loop: false,
    //    slidesPerView : 'auto',
    //    loopedSlides:3
    //
    //})




//    创造优生活模块轮播
setTimeout(function(){
    for(var i = 1;i<$('.js_lifeStyleCreateSwipe').length+1;i++){
        var className =".js_lifeStyleCreateSwipe_"+i;
        //console.log(i)
        //$(className).hide();
        if($(className)&&$(className).find('li').length>2){
               CreateSwipe[i] = new Swiper(className, {
                loop: true,
                autoplay: 5000,
                simulateTouch: false,
                   slidesPerView:2,
                   slidesPerGroup : 2,
                   //cssWidthAndHeight: true,
                   calculateHeight : true,
                autoplayDisableOnInteraction: false,//手动滑动图片后是否停止滚动轮播
                onSlideChangeStart: function (swiper) {

                },
                onInit: function () {
                    $(className).find('.js_recPic').each(function(){
                        $(this).oPicture().init();
                    });
                }
            });
        }
    }
},400);



    $('.js_lifeStyleCreateLeftBtn').on('click', function (e) {
        e.preventDefault();
        for(var i= 0;i<CreateSwipe.length;i++){
            if(CreateSwipe[i]){
                CreateSwipe[i].swipePrev();

            }
        }
    });
    $('.js_lifeStyleCreateRightBtn').on('click', function (e) {
        e.preventDefault();
        for(var i = 0;i<CreateSwipe.length;i++){
            if(CreateSwipe[i]){
            CreateSwipe[i].swipeNext();

            }
        }
    });

    setTimeout(function () {
        $('.js_lifeStyleCreateTop li').eq(0).click();
    }, 1000)
    //var lifeStyleTile={'obj':$('.js_lifeStyleCreateTitle'),'fontSize':'14','lineNub':'2','width':$('.product-list-cont').width()};
    //textLength(lifeStyleTile);
});

