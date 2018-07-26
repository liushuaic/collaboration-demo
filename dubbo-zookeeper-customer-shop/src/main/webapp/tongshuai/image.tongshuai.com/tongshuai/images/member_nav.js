/**
 * Created by 15610 on 2017/10/25.
 */
$(function(){
    var windowW = $(window).width();
    var windowH = $(window).height();
    var documenHeight,documenHeights;
    var homeMemberContBox = $('.js-membercontboxs-2').length;
    documenHeight = $('.js-membercontboxs').height();
    if(windowW>575){
        if(!homeMemberContBox){
            // $('.js_memberNavLeft').height(documenHeight);
            // $('.js_memberNavMiddle').css({'height':documenHeight});
            // $('.js_memberNavMiddleBtn').css({height:documenHeight});
        } else{
            if(documenHeight>windowH){
                $('.js_memberNavLeft').height(documenHeight+120);
                $('.js_memberNavMiddle').css({'height':documenHeight});
                $('.js_memberNavMiddleBtn').css({height:documenHeight});
            }else{
                $('.js_memberNavLeft').height(windowH+120);
                $('.js_memberNavMiddle').css({'height':windowH});
                $('.js_memberNavMiddleBtn').css({height:windowH});
            }
        }
    }

    //个人中心侧导航高度设定
    if(homeMemberContBox){
        var time_height = setInterval(function(){
            if(windowW<576){
                $('.js_memberNavLeft').height('60px');
                $('.js_memberNavMiddleBtn').css({height:'60px'});

            }else{
                documenHeight = $('.js-membercontboxs').height();
                if(documenHeight>windowH&&documenHeight>762){
                    $('.js_memberNavMiddle').css({'height':documenHeight});
                    $('.js_memberNavMiddleBtn').css({height:documenHeight});
                    if(!homeMemberContBox){
                        $('.js_memberNavLeft').height(documenHeight);
                    }else{
                        if(windowW>990){
                            $('.js_memberNavLeft').height(documenHeight+120);
                        }else{
                            $('.js_memberNavLeft').height(documenHeight);

                        }
                    }
                }else if(windowH<762){

                    $('.js_memberNavMiddle').css({'height':763});
                    $('.js_memberNavMiddleBtn').css({height:763});
                    if(!homeMemberContBox){
                        $('.js_memberNavLeft').height(762);
                    }else{
                        if(windowW>990){
                            $('.js_memberNavLeft').height(762+120);
                        }else{
                            $('.js_memberNavLeft').height(763);
                        }
                    }
                }else{

                    //$('.js_memberNavMiddleBtn').css({height:windowH-$('.footer').height()});


                    if($('.js_memberNavMiddleBtn').attr('data-alt')==2){
                        $('.js_memberNavMiddle').css({'height':windowH});
                        $('.js_memberNavLeft').height(windowH);
                        $('.js_memberNavMiddleBtn').css({height:$(document).height()});

                    }else{
                        $('.js_memberNavMiddle').css({'height':windowH-$('.footer').height()});
                        $('.js_memberNavLeft').height(windowH-$('.footer').height());
                        //$('.js_memberNavMiddle').css({'height':windowH}
                        $('.js_memberNavMiddleBtn').css({height:$(document).height()-$('.footer').height()});

                    }
                    if(windowW>990){
                        //console.log($('.js_memberNavMiddle').height())
                        $('.js_memberNavLeft').height($('.js_memberNavMiddle').height()+120);
                    }else{
                        //var dataType =
                        if($('.js_memberNavMiddleBtn').attr('data-alt')==2){
                            $('.js_memberNavLeft').height(windowH);
                            //$('.js_memberNavMiddleBtn').height(windowH);
                        }else{
                            $('.js_memberNavLeft').height(windowH-$('.footer').height());
                            //$('.js_memberNavMiddleBtn').height(windowH-$('.footer').height());
                        }

                    }
                }
            }
        },500);

        $('.js_memberNavMiddleBtn span').css({'height':$(window).height()+'px','line-height':$(window).height()+'px'});
        $('.js_memberNavMiddleBtn').css({'height':$(window).height()+'px'});
        if(windowW<992&&windowW>574){
            $(window).scroll(function(){
                if((($(document).height()- $(window).scrollTop()-$('.footer').height())/2)>($(window).height()-$('.footer').height())){
                    $('.js_memberNavMiddleBtn span').css({'top':$(window).scrollTop(),'height':$(window).height()+'px','line-height':$(window).height()+'px'})
                }
            })

        }
    }

    //个人中心公共左侧导航定位
    var navPublicLeft = $(".js_memberNavLeft");//左侧栏目
    var navMiddleLeft = $(".js_memberNavMiddle");//左侧栏目导航列表
    var contBox = $(".js-membercontboxs");//右侧内容
    var navH = $(".js_memberNavLeft").height();//左侧栏目高度
    var navMiddleH = $(".js_memberNavMiddle").height();//左侧栏目导航高度
    var navMiddleBoxH = $(".memeber-nav-middle-listbox").height();//左侧导航内容高度
    var contBoxH = $(".js-membercontboxs").height();//右侧内容高度
    if(contBoxH<windowH){
        contBoxH =  windowH;
    }
    // navPublicLeft.css({"height":windowH,"min-height":windowH});
    // navMiddleLeft.css({"height":windowH,"min-height":windowH});
    if(!homeMemberContBox){
        contBox.css({"min-height":navH});
        if(navPublicLeft.hasClass("fixed")){
            contBox.addClass("o_df-right");
        }
        var $footH = $(".member_footer").offset().top;
        var $contH;
        if(navMiddleBoxH > windowH){
            $(".js_memberNavMiddle").css({"height":windowH,"min-height":"auto"});
            if(windowW<992 && windowW>575){
                $(".js_memberNavMiddleBtn").css({"height":windowH,"min-height":"auto","line-height":windowH+"px"});
                $(".memeber-nav-middle-listbox").css({"height":windowH,"min-height":"auto"});
                $(".js_memberNavMiddle").addClass("overflow");
            }
        }
        if(windowW < 576){
            navPublicLeft.removeClass("fixed");
            navMiddleLeft.removeClass("fixed");
            $(".js-membercontboxs").removeClass("o_df-right");
        }else{
            nvaLeftScroll()
            $(".js-membercontboxs").addClass("o_df-right");
        }

    }
    function nvaLeftScroll(){
        $(window).scroll(function(){
            var $Top = $(document).scrollTop();
            if($(".js_form_addAddrManagement").css("display") == "block"){
                contBoxH = $(".js-membercontboxs").height();
                $footH = $(".member_footer").offset().top;
            }else{
                contBoxH = $(".js-membercontboxs").height();
                $footH = $(".member_footer").offset().top;
            }
            if(contBoxH > navMiddleH){
                $contH = $footH - windowH ;
            }else{
                $contH = $footH - windowH;
            }
            if($Top > $contH){
                //navPublicLeft.removeClass("fixed").css({"height":contBoxH});
                //navMiddleLeft.removeClass("fixed").css({"height":contBoxH});
                navPublicLeft.removeClass("fixed").addClass('positionA').css({"height":contBoxH});
                navMiddleLeft.removeClass("fixed").addClass('positionA').addClass('positionAs').css({"height":contBoxH});

                $(".js_memberNavMiddleBtn").css({"height":navMiddleBoxH});
                if(navMiddleBoxH > contBoxH){
                    navPublicLeft.css({"height":navMiddleBoxH})
                    navMiddleLeft.css({"height":navMiddleBoxH})

                }
            }else{
                //navPublicLeft.addClass("fixed").css({"height":"auto"});
                //navMiddleLeft.addClass("fixed").css({"height":"auto"});
                navPublicLeft.addClass("fixed").removeClass('positionA').css({"height":windowH});
                navMiddleLeft.addClass("fixed").removeClass('positionA').removeClass('positionAs').css({"height":windowH});
                if(navMiddleBoxH > windowH){
                    $(".js_memberNavMiddle").css({"height":windowH});
                }
            }
        });
    }
    /*个人中心公共左侧导航定位*/

    if(windowW>991){
        if($('.js-membercontboxs-2')){
            $('.js_memberNavRight').width(windowW-$('.js_memberNavLeft').width()-2) ;
        }
        //var rightBoxWidth = windowW-245-$('.js_memberNavLeft').width()-20;
        var rightBoxWidth = windowW-245-$('.js_memberNavLeft').width();
        $('.js-membercontboxs').width(rightBoxWidth);

    }else if(windowW<992 && windowW>575){
        $('.js-membercontboxs').width($(window).width()-$('.js_memberNavLeft').width()-$('.js_memberNavMiddleBtn').width()-5);
        //$(window).width()
    }else if(windowW<576){
        $('.js-membercontboxs').width('100%');
        $('.js_memberNavLeft').css('height','60px');
    }

    $(window).resize(function() {
        
        var windowW = $(window).width();
        if(windowW>991){
            if($('.js-membercontboxs-2')){
                $('.js_memberNavRight').width(windowW-$('.js_memberNavLeft').width()-2) ;
            }
            //var rightBoxWidth = windowW-245-$('.js_memberNavLeft').width()-20;
            var rightBoxWidth = windowW-245-$('.js_memberNavLeft').width();
            $('.js-membercontboxs').width(rightBoxWidth);

        }else if(windowW<992 && windowW>575){
            $('.js-membercontboxs').width($(window).width()-$('.js_memberNavLeft').width()-$('.js_memberNavMiddleBtn').width()-2);
            //$(window).width()
            //$('.js-membercontboxs').width(windowW-$('.js_memberNavLeft').width()-$('.js_memberNavMiddleBtn').width()-20);
            //$('.js-membercontboxs').width($(window).width()-$('.js_memberNavLeft').width()-$('.js_memberNavMiddle').width()-20);
        }else if(windowW<576){
            $('.js-membercontboxs').width('100%');
            $('.js_memberNavLeft').css('height','60px');
        }
        if(windowW < 576){
            navPublicLeft.removeClass("fixed");
            navMiddleLeft.removeClass("fixed");

        }else{
            if(!homeMemberContBox){
                nvaLeftScroll()
            }
        }
    });


    //       xs模式 导航按钮点击时间
    $('.js_memberNavMiddleBtn').click(function(){
        var dataType = $(this).attr('data-alt');
        if(dataType==1){
            $(this).children('span').removeClass('icon-menu1').addClass('icon-close');
            $(this).attr('data-alt',2);
            $('.js_memberNavMiddle').css({'height':windowH+'px'})
            $('.js_memberNavLeft').css({'height':windowH+'px'})
            $('.js_memberNavMiddle').animate({'margin-left':'0'},100);
            $('.js_navshade').show();
            // $('.js-membercontboxs').css({'position':'absolute','top':0,'right':0});
            $('.footer').hide();
            $(".js_memberNavMiddle").removeClass("overflow");
            // $("body,html").css({"overflow":"hidden"})
            $("body").addClass("overflowH");
        }else{
            $(this).children('span').removeClass('icon-close').addClass('icon-menu1');
            $(this).attr('data-alt',1);
            windowW = $(window).width();
            //$(".js-membercontboxs").css({overflow:"auto"});
            $('.footer').show();
            $(".js_memberNavMiddle").addClass("overflow");
            // $("body,html").css({"overflow":"scroll"})
            $("body").removeClass("overflowH");
            if(windowW>700&&windowW<992){
                $('.js_memberNavMiddle').animate({'margin-left':'-240px'},100);
                $('.js_navshade').hide();
                //setTimeout(function(){
                //$('.js-membercontboxs').css('position','relative');
                //$('.js_memberNavMiddle').css('position','relative');
                //},200);
            }else if(windowW>575&&windowW<701){

                $('.js_memberNavMiddle').animate({'margin-left':'-240px'},100);
                $('.js_navshade').hide();
                //setTimeout(function(){
                //$('.js_memberNavMiddle').css('position','relative');
                //
                //$('.js-membercontboxs').css('position','relative');
                //},0);
            }
        }
    });

//       非xs模式 导航按钮点击效果
    $('.js_navxsbtn').click(function(){
        if($(this).attr('data-alt')==1){
            $('.js_memberNavMiddle').animate({'right':0});
            $(this).attr('data-alt',2);
            $('.js_navshade').show();
            $("body,html").css({"overflow":"hidden"})

            $(this).removeClass('icon-menu').addClass('icon-close');

        }else{
            $('.js_memberNavMiddle').animate({'right':'-180px'});
            $(this).attr('data-alt',1);
            $('.js_navshade').hide();
            $("body,html").css({"overflow":"auto"})
            $(this).removeClass('icon-close').addClass('icon-menu');

        }

    });
    //点击黑色透明区域可以关闭菜单
    if(windowW<576){
        $(".js_navshade").click(function(){
            $('.js_memberNavMiddle').animate({'right':'-50%'});
            $('.js_navxsbtn').attr('data-alt',1);
            $('.js_navshade').hide();
            $("body,html").css({"overflow":"auto"});
            $('.js_navxsbtn').removeClass('icon-close').addClass('icon-menu');
        })
    }
});