<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/16
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">


    <title>
        迷糊官网 - 轻时尚家电开创者
    </title>
    <meta name="keywords" content="迷糊官网 - 轻时尚家电开创者" />
    <meta name="description" content="迷糊官网 - 轻时尚家电开创者" />


    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=10;IE=9; IE=8; IE=7; IE=EDGE">
    <!-- ie强制不使用兼容试图 -->

    <link rel="preload" href="http://image.tongshuai.com/tongshuai/index/sybanner/W020171227491625517065.jpg">


    <script type="text/javascript">
        // 站点服务配置
        var siteConfig = {
            domain: "",
            userUrl: "http://user.tongshuai.com",
            apiUrl: "/buy",//本地
        };
        //公共头检索相关配置
        var headerSearch = {
            headerChannelId: "212354",
            productChannelId: "273690",
        };
    </script>
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/tongshuai/images/index-min.css">
</head>

<body>
<div class="o_body">
    <div class="o_main js-index-template">
        <!-- 首屏动画 -->
        <div class="o_g">
            <div class="index_animate">
                <div class="index_animateBox">
                    <span></span>
                </div>
                <div class="index_animateBox">
                    <span></span>
                </div>
                <div class="index_animateBox">
                    <span></span>
                </div>
                <div class="index_animateBox">
                    <span></span>
                </div>
                <div class="index_animateBox">
                    <span></span>
                </div>
                <div class="index_animateBox"></div>
            </div>
        </div>
        <!-- 首屏动画 End -->

        <!-- 导航 -->
        <div class="o_g l-nav">
            <!-- 一级导航 -->

            <!-- logo -->
            <div class="o_u o_df_2-12 o_xs_3-12">
                <a class="nav-logo" href="http://www.tongshuai.com/">
                    <img src="<%=request.getContextPath()%>/images/mih.png" />
                </a>
            </div>
            <!-- logo END -->
            <!-- 导航栏目 轻产品/悠生活、服务、会员-->
            <ul class="o_u o_df_7-12 o_df-center o_md-hide o_sm-hide o_xs-hide js_navSearchLgHide">
                <li class="nav-column js_column" column='0'>
                    <a href="javascript:;">
                        <div class="nav-column-box1"></div>
                        <img src="http://image.tongshuai.com/tongshuai/images/nav-pro.gif" class="o_lg-hide" />
                    </a>
                </li>
                <li class="nav-column js_column" column='1'>

                    <a href="http://www.tongshuai.com/life/">
                        <div class="nav-column-box2"></div>
                        <img src="" class="o_lg-hide" />
                    </a>
                </li>
                <li class="nav-column js_column" column='2'>
                    <a href="<%=request.getContextPath()%>/lsJsp/huiyuan.jsp">
                        <div class="nav-column-box3"></div>
                    </a>
                </li>
                <li class="nav-column js_column" column='3'>
                    <a href="<%=request.getContextPath()%>/lsJsp/fuwu.jsp">
                        <div class="nav-column-box4"></div>
                    </a>
                </li>
            </ul>
            <!-- 导航栏目 END-->
            <!-- 用户信息栏 sf/xl分辨率 -->
            <div class="o_u o_df_2-12 o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                <div class="nav-search js_hoverLine">
                    <input type="text" name="" ph="搜索产品、服务、帮助..." value="" phtype=1 class="js_searchHistory" maxlength="25" />
                    <i class="iconfont icon-search js_jumpto_product_search"></i>
                    <div class="search-result nav-zindex2 js_searchBox js_searchBox_xl js_searchBox_root">
                        <div class="search-quick js_quick_search">快速链接</div>
                        <div class="search-quick js_quick_search">搜索历史<a href="javascript:void(0);" class="js_delete_history">清空历史</a></div>
                        <ul class="search-list js_searchBox_list_xl">

                        </ul>
                        <ul class="search-list-key js_search_list_bold">

                        </ul>
                    </div>
                </div>
               <div class="nav-user" id="logoutDiv">
                   <a class="login" href="<%=request.getContextPath()%>/background/login.jsp">登录</a>
                    <span class="line"></span>
                    <a class="login" href="<%=request.getContextPath()%>/background/zhuce.jsp">注册</a>
                    <a class="nav-chart" href="<%=request.getContextPath()%>/background/login.jsp"><i class="iconfont icon-shoppingcart"></i>&nbsp;&nbsp;我的购物车</a>
                </div>
                <div class="nav-user o_df-hide" id="loginDiv">
                    <div class="login nav-zindex1">
                        <span class="o_df-hide js_userNews"></span>
                        <i class="iconfont icon-arrow-sanjiao-down-s nav-userdown"></i>
                        <i class="iconfont icon-arrow-sanjiao-up-s nav-userup"></i>
                        <ul class="nav-user-column">
                            <li><a href="http://user.tongshuai.com/user/">个人中心</a></li>
                            <li><a href="http://user.tongshuai.com/message/">消息<i class="point o_df-hide js_userNews"></i></a></li>
                            <li><a href="http://user.tongshuai.com/order/" target="_blank">我的订单</a></li>
                            <!--<li><a href="javascript:;">我的优惠券</a></li>-->
                            <li><a href="http://user.tongshuai.com/collection/">关注的产品</a></li>
                            <!--<li><a href="javascript:;">我的产品</a></li>-->
                            <li class="nav-quip">
                                <a href="javascript:;" id="header_logout">退出登录</a>
                            </li>
                        </ul>
                    </div>
                    <a class="nav-chart" href="/cart/"><i class="iconfont icon-shoppingcart"></i>&nbsp;&nbsp;我的购物车</a>
                </div>
            </div>
            <!-- 用户信息栏 sf/xl分辨率 END -->
            <!-- 用户信息栏 lg分辨率 -->
            <div class="o_u o_df_5-12 o_xs_1-12 o_df-hide o_md-show o_sm-show o_xs-show js_navSearchLgHide js_ignore"></div>
            <div class="o_u o_df_3-12 o_md_5-12 o_sm_5-12 o_xs_8-12 o_df-hide o_lg-show o_md-show o_sm-show o_xs-show js_navSearchLgHide">
                <ul class="nav-search-lg">
                    <li>
                        <!-- 未登录展示 -->
                        <a href="javascript:;" id="header_logoutA">
                            <i class="iconfont icon-member"></i>
                            <!--<span></span>-->
                        </a>
                        <!-- 未登录展示 END -->

                        <!-- 已登录展示 -->
                        <div class="user-headimg o_df-hide" id="header_loginDiv2">
                            <img src="" class="user-img js_userMsgXs" />
                            <span class="o_df-hide js_userNews"></span>
                            <ul class="nav-user-column">
                                <li><a href="http://user.tongshuai.com/user/">个人中心</a></li>
                                <li><a href="http://user.tongshuai.com/message/">消息<i class="point o_df-hide js_userNews"></i></a></li>
                                <li><a href="http://user.tongshuai.com/order/" target="_blank">我的订单</a></li>
                                <!--<li><a href="javascript:;">我的优惠券</a></li>-->
                                <li><a href="http://user.tongshuai.com/collection/">关注的产品</a></li>
                                <!--<li><a href="javascript:;">我的产品</a></li>-->
                                <li class="nav-quip">
                                    <a href="javascript:;" id="header_logout2">退出登录</a>
                                </li>
                            </ul>
                        </div>
                        <!-- 已登录展示 END -->
                    </li>
                    <li>
                        <a class="js_nav-chart2" href="/cart/">
                            <i class="iconfont icon-shoppingcart"></i>
                            <!--<sub></sub>-->
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="js_search_lg">
                            <i class="iconfont icon-search"></i>
                        </a>
                    </li>
                    <li class="o_df-hide o_md-show o_sm-show o_xs-show">
                        <a href="javascript:;">
                            <i class="iconfont icon-menu js_menuShow"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- 用户信息栏 lg分辨率 END -->
            <!-- 导航 md -->

            <!-- 导航 md End -->

            <!-- 搜索框 lg以下分辨率 -->
            <form class="o_u o_df_10-12 o_xs_2-2 nav-searchbox-lg js_navSearchLg" action="#" target="testif">
                <div class="o_u o_df_1-12 o_df-hide o_xs-show"></div>
                <input type="text" name="" class="o_u o_df_8-10 o_xs_10-12 js_searchHistory js_searchHistory_lg" phtype="1" ph="搜索产品、服务、帮助..." maxlength="25" />
                <div class="o_u o_df_2-10 o_df-center nax-xs-close">
                    <i class="iconfont icon-close js_navSearchClose"></i>
                </div>
                <iframe name="testif" style="display: none;"></iframe>
            </form>
            <!-- 搜索框 lg以下分辨率 END -->
            <!-- 一级导航 End -->

            <!-- 搜索结果：lg分辨率 -->
            <ul class="o_u o_df_2-2 nav-searchresult-lg js_navSearchLg js_searchBox js_searchBox_lg">
                <div class="o_u o_df_2-12 o_xs_1-12"></div>
                <div class="o_u o_df_8-12 o_xs_10-12 js_searchBox_root">
                    <div class="searchresult-quick js_searchBoxQuick_lg">
                        <span>快速链接：</span>
                        <a href="/service/installation_and_maintenance">在线报修</a>
                        <!--<a href="http://user.tongshuai.com/product_registe">产品注册</a>-->
                        <a href="/service/help">帮助中心</a>
                        <a href="/contact">联系我们</a>
                    </div>
                    <ul class="searchresult-result js_searchBox js_searchBox_lg js_searchBox_list_lg">
                        <!--
                            <li>搜索结果</li>
                            <li>搜索结果</li>
                            <li>搜索结果</li>
                            <li>搜索结果</li>
                            <li>搜索结果</li>
                        -->
                    </ul>
                </div>
                <!-- <div class="o_u o_df_2-12 o_xs_1-12"></div> -->
            </ul>
            <!-- 搜索结果：大屏 END -->

            <!-- 二级导航 冰箱/洗衣机/电视 -->
            <ul class="o_u o_df_2-2 nav-second o_df-center js_column_show">

                <li class="second-column o_df-center">
                    <a href="<%=request.getContextPath()%>/television/queryTelevisionList.jhtml">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">电视</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="<%=request.getContextPath()%>/lsJsp/washing/washingXQ.jsp">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">洗衣机</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="<%=request.getContextPath()%>/airconditioners/airconditionersList.jsp">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">空调</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="<%=request.getContextPath()%>/cooling/coolingList.jsp">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">冰箱</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="<%=request.getContextPath()%>/freezer/freezerList.jsp">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">冷柜</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="<%=request.getContextPath()%>/water_heater/">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">热水器</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="<%=request.getContextPath()%>/cookingappliances/cookingappliances.jsp">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">厨电</div>
                    </a>
                </li>

            </ul>

            <!-- 二级导航 End -->
            <!-- xs下，用户信息展示 -->
            <ul class="o_u o_df_2-2 nav-usermsg-xs js_usermsg_xs">
                <li>
                    <a href="http://user.tongshuai.com/user/"><span>个人中心</span><i class="iconfont icon-arrow-line-right"></i></a>
                </li>
                <li>
                    <a href="http://user.tongshuai.com/message/"><span>消息<em class="o_df-hide js_userNews"></em></span><i class="iconfont icon-arrow-line-right"></i></a>
                </li>
                <li>
                    <a href="http://user.tongshuai.com/order/" target="_blank"><span>我的订单</span><i class="iconfont icon-arrow-line-right"></i></a>
                </li>
                <!--<li>
                    <a href="javascript:;"><span>我的优惠券</span><i class="iconfont icon-arrow-line-right"></i></a>
                </li>-->
                <li>
                    <a href="http://user.tongshuai.com/collection/"><span>关注的产品</span><i class="iconfont icon-arrow-line-right"></i></a>
                </li>
                <!--<li>
                    <a href="javascript:;"><span>我的产品</span><i class="iconfont icon-arrow-line-right"></i></a>
                </li>-->
                <li class="nav-quip">
                    <a href="javascript:;" id="header_logout3">退出登录</a>
                </li>
            </ul>

            <!-- xs下，用户信息展示 END -->
        </div>
        <!-- 导航 End-->

        <!-- 首页banner -->
        <div class="index-banner-box js-index-banner-box">
            <div class="index-banner-shadow"></div>
            <div class="o_g index-banner">
                <div class="o_u o_df_1-6 banner-info o_md-hide o_sm-hide o_xs-hide js_bannerInfo">
                    <!-- banner文字循环体 -->

                    <div class="banner-middle-box js_bannerSwiperFont">
                        <div>
                            <div class="info-main">
                                <div class="js_bannnerCenter">
											<span>
												轻时尚 悠生活
											</span>
                                </div>
                            </div>
                            <div class="info-main">
                                <div class="js_bannnerCenter">
											<span>
												我选择我自己的生活方式
											</span>
                                </div>
                            </div>
                            <div class="info-sub">
                                <div class="js_bannnerCenter">
											<span>
												我选择迷糊家电
											</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="banner-middle-box js_bannerSwiperFont">
                        <div>
                            <div class="info-main">
                                <div class="js_bannnerCenter">
											<span>
												久在尘嚣
											</span>
                                </div>
                            </div>
                            <div class="info-main">
                                <div class="js_bannnerCenter">
											<span>
												洁净岂能止于表面
											</span>
                                </div>
                            </div>
                            <div class="info-sub">
                                <div class="js_bannnerCenter">
											<span>
												迷糊L.ONE维真
											</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="banner-middle-box js_bannerSwiperFont">
                        <div>
                            <div class="info-main">
                                <div class="js_bannnerCenter">
											<span>
												在这个做作的时代
											</span>
                                </div>
                            </div>
                            <div class="info-main">
                                <div class="js_bannnerCenter">
											<span>
												我选择做最真实的自己
											</span>
                                </div>
                            </div>
                            <div class="info-sub">
                                <div class="js_bannnerCenter">
											<span>
												我选择迷糊轻时尚
											</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- banner文字循环体 End-->
                    <!-- banner 分页 不需要循环-->
                    <div class="banner-page js_bannerSwiperPage"> </div>
                    <!-- banner 分页 不需要循环 END-->
                </div>
                <div class="o_u o_df_3-4 o_md_2-2 o_sm_2-2 o_xs_2-2 js_bannerInfoOHerl">
                    <div class="banner-img">
                        <div class="swiper-container js_bannerSwiper">
                            <div class="swiper-wrapper">

                                <div class="swiper-slide">
                                    <a href="" target="_blank">
                                        <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img2-1.png" df="http://image.tongshuai.com/tongshuai/index/sybanner/W020171227491625517065.jpg" md="http://image.tongshuai.com/tongshuai/index/sybanner/W020171225694824275060.jpg" sm="http://image.tongshuai.com/tongshuai/index/sybanner/W020171225694824275060.jpg" xs="http://image.tongshuai.com/tongshuai/index/sybanner/W020171225694824275060.jpg" />
                                    </a>
                                </div>

                                <div class="swiper-slide">
                                    <a href="" target="_blank">
                                        <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img2-1.png" df="http://image.tongshuai.com/tongshuai/index/sybanner/W020180326519864745340.jpg" md="http://image.tongshuai.com/tongshuai/index/sybanner/W020180326519865153203.jpg" sm="http://image.tongshuai.com/tongshuai/index/sybanner/W020180326519865153203.jpg" xs="http://image.tongshuai.com/tongshuai/index/sybanner/W020180326519865153203.jpg" />
                                    </a>
                                </div>

                                <div class="swiper-slide">
                                    <a href="" target="_blank">
                                        <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img2-1.png" df="http://image.tongshuai.com/tongshuai/index/sybanner/W020171227491217518744.jpg" md="http://image.tongshuai.com/tongshuai/index/sybanner/W020171225694070284189.jpg" sm="http://image.tongshuai.com/tongshuai/index/sybanner/W020171225694070284189.jpg" xs="http://image.tongshuai.com/tongshuai/index/sybanner/W020171225694070284189.jpg" />
                                    </a>
                                </div>

                            </div>
                        </div>
                        <div class="index-banner-shadow-bottom"></div>
                        <!-- 新增banner轮播分液器 -->
                        <div class="index-banner-page js_swiperBannerPoint o_df-hide o_md-show o_sm-show o_xs-show"></div>
                        <!-- 新增banner轮播分液器 End -->
                        <div class="cd-svg-cover" data-step1="M1402,800h-2V0.6c0-0.3,0-0.3,0-0.6h2v294V800z" data-step2="M1400,800H383L770.7,0.6c0.2-0.3,0.5-0.6,0.9-0.6H1400v294V800z" data-step3="M1400,800H0V0.6C0,0.4,0,0.3,0,0h1400v294V800z" data-step4="M615,800H0V0.6C0,0.4,0,0.3,0,0h615L393,312L615,800z" data-step5="M0,800h-2V0.6C-2,0.4-2,0.3-2,0h2v312V800z" data-step6="M-2,800h2L0,0.6C0,0.3,0,0.3,0,0l-2,0v294V800z" data-step7="M0,800h1017L629.3,0.6c-0.2-0.3-0.5-0.6-0.9-0.6L0,0l0,294L0,800z" data-step8="M0,800h1400V0.6c0-0.2,0-0.3,0-0.6L0,0l0,294L0,800z" data-step9="M785,800h615V0.6c0-0.2,0-0.3,0-0.6L785,0l222,312L785,800z" data-step10="M1400,800h2V0.6c0-0.2,0-0.3,0-0.6l-2,0v312V800z">
                            <svg height="100%" width="100%" preserveAspectRatio="none" viewBox="0 0 1400 800">
                                <!-- <title>SVG cover layer</title>
                                <desc>an animated layer to switch from one slide to the next one</desc> -->
                                <path id="cd-changing-path" d="M0,800C0,800,-2,800,-2,800C-2,800,-2,0.6,-2,0.6C-2,0.4,-2,0.3,-2,0C-2,0,0,0,0,0C0,0,0,312,0,312C0,312,0,800,0,800C0,800,0,800,0,800"></path>
                                <defs></defs></svg>
                        </div>
                    </div>
                </div>
                <div class="o_u o_df_2-2 o_df-hide o_md-show o_sm-show o_xs-show banner-bot-info">
                    <!-- 循环体 -->

                    <div class="o_u o_df_2-2 js_bannerSwiperFont1">
                        <div class="banner-big">
                            轻时尚 悠生活
                        </div>
                        <div class="banner-big">
                            我选择我自己的生活方式
                        </div>
                        <div class="banner-small">
                            我选择迷糊家电
                        </div>
                    </div>

                    <div class="o_u o_df_2-2 js_bannerSwiperFont1">
                        <div class="banner-big">
                            久在尘嚣
                        </div>
                        <div class="banner-big">
                            洁净岂能止于表面
                        </div>
                        <div class="banner-small">
                            统帅L.ONE维真
                        </div>
                    </div>

                    <div class="o_u o_df_2-2 js_bannerSwiperFont1">
                        <div class="banner-big">
                            在这个做作的时代
                        </div>
                        <div class="banner-big">
                            我选择做最真实的自己
                        </div>
                        <div class="banner-small">
                            我选择统帅轻时尚
                        </div>
                    </div>

                    <!-- 循环体 END -->
                </div>
            </div>
        </div>
        <!-- 首页banner END -->

        <!-- 统帅入口 -->
        <div class="o_g index-enter js_imgLazyLoading">

            <a class="enter-con js_lazyImg" href="http://www.tongshuai.com/televisions/" target="_blank">
                <div>
                    <div class="enter-con-icon icon7"></div>
                    <img lazy-src="http://image.tongshuai.com/tongshuai/index/cxfl/W020171223703319036707.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                </div>
                <div class="enter-con-china o_df-hide o_xs-show">
                    电视
                </div>
                <div class="enter-con-en">
                    TELEVISION
                </div>
                <div class="enter-con-china o_xs-hide">
                    电视
                </div>
                <div class="enter-con-point o_df-hide o_xl-show">
                    <span class="typing_loader"></span>
                </div>
                <div class="enter-con-point o_xs-hide  o_xl-hide">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </a>

            <a class="enter-con js_lazyImg" href="http://www.tongshuai.com/laundry/" target="_blank">
                <div>
                    <div class="enter-con-icon icon2"></div>
                    <img lazy-src="http://image.tongshuai.com/tongshuai/index/cxfl/W020171225545259571593.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                </div>
                <div class="enter-con-china o_df-hide o_xs-show">
                    洗衣机
                </div>
                <div class="enter-con-en">
                    WASHING MACHINE
                </div>
                <div class="enter-con-china o_xs-hide">
                    洗衣机
                </div>
                <div class="enter-con-point o_df-hide o_xl-show">
                    <span class="typing_loader"></span>
                </div>
                <div class="enter-con-point o_xs-hide  o_xl-hide">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </a>

            <a class="enter-con js_lazyImg" href="http://www.tongshuai.com/air_conditioners/" target="_blank">
                <div>
                    <div class="enter-con-icon icon4"></div>
                    <img lazy-src="http://image.tongshuai.com/tongshuai/index/cxfl/W020171225545613012615.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                </div>
                <div class="enter-con-china o_df-hide o_xs-show">
                    空调
                </div>
                <div class="enter-con-en">
                    AIR CONDITIONER
                </div>
                <div class="enter-con-china o_xs-hide">
                    空调
                </div>
                <div class="enter-con-point o_df-hide o_xl-show">
                    <span class="typing_loader"></span>
                </div>
                <div class="enter-con-point o_xs-hide  o_xl-hide">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </a>

            <a class="enter-con js_lazyImg" href="http://www.tongshuai.com/cooling/" target="_blank">
                <div>
                    <div class="enter-con-icon icon1"></div>
                    <img lazy-src="http://image.tongshuai.com/tongshuai/index/cxfl/W020171225545802097277.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                </div>
                <div class="enter-con-china o_df-hide o_xs-show">
                    冰箱
                </div>
                <div class="enter-con-en">
                    REFRIGERATOR
                </div>
                <div class="enter-con-china o_xs-hide">
                    冰箱
                </div>
                <div class="enter-con-point o_df-hide o_xl-show">
                    <span class="typing_loader"></span>
                </div>
                <div class="enter-con-point o_xs-hide  o_xl-hide">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </a>

            <a class="enter-con js_lazyImg" href="http://www.tongshuai.com/freezer/" target="_blank">
                <div>
                    <div class="enter-con-icon icon3"></div>
                    <img lazy-src="http://image.tongshuai.com/tongshuai/index/cxfl/W020171225545992192225.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                </div>
                <div class="enter-con-china o_df-hide o_xs-show">
                    冷柜
                </div>
                <div class="enter-con-en">
                    FREEZER
                </div>
                <div class="enter-con-china o_xs-hide">
                    冷柜
                </div>
                <div class="enter-con-point o_df-hide o_xl-show">
                    <span class="typing_loader"></span>
                </div>
                <div class="enter-con-point o_xs-hide  o_xl-hide">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </a>

            <a class="enter-con js_lazyImg" href="http://www.tongshuai.com/water_heater/" target="_blank">
                <div>
                    <div class="enter-con-icon icon5"></div>
                    <img lazy-src="http://image.tongshuai.com/tongshuai/index/cxfl/W020171225546230633385.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                </div>
                <div class="enter-con-china o_df-hide o_xs-show">
                    热水器
                </div>
                <div class="enter-con-en">
                    WATER HEATER
                </div>
                <div class="enter-con-china o_xs-hide">
                    热水器
                </div>
                <div class="enter-con-point o_df-hide o_xl-show">
                    <span class="typing_loader"></span>
                </div>
                <div class="enter-con-point o_xs-hide  o_xl-hide">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </a>

            <div class="enter-con enter-con-xs js_enterShow">
                <i class="iconfont icon-icon_left enter-corner-left"></i>
            </div>

            <a class="enter-con js_lazyImg" href="http://www.tongshuai.com/cooking_appliances/" target="_blank">
                <div>
                    <div class="enter-con-icon icon6"></div>
                    <img lazy-src="http://image.tongshuai.com/tongshuai/index/cxfl/W020171225546422323729.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                </div>
                <div class="enter-con-china o_df-hide o_xs-show">
                    厨电
                </div>
                <div class="enter-con-en">
                    KITCHEN APPLIANCES
                </div>
                <div class="enter-con-china o_xs-hide">
                    厨电
                </div>
                <div class="enter-con-point o_df-hide o_xl-show">
                    <span class="typing_loader"></span>
                </div>
                <div class="enter-con-point o_xs-hide o_xl-hide">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </a>

            <div class="enter-con enter-con-xs js_enterShow">
                <i class="iconfont icon-icon enter-corner-right"></i>
            </div>
            <!-- 以下是超过7个，默认隐藏的产线入口 -->

            <!-- 以下是超过7个，默认隐藏的产线入口 END -->
        </div>
        <!--<a class="index-enter-more js_enterMore" data-type="more">
            展开全部产品分类 +
        </a>-->
        <!-- 统帅入口 END -->

        <!-- 推荐产品 -->
        <div class="o_g index-recommend js_imgLazyLoading">
            <!-- 红色细线背景 -->
            <div class="recommend-bg o_sm-hide o_xs-hide"></div>
            <!-- 红色细线背景 END -->
            <!-- 左侧小图 -->
            <div class="o_u o_df_1-6 o_md_1-12 o_sm-hide o_xs-hide">
                <div class="recommend-img-small">
                    <div class="js_recFlashBg o_lg-hide o_md-hide o_sm-hide o_xs-hide" data-start="left" style="position: absolute;top: 250px;bottom: 0;left: 0;right: 0;">
                        <div class="flash-left"></div>
                        <div class="flash-white"></div>
                    </div>
                    <div class="js_recFlashBg o_df-hide o_lg-show" data-start="left" style="position: absolute;top: 120px;bottom: 0;left: 0;right: 0;">
                        <div class="flash-left"></div>
                        <div class="flash-white"></div>
                    </div>
                    <div class="js_recFlashBg o_df-hide o_md-show" data-start="left" style="position: absolute;top: 100px;bottom: 0;left: 0;right: 0;">
                        <div class="flash-left"></div>
                        <div class="flash-white"></div>
                    </div>

                    <img class="recommend-img-next js_recImgSmall js-img-placeholder" src="http://image.tongshuai.com/tongshuai/images/img3-4.png" lazy-src="http://image.tongshuai.com/tongshuai/index/cptj/W020171227493103042431.jpg" />

                </div>
            </div>
            <!-- 左侧小图 END -->
            <!-- 文字说明-->
            <div class="o_u o_df_1-3 o_md_5-12 o_sm-hide o_xs-hide recommend-info-title">
                <!-- 循环体 -->

                <div class="recommend-info js_recommendFont">
                    <div>
                        <div class="info-title">
                            <div class="js_recFlashBg" data-start="right" style="position: absolute;top: 0;bottom: 0;left: 0;right: 0;">
                                <div class="flash-right"></div>
                                <div class="flash-white"></div>
                            </div>
                            对电视也可以<br/>随心洽谈我的看法
                        </div>
                        <div class="info-con">
                            <div class="js_recFlashBg" data-start="right" style="position: absolute;top: 10px;bottom: 0;left: 0;right: 0;">
                                <div class="flash-right"></div>
                                <div class="flash-white"></div>
                            </div>
                            智能语音遥控，我说的什么他都懂
                        </div>
                        <a class="info-more" href="http://www.tongshuai.com/televisions/20171213_619.shtml" target="_blank">
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                    </div>
                    <!-- <div class="info-page js_recommendPage">

                    </div> -->
                </div>

                <div class="recommend-info js_recommendFont">
                    <div>
                        <div class="info-title">
                            <div class="js_recFlashBg" data-start="right" style="position: absolute;top: 0;bottom: 0;left: 0;right: 0;">
                                <div class="flash-right"></div>
                                <div class="flash-white"></div>
                            </div>
                            对洗衣机也可以<br/>有小随意和小任性
                        </div>
                        <div class="info-con">
                            <div class="js_recFlashBg" data-start="right" style="position: absolute;top: 10px;bottom: 0;left: 0;right: 0;">
                                <div class="flash-right"></div>
                                <div class="flash-white"></div>
                            </div>
                            清洗烘干轻轻一按，他可以处理我所有
                        </div>
                        <a class="info-more" href="http://www.tongshuai.com/laundry/20171215_634.shtml" target="_blank">
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                    </div>
                    <!-- <div class="info-page js_recommendPage">

                    </div> -->
                </div>

                <!-- 循环体 End -->
            </div>
            <div class="o_u o_df_1-2 o_sm_2-2 o_xs_2-2 recommend-main">
                <div class="recommend-main-bg js_recommendHerobg"></div>
                <div class="rec-swiper-btn rec-swiper-prev js_swiperRecMainPrev"></div>
                <div class="rec-swiper-btn rec-swiper-next js_swiperRecMainNext"></div>
                <div class="recommend-main-box js_recommendHero">
                    <div class="swiper-container js_swiperRecMain">
                        <div class="js_recFlashBg" data-start="left" style="position: absolute;top: 0;bottom: 0;left: 0;right: 0;">
                            <div class="flash-left"></div>
                            <div class="flash-white"></div>
                        </div>
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <a href="http://www.tongshuai.com/televisions/20171213_619.shtml" target="_blank">
                                    <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img3-4.png" df="http://image.tongshuai.com/tongshuai/index/cptj/W020171227493324245227.jpg" />
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a href="http://www.tongshuai.com/laundry/20171215_634.shtml" target="_blank">
                                    <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img3-4.png" df="http://image.tongshuai.com/tongshuai/index/cptj/W020171227493103042431.jpg" />
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="recommend-main-info o_df-hide o_sm-show o_xs-show">

                    <div class="js_recommendFont1">
                        <div class="info-title">
                            对电视也可以<br/>随心洽谈我的看法
                        </div>
                        <div class="info-con">
                            智能语音遥控，我说的什么他都懂
                        </div>
                        <a class="info-more" href="http://www.tongshuai.com/televisions/20171213_619.shtml" target="_blank">
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                        <div class="info-page js_recommendPage">

                        </div>
                    </div>

                    <div class="js_recommendFont1">
                        <div class="info-title">
                            对洗衣机也可以<br/>有小随意和小任性
                        </div>
                        <div class="info-con">
                            清洗烘干轻轻一按，他可以处理我所有
                        </div>
                        <a class="info-more" href="http://www.tongshuai.com/laundry/20171215_634.shtml" target="_blank">
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                        <div class="info-page js_recommendPage">

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- 推荐产品 END -->

        <!-- 首页入口 -->
        <div class="o_g index-entrance js_imgLazyLoading">
            <div class="o_u o_df_1-12 o_sm-hide o_xs-hide">
                <div class="rec-swiper-btn rec-swiper-prev js_swiperEntrabcePrev"></div>
            </div>
            <div class="o_u o_df_10-12 o_sm_12-12 o_xs_12-12">
                <div class="index-entrance-row">
                    <div class="swiper-container js_swiperEntrabce">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="o_g">
                                    <div class="o_u o_df_5-12 o_md_6-12 o_sm_6-6 o_xs_6-6">
                                        <div class="l-padding">
                                            <div class="js_entranceFlashBg" data-start="right" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                <div class="flash-right"></div>
                                                <div class="flash-white"></div>
                                            </div>
                                            <a href="" target="_blank">
                                                <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img3-4.png" df="http://image.tongshuai.com/tongshuai/index/syrk/W020171227496457460108.jpg" />
                                            </a>
                                            <div class="o_u o_df-hide o_md-show o_sm-show o_xs-show o_md_2-2 o_sm_2-2 o_xs_2-2 entrance-fontbox">
                                                <h3>
                                                    心所触及的，尽<br/>是温柔
                                                </h3>
                                                <p>
                                                    温煦的日光、轻柔的风、驻足的时间、柔软的目光，有你的温柔
                                                </p>
                                                <a class="info-more" href="">
                                                    <span></span>
                                                    <span></span>
                                                    <span></span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="o_u o_df_7-12 o_sm-hide o_xs-hide">
                                        <div class="entrance-page o_md-hide">
                                            <div class="entrance-page-line">
                                                <div class="entrance-line-red"></div>
                                            </div>
                                            <div class="entrance-page-num js_entrancePage">

                                                <!-- <div class="page-num" data-index="1">01</div>-->

                                                <!-- <div class="page-num" data-index="2">02</div>-->

                                                <!-- <div class="page-num" data-index="3">03</div>-->


                                            </div>
                                        </div>
                                        <div class="l-padding">
                                            <div class="o_u entrance-img2">
                                                <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                    <div class="flash-left"></div>
                                                    <div class="flash-white"></div>
                                                </div>
                                                <a href="" target="_blank">
                                                    <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img4-3.png" df="http://image.tongshuai.com/tongshuai/index/syrk/W020171227496458065606.jpg" style="width: 100%" />
                                                </a>
                                            </div>
                                            <br>
                                            <div class="index-entrance-bottom o_sm-hide o_xs-hide">
                                                <div class="o_df-hide o_md-show entrance-page">
                                                    <div class="entrance-page-line">
                                                        <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                            <div class="flash-left"></div>
                                                            <div class="flash-white"></div>
                                                        </div>
                                                        <div class="entrance-line-red"></div>
                                                    </div>
                                                    <div class="entrance-page-num js_entrancePageMd">

                                                        <!-- <div class="page-num" data-index="1">01</div> -->

                                                        <!-- <div class="page-num" data-index="2">02</div> -->

                                                        <!-- <div class="page-num" data-index="3">03</div> -->


                                                    </div>
                                                </div>
                                                <div class="o_u entrance-img3">
                                                    <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                        <div class="flash-left"></div>
                                                        <div class="flash-white"></div>
                                                    </div>
                                                    <a href="" target="_blank">
                                                        <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img3-4.png" df="http://image.tongshuai.com/tongshuai/index/syrk/W020171227496457824502.jpg" style="width: 100%" />
                                                    </a>
                                                </div>
                                                <div class="o_u o_md-hide o_sm-hide o_xs-hide entrance-content">
                                                    <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                        <div class="flash-left"></div>
                                                        <div class="flash-white"></div>
                                                    </div>
                                                    <h3>
                                                        心所触及的，尽<br/>是温柔
                                                    </h3>
                                                    <p>
                                                        温煦的日光、轻柔的风、驻足的时间、柔软的目光，有你的温柔
                                                    </p>
                                                    <a class="info-more" href="" target="_blank">
                                                        <span></span>
                                                        <span></span>
                                                        <span></span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="o_g">
                                    <div class="o_u o_df_5-12 o_md_6-12 o_sm_6-6 o_xs_6-6">
                                        <div class="l-padding">
                                            <div class="js_entranceFlashBg" data-start="right" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                <div class="flash-right"></div>
                                                <div class="flash-white"></div>
                                            </div>
                                            <a href="" target="_blank">
                                                <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img3-4.png" df="http://image.tongshuai.com/tongshuai/index/syrk/W020171227496029368728.jpg" />
                                            </a>
                                            <div class="o_u o_df-hide o_md-show o_sm-show o_xs-show o_md_2-2 o_sm_2-2 o_xs_2-2 entrance-fontbox">
                                                <h3>
                                                    凝神片刻，留住<br/>即逝的点滴
                                                </h3>
                                                <p>
                                                    琐碎皆为生活，只需要片刻的宁静，用心感受，留住点滴的温暖
                                                </p>
                                                <a class="info-more" href="">
                                                    <span></span>
                                                    <span></span>
                                                    <span></span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="o_u o_df_7-12 o_sm-hide o_xs-hide">
                                        <div class="entrance-page o_md-hide">
                                            <div class="entrance-page-line">
                                                <div class="entrance-line-red"></div>
                                            </div>
                                            <div class="entrance-page-num js_entrancePage">

                                                <!-- <div class="page-num" data-index="1">01</div>-->

                                                <!-- <div class="page-num" data-index="2">02</div>-->

                                                <!-- <div class="page-num" data-index="3">03</div>-->


                                            </div>
                                        </div>
                                        <div class="l-padding">
                                            <div class="o_u entrance-img2">
                                                <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                    <div class="flash-left"></div>
                                                    <div class="flash-white"></div>
                                                </div>
                                                <a href="" target="_blank">
                                                    <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img4-3.png" df="http://image.tongshuai.com/tongshuai/index/syrk/W020171227496029977927.jpg" style="width: 100%" />
                                                </a>
                                            </div>
                                            <br>
                                            <div class="index-entrance-bottom o_sm-hide o_xs-hide">
                                                <div class="o_df-hide o_md-show entrance-page">
                                                    <div class="entrance-page-line">
                                                        <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                            <div class="flash-left"></div>
                                                            <div class="flash-white"></div>
                                                        </div>
                                                        <div class="entrance-line-red"></div>
                                                    </div>
                                                    <div class="entrance-page-num js_entrancePageMd">

                                                        <!-- <div class="page-num" data-index="1">01</div> -->

                                                        <!-- <div class="page-num" data-index="2">02</div> -->

                                                        <!-- <div class="page-num" data-index="3">03</div> -->


                                                    </div>
                                                </div>
                                                <div class="o_u entrance-img3">
                                                    <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                        <div class="flash-left"></div>
                                                        <div class="flash-white"></div>
                                                    </div>
                                                    <a href="" target="_blank">
                                                        <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img3-4.png" df="http://image.tongshuai.com/tongshuai/index/syrk/W020171227496029734427.jpg" style="width: 100%" />
                                                    </a>
                                                </div>
                                                <div class="o_u o_md-hide o_sm-hide o_xs-hide entrance-content">
                                                    <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                        <div class="flash-left"></div>
                                                        <div class="flash-white"></div>
                                                    </div>
                                                    <h3>
                                                        凝神片刻，留住<br/>即逝的点滴
                                                    </h3>
                                                    <p>
                                                        琐碎皆为生活，只需要片刻的宁静，用心感受，留住点滴的温暖
                                                    </p>
                                                    <a class="info-more" href="" target="_blank">
                                                        <span></span>
                                                        <span></span>
                                                        <span></span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="o_g">
                                    <div class="o_u o_df_5-12 o_md_6-12 o_sm_6-6 o_xs_6-6">
                                        <div class="l-padding">
                                            <div class="js_entranceFlashBg" data-start="right" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                <div class="flash-right"></div>
                                                <div class="flash-white"></div>
                                            </div>
                                            <a href="" target="_blank">
                                                <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img3-4.png" df="http://image.tongshuai.com/tongshuai/index/syrk/W020171227496876476086.jpg" />
                                            </a>
                                            <div class="o_u o_df-hide o_md-show o_sm-show o_xs-show o_md_2-2 o_sm_2-2 o_xs_2-2 entrance-fontbox">
                                                <h3>
                                                    你是我简单满足<br/>的小确幸
                                                </h3>
                                                <p>
                                                    小确幸是生活在小小的幸运与快乐，是流淌在生活的每个瞬间且稍纵即逝的美好，是内心的宽容与满足
                                                </p>
                                                <a class="info-more" href="">
                                                    <span></span>
                                                    <span></span>
                                                    <span></span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="o_u o_df_7-12 o_sm-hide o_xs-hide">
                                        <div class="entrance-page o_md-hide">
                                            <div class="entrance-page-line">
                                                <div class="entrance-line-red"></div>
                                            </div>
                                            <div class="entrance-page-num js_entrancePage">

                                                <!-- <div class="page-num" data-index="1">01</div>-->

                                                <!-- <div class="page-num" data-index="2">02</div>-->

                                                <!-- <div class="page-num" data-index="3">03</div>-->


                                            </div>
                                        </div>
                                        <div class="l-padding">
                                            <div class="o_u entrance-img2">
                                                <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                    <div class="flash-left"></div>
                                                    <div class="flash-white"></div>
                                                </div>
                                                <a href="" target="_blank">
                                                    <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img4-3.png" df="http://image.tongshuai.com/tongshuai/index/syrk/W020171227496877097347.jpg" style="width: 100%" />
                                                </a>
                                            </div>
                                            <br>
                                            <div class="index-entrance-bottom o_sm-hide o_xs-hide">
                                                <div class="o_df-hide o_md-show entrance-page">
                                                    <div class="entrance-page-line">
                                                        <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                            <div class="flash-left"></div>
                                                            <div class="flash-white"></div>
                                                        </div>
                                                        <div class="entrance-line-red"></div>
                                                    </div>
                                                    <div class="entrance-page-num js_entrancePageMd">

                                                        <!-- <div class="page-num" data-index="1">01</div> -->

                                                        <!-- <div class="page-num" data-index="2">02</div> -->

                                                        <!-- <div class="page-num" data-index="3">03</div> -->


                                                    </div>
                                                </div>
                                                <div class="o_u entrance-img3">
                                                    <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                        <div class="flash-left"></div>
                                                        <div class="flash-white"></div>
                                                    </div>
                                                    <a href="" target="_blank">
                                                        <img class="js_recPic" src="http://image.tongshuai.com/tongshuai/images/img3-4.png" df="http://image.tongshuai.com/tongshuai/index/syrk/W020171227496876846588.jpg" style="width: 100%" />
                                                    </a>
                                                </div>
                                                <div class="o_u o_md-hide o_sm-hide o_xs-hide entrance-content">
                                                    <div class="js_entranceFlashBg" data-start="left" style="position: absolute;top:0;bottom: 0;left: 0;right: 0;">
                                                        <div class="flash-left"></div>
                                                        <div class="flash-white"></div>
                                                    </div>
                                                    <h3>
                                                        你是我简单满足<br/>的小确幸
                                                    </h3>
                                                    <p>
                                                        小确幸是生活在小小的幸运与快乐，是流淌在生活的每个瞬间且稍纵即逝的美好，是内心的宽容与满足
                                                    </p>
                                                    <a class="info-more" href="" target="_blank">
                                                        <span></span>
                                                        <span></span>
                                                        <span></span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- 新增首页入口xs、sm分页器 -->
                    <div class="entrance-page-xs js_entrancePageXs o_df-hide o_sm-show o_xs-show"></div>
                </div>
            </div>
            <div class="o_u o_df_1-12">
                <div class="rec-swiper-btn rec-swiper-next js_swiperEntrabceNext"></div>
            </div>
        </div>
        <!-- 首页入口 END -->

        <!-- 关于统帅 -->
        <div class="o_g index-about js_imgLazyLoading">
            <div class="o_g index-about-bg o_sm-hide o_xs-hide">
                <div class="o_u o_df_4-12 o_lg_6-12 o_md_6-12">
                    <span></span>
                </div>
            </div>
            <div class="o_u o_df_1-12"></div>
            <div class="o_u o_df_10-12">
                <div class="o_g">
                    <div class="o_u o_df_4-10 o_lg_1-2 o_md_1-2 o_sm_3-5 o_xs_3-4 index-about-data">
                        <div class="o_u o_df-hide o_sm-show o_xs-show about-select-sm">
                            <div class="about-china">选择迷糊</div>
                            <a class="about-en" href="javascript:;">WHY CHOOSE US</a>
                        </div>


                        <a class="about-data-box" href="http://www.tongshuai.com/life/" target="_blank">
                            <div class="data-title">
                                综合研发中心
                            </div>
                            <div class="data-num js-scroll-num" data-num="10"></div>
                        </a>

                        <a class="about-data-box" href="http://www.tongshuai.com/life/" target="_blank">
                            <div class="data-title">
                                服务响应时间
                            </div>
                            <div class="data-num js-scroll-num" data-num="24"></div>
                        </a>

                        <br/>


                        <a class="about-data-box" href="http://www.tongshuai.com/life/" target="_blank">
                            <div class="data-title">
                                设计中心
                            </div>
                            <div class="data-num js-scroll-num" data-num="18"></div>
                        </a>

                        <a class="about-data-box" href="http://www.tongshuai.com/life/" target="_blank">
                            <div class="data-title">
                                国家设计师
                            </div>
                            <div class="data-num js-scroll-num" data-num="300"></div>
                        </a>

                        <br/>


                        <a class="about-data-box" href="http://www.tongshuai.com/life/" target="_blank">
                            <div class="data-title">
                                设计分部
                            </div>
                            <div class="data-num js-scroll-num" data-num="6"></div>
                        </a>

                        <a class="about-data-box" href="http://www.tongshuai.com/life/" target="_blank">
                            <div class="data-title">
                                国家研发机构
                            </div>
                            <div class="data-num js-scroll-num" data-num="28"></div>
                        </a>

                        <br/>

                    </div>
                    <div class="o_u o_df_6-10 o_lg_1-2 o_md_1-2 o_sm_1-3 o_xs_1-2 index-about-select">
                        <div class="o_u o_df_1-6 o_lg_2-5 o_md_2-5 o_sm_hide o_xs-hide"></div>
                        <div class="o_u o_df_5-6 o_lg_3-5 o_md_3-5 o_sm_2-2 o_xs_2-2">
                            <div class="about-bg-gray">
                                <div class="about-font o_sm-hide o_xs-hide">
                                    <div class="about-china">选择迷糊</div>
                                    <a class="about-en" href="/life/" target="_blank">WHY CHOOSE US</a>
                                </div>
                                <i class="iconfont icon-icon about-icon"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 关于统帅 END -->
        <div class="o_g js_imgLazyLoading">
            <div class="o_g footer">
                <div class="line-red"></div>
                <div class="line"></div>
                <div class="o_u o_df_1-12"></div>
                <div class="o_u o_df_10-12">
                    <div class="o_g footer_box">
                        <div class="o_u o_df_1-6 o_md_1-4 o_sm_2-2 o_xs_2-2">
                            <div class="foot_head js_footLindBtn">
                                <i class="iconfont icon-servicefile-solid o_xs-hide foot_icon"></i>
                                <span>了解迷糊</span>
                                <a class="iconfont js_footmenuShow icon-plus o_df-hide o_sm-show o_xs-show"></a>
                            </div>
                            <div class="foot_linkbox js_footLink">
                                <a class="foot_link" href="<%=request.getContextPath()%>/lsJsp/youshenghuo.jsp">悠生活</a>
                                <a class="foot_link" href="http://www.tongshuai.com/about/brand/">关于迷糊</a>
                                <a class="foot_link" href="http://www.tongshuai.com/about/news/">新闻资讯</a>
                                <!--  <a class="foot_link">联系我们</a> -->
                            </div>
                        </div>
                        <div class="o_u o_df_1-6 o_md_1-4 o_sm_2-2 o_xs_2-2">
                            <div class="foot_head js_footLindBtn">
                                <i class="iconfont icon-d-solid o_xs-hide"></i>
                                <span>产品</span>
                                <a class="iconfont js_footmenuShow icon-plus o_df-hide o_sm-show o_xs-show"></a>
                            </div>
                            <div class="foot_linkbox js_footLink">

                                <a class="foot_link" href="http://www.tongshuai.com/televisions/">电视</a>

                                <a class="foot_link" href="http://www.tongshuai.com/laundry/">洗衣机</a>

                                <a class="foot_link" href="http://www.tongshuai.com/air_conditioners/">空调</a>

                                <a class="foot_link" href="http://www.tongshuai.com/cooling/">冰箱</a>

                                <a class="foot_link" href="http://www.tongshuai.com/freezer/">冷柜</a>

                                <a class="foot_link" href="http://www.tongshuai.com/water_heater/">热水器</a>

                                <a class="foot_link" href="http://www.tongshuai.com/cooking_appliances/">厨电</a>

                            </div>
                        </div>
                        <div class="o_u o_df_1-6 o_md_1-4 o_sm_2-2 o_xs_2-2">
                            <div class="foot_head js_footLindBtn">
                                <i class="iconfont icon-heart-solid o_xs-hide"></i>
                                <span>服务</span>
                                <a class="iconfont js_footmenuShow icon-plus o_df-hide o_sm-show o_xs-show"></a>
                            </div>
                            <div class="foot_linkbox js_footLink">
                                <a class="foot_link" href="/service/installation_and_maintenance/index.shtml?datatype=1">预约安装</a>
                                <a class="foot_link" href="/service/installation_and_maintenance/index.shtml?datatype=2">在线报修</a>
                                <span class="foot_link">产品注册</span>
                                <a class="foot_link" href="http://www.tongshuai.com/service/Instructions/">使用手册下载</a>
                            </div>
                        </div>
                        <div class="o_u o_df_1-6 o_md_1-4 o_sm_2-2 o_xs_2-2">
                            <div class="foot_head js_footLindBtn">
                                <i class="iconfont icon-shoppingcart o_xs-hide"></i>
                                <span>帮助中心</span>
                                <a class="iconfont js_footmenuShow icon-plus o_df-hide o_sm-show o_xs-show"></a>
                            </div>
                            <div class="foot_linkbox js_footLink">
                                <span class="foot_link">购物指南</span>
                                <span class="foot_link">物流配送</span>
                                <span class="foot_link">支付方式</span>
                                <span class="foot_link">售后政策</span>
                                <span class="foot_link">特色服务</span>
                            </div>
                        </div>
                        <div class="o_u o_df_2-6 o_md_2-2 o_sm_2-2 o_xs_2-2">
                            <div class="o_u o_df_2-2 o_md_8-12 o_sm_2-2 o_xs_2-2 foot_shop">
                                <div class="shop_head">迷糊旗舰店</div>
                                <ul class="o_g shop_box js_footImgLazy">
                                    <li class="o_u o_df_1-3">
                                        <a href="https://leader.jd.com/" target="_blank">
                                            <img lazy-src="/images/footer_logo1.jpg" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                                            <span>京东旗舰店</span>
                                            <div class="line"></div>
                                        </a>
                                    </li>
                                    <li class="o_u o_df_1-3">
                                        <a href="https://leaderrrslj.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.AlZnYC" target="_blank">
                                            <img lazy-src="/images/footer_logo2.jpg" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                                            <span>天猫旗舰店</span>
                                            <div class="line"></div>
                                        </a>
                                    </li>
                                    <li class="o_u o_df_1-3">
                                        <a href="http://shop.suning.com/70088046/index.html" target="_blank">
                                            <img lazy-src="/images/footer_logo3.jpg" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                                            <span>苏宁旗舰店</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="o_u o_df_2-2 o_md_4-12 o_sm_2-2 o_xs_2-2 shop_phone">
                                <span class="phone_tit">24小时客服热线：</span>
                                <span class="phone_num">4006-999-999</span>
                            </div>
                        </div>
                    </div>
                    <div class="footer_copy">
			<span class="link">
                <a href="https://weibo.com/u/2003689247" class="iconfont icon-share-weibo" target="_blank"></a>
				<a href="javascript:;"  class="iconfont icon-share-weixin">
					<div class="l-float-top js_footImgLazy">
						<img lazy-src="/images/tongshuai_weixin.jpg" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        <p></p><i></i>
                    </div>
				</a>
            </span>
                        <ul>
                            <li>
                                <a href="http://www.tongshuai.com/contact/">联系我们</a>
                            </li>
                            <li>
                                <a href="http://www.tongshuai.com/service/help/">帮助中心</a>
                            </li>
                            <li>
                                <a href="http://www.tongshuai.com/terms/">服务条款</a>
                            </li>
                            <li>
                                <a href="http://www.tongshuai.com/terms_conditions/">法律声明</a>
                            </li>
                        </ul>
                        <div class="footer_middle_copy">
                            <span class="o_u footer_copy_text">Copyright &copy; 2017 Haier Group Leader. All rights reserved 鲁ICP备09096283</span>
                            <!-- <div class="footer_copy_img_box">
                                 <span class="footer_copy_img1"></span>
                                 <span class="footer_copy_img2"></span>
                                 <a href="http://www.miitbeian.gov.cn " class="footer_copy_img3" target="_blank"></a>
                             </div>-->
                        </div>
                        <!--<span class="copy_service">服务条款33333</span>-->
                    </div>
                </div>
                <div class="o_u o_df_1-12"></div>
            </div>
            <!--<div class="o_g footer member_footer">
                <div class="o_u o_df_1-12"></div>
                <div class="o_u o_df_10-12">
                    <div class="footer_copy">
                        <span class="link">
                            <a href="https://weibo.com/u/2003689247" class="iconfont icon-share-weibo" ></a>
                            <a href="javascript:;"  class="iconfont icon-share-weixin">
                                 <div class="l-float-top">
                                    <img src="http://image.tongshuai.com/tongshuai/images/tongshuai_weixin.jpg" />
                                    <p></p><i></i>
                                </div>
                            </a>

                        </span>
                        <ul>
                            <li>
                                <span>联系我们</span>
                            </li>
                            <li>
                                <span>帮助中心</span>
                            </li>
                            <li>
                                <a href="http://www.tongshuai.com/terms/">服务条款</a>
                            </li>
                            <li>
                                <span>法律声明</span>
                            </li>
                        </ul>
                        <div class="footer_middle_copy">
                            <span class="o_u footer_copy_text">Copyright &copy; 2017 Haier Group Leader. All rights reserved 鲁ICP备09096283</span>
                            <div class="footer_copy_img_box">
                                <span class="footer_copy_img1"></span>
                                <span class="footer_copy_img2"></span>
                                <a href="http://www.miitbeian.gov.cn/" class="footer_copy_img3" target="_blank"></a>
                            </div>
                        </div>
                        &lt;!&ndash;<span class="copy_service">服务条款33333</span>&ndash;&gt;
                    </div>
                </div>
                <div class="o_u o_df_1-12"></div>
            </div>-->
            <!--网脉start-->
            <script id="_trs_ta_js" src="//net.haier.com/c/js/ta.js?mpid=1112&cPrefix=ta.trs.cn/c" async="async" defer="defer"></script>
            <!--网脉end-->
            <!--全局cookie start-->
            <script src="//c.haier.com/trscookie/images/trs_cookie.js" data-mpId="36" defer="defer" id="_trs_glc_js_"></script>
            <!--全局cookie end-->

        </div>
    </div>
</div>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/index-min.js"></script>
<script>
    $(function () {
      $("#logoutDiv").show();
        $("#loginDiv").show();
        $("a[href='']").attr("target","")//空链接处理
    })




</script>
</body>

</html>