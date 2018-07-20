//用来存放所有轮播
var swiper = {};//为了template加载数据方便所以提出
$(function() {

    //文字卖点
    swiper.fontSwiper = new Swiper('.js_fontSwiper',{
        slidesPerView : 'auto',
        calculateHeight : true//Swiper根据slides内容计算容器高度。
    });
    $('.js_fontSwiperPrev').on('click',function(){
        swiper.fontSwiper.swipePrev();
    });
    $('.js_fontSwiperNext').on('click',function(){
        swiper.fontSwiper.swipeNext();
    });

    //场景展示
    $(".js_scenePicture").each(function() {
        $(this).oPicture({}).init();
    });
    swiper.sceneSwiper = new Swiper('.js_sceneSwiper',{
        loop: false,
        autoplay: 5000,
        slidesPerView: 1,//滑动展示个数
        centeredSlides: true,
        slidesPerGroup: 1,//每次滑动移动个数
        updateOnImagesReady : true,
        calculateHeight : true//Swiper根据slides内容计算容器高度。
    });
    //多图轮播，单图不轮播
    if($('.js_sceneSwiper').find('.swiper-slide').size()>1){
        swiper.sceneSwiper.params.loop = true;
    }

    /**
     * 核心卖点
     **/
    swiper.sellPointSwiper = new Swiper('.js_swiperSellPoint', {
        grabCursor: true,
        calculateHeight : true,//Swiper根据slides内容计算容器高度。
        // loop: true,
        // autoplay: 1000,
        onFirstInit: function(swiper){
            $('.js_sellpointFont').hide();
            $('.js_sellpointFont').eq(0).show();
        },
        onSlideChangeEnd:function(swiper){
            var index = swiper.activeIndex;
            $('.js_sellpointFont').hide();
            $('.js_sellpointFont').eq(index).show();
            $('.js_sellpointSwiper_icon .icon-box').removeClass('active').eq(index).addClass('active');
        }
    });
    $('.js_swiperSellPointNext').on('click',function(){
        swiper.sellPointSwiper.swipeNext();
    });
    //图标-缩略图
    $('.js_sellpointSwiper_icon .icon-box').on('click',function(){
        var index = parseInt($(this).attr('icon-index'));
        swiper.sellPointSwiper.swipeTo(index, 500);
        $('.js_sellpointSwiper_icon .icon-box').removeClass('active');
        $(this).addClass('active');
    });

    //优惠组合
    swiper.preferentialSwiper = new Swiper('.js_swiperPreferential', {
        direction: 'horizontal',
        grabCursor: true,
        loop: true,
        // autoplay: 1000,
        slidesPerView: 4,
        // 如果需要分页器
        // pagination: '.js_swiperPreferential',
        paginationType: 'bullets',

        // 如果需要前进后退按钮
        nextButton: '.js_swiper_next',
        prevButton: '.js_swiper_prev'

        // 如果需要滚动条
        // scrollbar: '.swiper-scrollbar'
    });

    // //更多选择
    // swiper.moreSwiper = new Swiper('.js_swiperMore1', {
    //     loop: true,
    //     autoplay: 5000,

    //     slidesPerView: 3,//滑动展示个数
    //     centeredSlides: true,
    //     slidesPerGroup: 1,//每次滑动移动个数
    //     // calculateHeight : true,//Swiper根据slides内容计算容器高度。

    // });

    // $('.js_swiperMore_prev').click(function(){
    //     swiper.moreSwiper.swipePrev(); 
    // });
    // $('.js_swiperMore_next').click(function(){
    //     swiper.moreSwiper.swipeNext(); 
    // });

    init();


    //电商拉页
    /*$('.js_foldPlus').on('click', function() {
        //电商拉页-点击加号，展示锚点定位
        var eleI = $(this).find('i').eq(0);
        if (eleI.hasClass('icon-plus')) {

            //文字列表
            $('.js_foldlist').slideDown(300);
            eleI.removeClass('icon-plus').addClass('icon-close');
            eleI.parent().css('color', '#ccc');

            //右侧图片
            $('.js_foldimg img').each(function(i, n) {
                if (i) {
                    var src = $(this).attr('data-src');
                    $(this).attr('src', src);
                }
            });

            //小屏幕文字列表-轮播
            if(document.body.offsetWidth <= 991){
                $('.js_foldoverSwiper').show();
                swiper.foldoverSwiper = new Swiper('.js_foldoverSwiper',{
                    loop: true,
                    slidesPerView : 'auto',
                });
            }
        } else {

            //文字列表
            $('.js_foldlist').slideUp(300);
            eleI.removeClass('icon-close').addClass('icon-plus');
            eleI.parent().css('color', '#e60012');

            //小屏幕文字列表-轮播
            if(document.body.offsetWidth <= 991){
                $('.js_foldoverSwiper').hide();
            }

            //右侧图片
            $('.js_foldimg img').each(function(i, n) {
                if (i) {
                    $(this).attr('src', '');
                }
            });

            $('.js_oHerlFoldover').css('height', $('.js_oHerlSizeFoldover').outerHeight());
            $('.js_center').oBoxCenter().init();

            location.href = $('.js_foldlist').find('a').eq(0).attr('href');
        }

        //锚点定位后，左侧按钮定位
        $('.js_foldoverNav').find('a').on('click',function(){
            var index = parseInt($(this).attr('data-index'));
            var top = 370;
            var topSm = 0;
            for(var i=0 ; i<index ; i++){
                if(i==index-1){
                    topSm = $('.js_foldimg').find('img').eq(i).height();
                    return;
                }
                top += $('.js_foldimg').find('img').eq(i).height();
                topSm += $('.js_foldimg').find('img').eq(i).height();
            }
            if(document.body.offsetWidth>991){
                $('.js_foldPlus').css('top',top);
                $('.js_foldoverNav').css('height',$('.js_oHerlSizeFoldover').height());
                $('.js_foldlist').css('top',top-310);
            }else{
                $('.js_foldPlus').css('top',topSm);
                // $('.js_foldoverNav').css('height',$('.js_oHerlSizeFoldover').height());
                $('.js_foldoverNav').css('height',0);
            }

        });

    });*/

    /**
     * 详情页导航
     */
    //导航hover-991以下
    if(document.body.offsetWidth<=991){
        $('.js_navfloatHover').on('click',function(){
            $(this).find('.head-info-hover').show();
        });
        //隐藏导航hover-991以下
        $('body').on('click', function (e) {
            if(!$(e.target).hasClass('head-list-type')&&!$(e.target).hasClass('nav-head-icon')){
                $(this).find('.head-info-hover').hide();
            }
        });
    }
    //锚点定位
    var scrollPosEl = new Object();//用于存放各个模块的位置
    var navHeight = 68;//导航条高度
    $('.js_buyNow').hide();
    function scrollPosFun($ele,PosTop){
        $('.js_navLink').find('a[data-nav]').each(function(i,n){
            $(this).off().on('click',function(){
                var href = $(this).attr('data-nav');
                var jshref = '.' + href;
                scrollPosEl[href] = $(jshref).offset().top - navHeight;
                $("html,body").animate({scrollTop: scrollPosEl[href]}, 100);
            });
        });
    }
    scrollPosFun();
    //滚动高亮
    $(window).scroll(function(){
        var currentPos = $(document).scrollTop();

        $('.js_navLink').find('a[data-nav]').each(function(i,n){
            var href = $(this).attr('data-nav');
            var jshref = '.' + href;
            scrollPosEl[href] = $(jshref).offset().top - navHeight;
        });
        //导航定位
        if(currentPos>$('.js_navPos').offset().top){
            $('.js_detailNav').hasClass('detail-nav-fixed')||$('.js_detailNav').addClass('detail-nav-fixed');
            $('.js_buyNow').css('display','inline-block');
        }else{
            $('.js_detailNav').hasClass('detail-nav-fixed')&&$('.js_detailNav').removeClass('detail-nav-fixed');
            $('.js_buyNow').hide();
        }
        //导航高亮
        $('.js_navLink').find('a[data-nav]').removeClass('active');
        var navName;//高亮导航位置
        var navHigh;
        jQuery.each(scrollPosEl,function(i,n){
            if(parseInt(n)<=currentPos){
                if(navName){
                    if(currentPos-parseInt(n)<=navHigh){
                        navName = i;
                        navHigh = currentPos - parseInt(n);
                    }
                }else{
                    navName = i;
                    navHigh = currentPos - parseInt(n); 
                }
            }
        });
        $('.js_navLink').find('a[data-nav='+navName+']').addClass('active');
    });

    /********电商拉页*******/
    //电商拉页
    $('.js_foldPlus').on('click', function() {
        //电商拉页-点击加号，展示锚点定位
        var eleI = $(this).find('i').eq(0);
        var url = window.location.href.split("/")[window.location.href.split("/").length - 1]
        url = url.split("/")[0];
        var anchor = window.location.hash; //获取当前链接是否有锚点
        if (eleI.hasClass('icon-plus')) {
            //文字列表
            $('.js_foldlist').slideDown(300);
            eleI.removeClass('icon-plus').addClass('icon-close');
            eleI.parent().css('color', '#ccc');

            //点击加好显示所有图片
            $('http://image.tongshuai.com/tongshuai/images/.js_foldimg .box').each(function (i) {
                $(this).removeClass("o_df-hide");
            })
            //小屏幕文字列表-轮播
            if(document.body.offsetWidth <= 991){
                $('.js_foldoverSwiper').show();
                $(this).find('span').html("");
                $(this).parent(".js_oHerlFoldover").addClass("cur").addClass("fixed");
                var html = '<a class="iconfont icon-bg-solid round js_round"></a>'
                $(this).parent(".js_foldoverNav").append(html);
            }else{
                $(this).find('span').html("收起产品介绍");
                var btnNum = $(".js_foldlsit_btn").find("a").length;
                var foldPlus = (btnNum * 52) + 80;
                if (document.body.offsetWidth > 991) {
                    if( btnNum == 0){
                        var htmlImgH = $(".js_buyhtml").find(".js_box").eq(0).find("img").height();
                        $(".js_foldPlus").css("top", htmlImgH / 2 - 44 + 'px');
                    }else{
                        $(".js_foldPlus").css("top", foldPlus + 20 + 'px');
                    }
                    
                }
            }
            // if (document.body.offsetWidth <= 991) {
            //     location.href = $('.js_foldoverSwiper').find('a').eq(0).attr('href').replace(anchor, '');
            // } else {
            //     location.href = $('.js_foldlist').find('a').eq(0).attr('href');
            // }
        } else {

            //文字列表
            $('.js_foldlist').slideUp(300);
            $(".js_anchor").removeClass("fixed");
            eleI.removeClass('icon-close').addClass('icon-plus');
            eleI.parent().css('color', '#e60012');

            //小屏幕文字列表-轮播
            if(document.body.offsetWidth <= 991){
                $('.js_foldoverSwiper').hide();
                $(this).parent(".js_oHerlFoldover").removeClass("cur").removeClass("fixed");
                $(".js_round").remove();
            }

            //点击加号隐藏img(除了第一个)
            $('http://image.tongshuai.com/tongshuai/images/.js_foldimg .box').each(function (i) {
                $(this).addClass("o_df-hide");
                $('http://image.tongshuai.com/tongshuai/images/.js_foldimg .box').eq(0).removeClass("o_df-hide");
            })


            //$('.js_oHerlFoldover').css('height', $('.js_oHerlSizeFoldover').outerHeight());
            $('.js_center').oBoxCenter().init();
            $(this).find('span').html("详细产品介绍");
            var htmlImgH = $(".js_buyhtml").find(".js_box").eq(0).find("img").height();
            if (document.body.offsetWidth > 991) {
                $(".js_foldPlus").css("top", htmlImgH / 2 - 44 + 'px');
                $('.js_foldoverNav').css('height', htmlImgH);
            }
        }
        if (document.body.offsetWidth <= 991) {
            var anchorHref = $('.js_foldoverSwiper').find('a').eq(0).attr('href')
        }else{
           var anchorHref = $('.js_foldlist').find('a').eq(0).attr('href')
        }
        if (anchor == '') {
            if (document.body.offsetWidth <= 991) {
                if( anchorHref != undefined || anchorHref != null){
                    location.href = $('.js_foldoverSwiper').find('a').eq(0).attr('href');
                }
            }else{
                if( anchorHref != undefined || anchorHref != null){
                    location.href = $('.js_foldlist').find('a').eq(0).attr('href');
                }
            }
        } else {
            if (document.body.offsetWidth <= 991) {
                if( anchorHref != undefined || anchorHref != null){
                    location.href = $('.js_foldoverSwiper').find('a').eq(0).attr('href').replace(anchor, '#0F');
                }
            } else {
                if( anchorHref != undefined || anchorHref != null){
                    location.href = $('.js_foldlist').find('a').eq(0).attr('href').replace(anchor, '#0F');
                }
            }
        }

    });

    foldlsit();
    
    //电商拉页重新绘制拉页锚点
    function foldlsit() {

        $(".js_foldlsit_btn").html("");
        $(".js_foldoverNav_btn").html("");
        var num =$(".js_buyhtml .js_box").length;
        var btnhtml = '';
        var url=window.location.href.split("/")[window.location.href.split("/").length-1]
        url = url.split("/")[0];
        var anchor = window.location.hash; //获取当前链接是否有锚点
        if (anchor != '') {
            url = url.replace(anchor, '');
        }
        if(num < 2){
            $(".js_foldPlus").addClass("o_df-hide");
            $(".js_anchor").hide();
            $(".js_detail-foldover").css("padding-bottom","0")
        }
        for (var i = 0; i < num; i++) {
            $(".js_buyhtml .js_box").eq(i).attr("id", i + 'F').addClass("o_df-hide");
            $(".js_buyhtml .js_box").eq(0).removeClass("o_df-hide");
            var text = $(".js_buyhtml .js_box").eq(i).find(".js_tag").text();
            text = $.trim(text);
            if(text.length){
                if(document.body.offsetWidth>991){
                    if(i == 0){
                       
                            btnhtml += '<a href="'+url+'#'+i+'F" name="'+i+'F" class="l-btn-normal alive" data-index='+i+'>'+text+'</a>';
                        
                    }else{
                            btnhtml += '<a href="'+url+'#'+i+'F" name="'+i+'F" class="l-btn-normal" data-index='+i+'>'+text+'</a>';

                    }
                    $(".js_foldlsit_btn").html(btnhtml);
                }else{
                    if(i == 0){
                        btnhtml += '<a href="'+url+'#'+i+'F" name="'+i+'F" class="l-btn-sm l-btn-line2 alive" data-index='+i+'>'+text+'</a>';
                    }else{
                        btnhtml += '<a href="'+url+'#'+i+'F" name="'+i+'F" class="l-btn-sm l-btn-line2" data-index='+i+'>'+text+'</a>';
                    }
                    $(".js_foldoverNav_btn").html(btnhtml);
                }
            }
        }

        //初始化左侧按钮定位
        /*var btnNum = $(".js_foldlsit_btn").find("a").length;
        var foldPlus = (btnNum * 52) + 60;
        if(document.body.offsetWidth>991){
            $(".js_foldPlus").css("top",foldPlus+'px');
        }*/

    
        var htmlImgH = $(".js_buyhtml").find(".js_box").eq(0).find("img").height();
        if (document.body.offsetWidth > 991) {
            $(".js_foldPlus").css("top", htmlImgH / 2 - 44 + 'px');
        }

        /*if($(".js_box").eq(0).find("img")[0].complete){
            $(".js_foldPlus").removeClass("o_df-hide");
        }else{
            $(".js_box").eq(0).find("img").load(function(){
                $(".js_foldPlus").removeClass("o_df-hide");
            });
        }*/

            $(".js_box").eq(0).find("img").load(function(){
                $(".js_foldPlus").removeClass("o_df-hide");
            });



        //锚点定位后，左侧按钮定位
        $('.js_foldoverNav .js_foldlist').find('a').on('click',function(){
            var index = parseInt($(this).attr('data-index'));
            //点击当前锚点，添加选中状态，同类去掉选中状态
            $(this).addClass("alive").siblings().removeClass("alive");
            var indexName = $(this).attr("name");
            $('html,body').animate({ scrollTop: $("#" + indexName).offset().top - 68 });
            var btnNum = $(".js_foldlsit_btn").find("a").length;
            var top = (btnNum * 52) + 130;
            for (var i = 0; i < index; i++) {
                top += $('.js_foldimg').find('img').eq(i).height();
            }
            if (document.body.offsetWidth > 991) {
                // $('.js_foldPlus').css('top', top);
                // $('.js_foldoverNav').css('height', $('.js_oHerlSizeFoldover').height());
                // $('.js_foldlist').css('top', top - (btnNum * 52));
            } else {
                $('.js_foldoverNav').css('height', 0);
            }
        });
        $(".js_foldoverNav_btn").find('a').on('click', function() {
            var index = parseInt($(this).attr('data-index'));
            //点击当前锚点，添加选中状态，同类去掉选中状态
            $(this).addClass("alive").siblings().removeClass("alive");
        });
    }

    // if ($(".js_detail-foldover").length) {
    //     $(window).scroll(function() {
    //         var $winTop = $(window).scrollTop();
    //         var $foldH = $(".js_detail-foldover").offset().top + $(".js_detail-foldover").height();
    //         var $foldT = $(".js_detail-foldover").offset().top;
    //         if ($(".js_oHerlFoldover").hasClass("cur")) {
    //             if ($winTop > $foldH) {
    //                 $(".js_oHerlFoldover").removeClass("fixed");
    //             } else if ($winTop < $foldT) {
    //                 $(".js_oHerlFoldover").removeClass("fixed");
    //             } else {
    //                 $(".js_oHerlFoldover").addClass("fixed");
    //             }
    //         }

    //     });
    // }
    var scrollAnchor = new Object(); //用于存放各个模块的位置
    //左侧锚点跟着右侧滚动
    $(window).scroll(function() {
        var $close = $(".js_foldPlus i").hasClass("icon-close");
        var $winTop = $(window).scrollTop();
        var $foldH = $(".js_detail-foldover").offset().top + $(".js_detail-foldover").height();
        var $foldT = $(".js_detail-foldover").offset().top;
        var btnNum = $(".js_foldlsit_btn").find("a").length;
        var top = (btnNum * 52) + 160;
        if ($close == true) {
            if (document.body.offsetWidth > 991) {
                if ($winTop > $foldH - top - 38) {
                    $(".js_anchor").removeClass("fixed");
                } else if ($winTop < $foldT) {
                    $(".js_anchor").removeClass("fixed");
                } else {
                    $(".js_anchor").addClass("fixed");
                }
            } else {
                if ($winTop > $foldH - 350) {
                    $(".js_anchor").removeClass("fixed").addClass("o_df-hide");
                } else if ($winTop < $foldT - 200) {
                    $(".js_anchor").removeClass("fixed");
                } else {
                    $(".js_anchor").addClass("fixed").removeClass("o_df-hide");
                }
            }
        }
        $('.js_anchor').find('a[data-index]').each(function(i, n) {
            var name = $(this).attr('name');
            var jshref = '#' + name;
            scrollAnchor[name] = $(jshref).offset().top - navHeight;
        });
        var navName; //高亮导航位置
        var navHigh;
        jQuery.each(scrollAnchor, function(i, n) {
            if (parseInt(n) <= $winTop) {
                if (navName) {
                    if ($winTop - parseInt(n) <= navHigh) {
                        navName = i;
                        navHigh = $winTop - parseInt(n);
                    }
                } else {
                    navName = i;
                    navHigh = $winTop - parseInt(n);
                }
            }
        });
        $('.js_anchor').find('a[name=' + navName + ']').addClass('alive').siblings().removeClass("alive");
    });


    /********电商拉页*********/


    //产品参数-结构图居中
    function paramImgCenter($ele){
        $ele.css('height',$ele.parent().height());
        if($ele.width()>$ele.parent().width()){
            $ele.css('width','100%');
        }
    }

    $(".js_recPic").each(function(){
        $(this).oPicture().init();
    });
    // paramImgCenter($(".js_structbg"));

    $(".js_swiperPreferential .js_checkbox").jq_qvote();

    //浏览产品细节图
    $('.js_bannerSwiperClose').on('click', function() {
        $('.js_specificsBoxShow').fadeOut(1000);
    });

    var screenWidth = document.body.offsetWidth;

    var bannerSwiperSlidesPerView = 3;

    if (screenWidth <= 575) {
        bannerSwiperSlidesPerView = 1;
    }
    
    swiper.bannerSwiper = new Swiper('.js_bannerSwiper', {
        // loop: true,
        // autoplay: 3000,
        updateOnImagesReady: true,
        centeredSlides: true,
        slidesPerView: bannerSwiperSlidesPerView,
        watchActiveIndex: true,
        // calculateHeight : true,//Swiper根据slides内容计算容器高度
        onFirstInit: function(swiper) {


            $('.js_bannerSwiperPage').find('.pagination-box').eq(0).addClass('active');

            // var index = swiper.activeLoopIndex;
            var index = swiper.activeIndex;

            // $('.js_bannerSwiper .swiper-slide-active').find('img').animate({
            //     'width': '100%'
            // }, 500);

            // $('.js_bannerSwiper .swiper-slide').not('.swiper-slide-active').find('img').css({
            //     'width': '55%'
            // });

        },
        onSlideChangeEnd: function(swiper) {
            var index = swiper.activeLoopIndex;

            // $('.js_bannerSwiper .swiper-slide-active').find('img').animate({
            //     'width': '100%'
            // }, 500);

            // $('.js_bannerSwiper .swiper-slide').not('.swiper-slide-active').find('img').css({
            //     'width': '55%'
            // });

            $('.js_bannerSwiperPage .pagination-box').removeClass('active');
            $('.js_bannerSwiperPage .pagination-box').eq(swiper.activeIndex).addClass('active');
            

            $('.js_bannerSwiperPage .pagination-box').hide()

            var showArr = []
            if (index < 1) {
                showArr = [0, 1, 2, 3]
            } else if (index > $('.js_bannerSwiperPage .pagination-box').length - 3) {
                showArr = [$('.js_bannerSwiperPage .pagination-box').length-1, $('.js_bannerSwiperPage .pagination-box').length-2, $('.js_bannerSwiperPage .pagination-box').length-3, $('.js_bannerSwiperPage .pagination-box').length-4]
            } else {
                showArr = [index-1, index, index+1, index+2]
            }

            // $('.js_bannerSwiperPage .pagination-box').eq(index).css('display','inline-block')
            // $('.js_bannerSwiperPage .pagination-box').eq(index+1).css('display','inline-block')
            // $('.js_bannerSwiperPage .pagination-box').eq(index+2).css('display','inline-block')
            // $('.js_bannerSwiperPage .pagination-box').eq(index-1).css('display','inline-block')
            for (var i = 0; i < showArr.length; i++) {
                $('.js_bannerSwiperPage .pagination-box').eq(showArr[i]).css('display','inline-block');         
            }

        }
    });


    $('.js_specificsShow').on('click', function() {
        $('.js_specificsBoxShow').fadeIn(1000);
        swiper.bannerSwiper.params.calculateHeight = true;

        swiper.bannerSwiper.reInit();
        swiper.bannerSwiper.swipeNext();
        //分页
        $('.js_bannerSwiperPage .pagination-box').click(function() {
            var index = $(this).attr('data-index');

            swiper.bannerSwiper.swipeTo(parseInt(index), 1000, false);
            
            // $('.js_bannerSwiper .swiper-slide-active').find('img').animate({
            //     'width': '100%'
            // }, 500);

            // $('.js_bannerSwiper .swiper-slide').not('.swiper-slide-active').find('img').css({
            //     'width': '55%'
            // });

            $(this).siblings('.pagination-box').removeClass('active');
            $(this).addClass('active');
        });
        // 上一页 下一页
        $('.js_bannerSwiperPrev').on('click', function() {
            swiper.bannerSwiper.swipePrev();
        });
        $('.js_bannerSwiperNext').on('click', function() {
            swiper.bannerSwiper.swipeNext();
        });
    });


    $(window).resize(function() {
        init();
        //foldlsit();
    });


    function init() {
        var screenWidth = document.body.offsetWidth;
        var screenHeight = document.body.offsetHeight;

        var slidesPerView = 4;

        if (screenWidth <= 575) {
            slidesPerView = 1;
        } else if (screenWidth > 1199) {
            slidesPerView = 4;
        } else {
            slidesPerView = 2;
        }

        if($(".js_swiperPreferential").length){
            swiper.preferentialSwiper.params.slidesPerView = slidesPerView;
        }
        setTimeout(function() {
            $('.js_oHerl').css('height', $('.js_oHerlSize').outerHeight());
            $('.js_center').oBoxCenter().init();
        }, 1000);

        //延迟加载图片
        setTimeout(function() {
            $(".o_picture").each(function() {
                $(this).oPicture({
                    //自定义节点宽度
                    //sm:544,md:700,lg:992,xl:1200,
                }).init();
            });
        }, 300);


        setTimeout(function() {

            // 更多选择
            $('.js_oHerlMore').css('height', $('.js_oHerlSizeMore').outerHeight());
            $('.js_center').oBoxCenter().init();
            //电商拉页
            if(screenWidth>991){
                $('.js_oHerlFoldover').css('height', $('.js_oHerlSizeFoldover').outerHeight());
            }


        }, 1000);

        //更多选择
        // if(screenWidth>575){
        //     swiper.moreSwiper.reInit();
        // }

        //产品参数-结构图居中
        // paramImgCenter($(".js_structbg"));

    }






    //分享按钮-移动端
    $('.activity-icon').mouseenter(function(){
        $(this).find('.activity-float').show();
    }).mouseleave(function(){
        $(this).find('.activity-float').hide();
    });

    /**
     * 加入购物车
     * 
     * 未登录-
     * 保存当前商品信息到 cookie 
     * 已登录-
     * 调用服务添加购物车
     * 
     * 跳转购物车页面
     */

    $('.js-add-to-cart').on('click',function(){

        // 当前页面商品信息
        var goodsInfo = [{
            "inSkuCode": "650000",
            "quantity": 1,
            "regionCode": $('.js-delivery-address').attr('areaCode') || ''
        }]
        
        if (istrsidssdssotoken()) {
            $.ajax({
                type: "post",
                url: siteConfig.userUrl+"/buy/order/cartGoods/save",
                csrf: true,
                applicationType: true,
                data: JSON.stringify(goodsInfo),
                success_cb: function(data){
                    if (data.isSuccess) {
                        // 保存成功跳转购物车页面
                        window.location.href = siteConfig.trolleyUrl
                    }
                },
                error_cb: function(jqXHR, textStatus, errorThrown) {
                    if (jqXHR.responseText) {
                        console.log(JSON.parse(jqXHR.responseText).resultMsg)
                    }
                }
            });
        } else {
            if ($.cookie('goodsInCart')) {
                var goodsInCartArr = JSON.parse($.cookie('goodsInCart'))
                var tempCart = []
                for (var i = 0; i < goodsInfo.length; i++) {
                    var added = false
                    for (var j = 0; j < goodsInCartArr.length; j++) {
                        if (goodsInfo[i].inSkuCode == goodsInCartArr[j].inSkuCode) {
                            added = true
                        }
                    }

                    if (!added) {
                        tempCart.push(goodsInfo[i])
                    }
                }

                goodsInfo = goodsInCartArr.concat(tempCart)
            }

            $.cookie('goodsInCart', JSON.stringify(goodsInfo), {
                'path':'/',
                'domain':'http://image.tongshuai.com/tongshuai/images/.tongshuai.com'
            });

            // 保存成功跳转购物车页面
            window.location.href = siteConfig.trolleyUrl    
        }
    
    })

    regionServer.regionInfo()






    //切换登录
    $('.js_landType').children('div').mousedown(function(){
        var index = $(this).index();
        //console.log(index)
        $(this).addClass('cur').siblings().removeClass('cur');
        var $childObj =$('.js_landInputBox').children('div');
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
    //验证


    $('.js-landPasswordInput1').focus(function(){
        $(this).hide();
        $('.js-landPasswordInput2').show().focus();
    })
    $('.js-landPasswordInput2').blur(function(){
        var value = $(this).val();
        var input2NullText = $(this).attr('nullmsg');
        var input2ErreoText = $(this).attr('errormsg');
        var objtip =  $(this).parents(".js-landInputBox").children('.Validform_checktip');

        if(value&&value!="密码"){
            $(this).show();

            //console.log(objtip)
            //objtip.html(msg);
            //console.log(111,msg)
            if($('.js-landUserIdInput').val()){

            }
        }else{
            $(this).hide();
            $('.js-landPasswordInput1').eq(0).show();
            $('.js-landPasswordInput1').addClass('Validform_error');
            objtip.html(input2NullText);
            //$('.js-landPasswordInput1').
        }
    })


});


var regionServer = {
    regionInfo: function (){
        leaderServer.getIpAddress().then(function(data){
            var params = {
                provinceName: data.data.provinceName,
                cityName: data.data.cityName
            }
            leaderServer.regionInfo(params).then(function(address){
                var add = {
                    'save': address.data.provinceName,
                    'city': address.data.cityName,
                    'area': address.data.areaName,
                    'savecode': address.data.provinceName,
                    'citycode': address.data.cityCode,
                    'areacode': address.data.areaCode,
                }

                $('.js-delivery-address').attr('areaCode', address.data.areaCode).find('span').eq(2).html(address.data.provinceName + ' ' + address.data.cityName + ' ' + address.data.areaName + '<i class="iconfont icon-arrow-line-down"></i>')
                $('.js-delivery-address').attr({
                    'save': add.save,
                    'city': add.city,
                    'area': add.area,
                    'savecode': add.savecode,
                    'citycode': add.citycode,
                })
                /**
                 * @param {*} regionData 
                 * { "areaCode":2450, "areaName":"崂山区", "cityCode":173, "cityName":"青岛", "code":null, "provinceCode":16, "provinceName":"山东" }
                 */
                var addressCallback = function (regionData) {
                    $('.js-delivery-address').attr('areaCode', regionData.areaCode).find('span').eq(2).html(regionData.provinceName + ' ' + regionData.cityName + ' ' + regionData.areaName + '<i class="iconfont icon-arrow-line-down"></i>')
                    $('.js-delivery-address').attr({
                        'save': regionData.provinceName,
                        'city': regionData.cityName,
                        'area': regionData.areaName,
                        'savecode': regionData.provinceName,
                        'citycode': regionData.cityCode,
                    })
                    $('.js_addShadeTop').hide()
                    $('body').css({
                        'overflow-y': 'auto',/*为了兼容普通PC的浏览器*/
                        'height': 'auto'
                    })
                }

                // $('.js_alertAddress_save').text(add.save)
                // $('.js_alertAddress_city').text(add.city),
                // $('.js_alertAddress_area').text(add.area),
                // $('.js_alertAddress_save').attr('data-code',add.savecode),
                // $('.js_alertAddress_city').attr('data-code',add.citycode),
                // $('.js_alertAddress_area').attr('data-code',add.areacode)


                $('.js-delivery-address span').eq(2).on('click', function(){
                    var addArr = $('.js-delivery-address').find('span').eq(2).text().split(' ')
                    var add = {
                        'save': $('.js-delivery-address').attr('save'),
                        'city': $('.js-delivery-address').attr('city'),
                        'area': $('.js-delivery-address').attr('area'),
                        'savecode': $('.js-delivery-address').attr('savecode'),
                        'citycode': $('.js-delivery-address').attr('citycode'),
                        'areacode': $('.js-delivery-address').attr('areaCode')
                    }
                    addressAlert(add, addressCallback)        
                })
            })
        })
    }
}