<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/18
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>迷糊售后服务与支持_自助服务 - 迷糊官网</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=10;IE=9; IE=8; IE=7; IE=EDGE">
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/images/iconfont.css">
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/images/l_base.css">
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/images/l_module.css">

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
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/tongshuai/images/serve_index.css">
</head>

<body>
<div class="o_body">
    <div class="o_main">
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
                        <img src="http://image.tongshuai.com/tongshuai/images/nav-life.gif" class="o_lg-hide" />
                    </a>
                </li>
                <li class="nav-column js_column" column='2'>
                    <a href="http://www.tongshuai.com/member/">
                        <div class="nav-column-box3"></div>
                    </a>
                </li>
                <li class="nav-column js_column" column='3'>
                    <a href="http://www.tongshuai.com/service/">
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
                <div class="nav-user" id="header_logoutDiv">
                    <a class="login" id="header_login">登录</a>
                    <span class="line"></span>
                    <a class="login" id="header_reg">注册</a>
                    <a class="nav-chart" href="/cart/"><i class="iconfont icon-shoppingcart"></i>&nbsp;&nbsp;我的购物车</a>
                </div>
                <div class="nav-user o_df-hide" id="header_loginDiv">
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
            <div class="o_u o_df_2-2 nav-md js_navMdShow">
                <div class="o_u o_df_1-12"></div>
                <ul class="o_u o_df_10-12 nav-mdbox">
                    <!-- <li>轻产品<i class="iconfont icon-plus"></i></li> -->
                    <li>
                        <a href="javascript:;" class="js_nav-md" data-show=1>轻产品<i class="iconfont icon-plus"></i></a>
                        <ul class="nav-mdbox-second js_navMdboxSecond">

                            <li>
                                <a href="http://www.tongshuai.com/televisions/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" alt="" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                                    </div>
                                    <div class="nav-mdbox-name">电视</div>
                                </a>
                            </li>

                            <li>
                                <a href="http://www.tongshuai.com/laundry/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" alt="" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                                    </div>
                                    <div class="nav-mdbox-name">洗衣机</div>
                                </a>
                            </li>

                            <li>
                                <a href="http://www.tongshuai.com/air_conditioners/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" alt="" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                                    </div>
                                    <div class="nav-mdbox-name">空调</div>
                                </a>
                            </li>

                            <li>
                                <a href="http://www.tongshuai.com/cooling/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" alt="" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                                    </div>
                                    <div class="nav-mdbox-name">冰箱</div>
                                </a>
                            </li>

                            <li>
                                <a href="http://www.tongshuai.com/freezer/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" alt="" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                                    </div>
                                    <div class="nav-mdbox-name">冷柜</div>
                                </a>
                            </li>

                            <li>
                                <a href="http://www.tongshuai.com/water_heater/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" alt="" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                                    </div>
                                    <div class="nav-mdbox-name">热水器</div>
                                </a>
                            </li>

                            <li>
                                <a href="http://www.tongshuai.com/cooking_appliances/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" alt="" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                                    </div>
                                    <div class="nav-mdbox-name">厨电</div>
                                </a>
                            </li>

                        </ul>
                    </li>
                    <li><a href="http://www.tongshuai.com/life/">悠生活<i class="iconfont icon-arrow-line-right"></i></a></li>
                    <li><a href="http://www.tongshuai.com/member/">会员<i class="iconfont icon-arrow-line-right"></i></a></li>
                    <li><a href="http://www.tongshuai.com/service/">服务<i class="iconfont icon-arrow-line-right"></i></a></li>
                </ul>
            </div>
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
                    <a href="http://www.tongshuai.com/televisions/">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">电视</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="http://www.tongshuai.com/laundry/">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">洗衣机</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="http://www.tongshuai.com/air_conditioners/">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">空调</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="http://www.tongshuai.com/cooling/">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">冰箱</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="http://www.tongshuai.com/freezer/">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">冷柜</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="http://www.tongshuai.com/water_heater/">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">热水器</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="http://www.tongshuai.com/cooking_appliances/">
                        <div class="second-column-i">
                            <img lazy-src="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" src='http://image.tongshuai.com/tongshuai/images/img1-1.png' />
                        </div>
                        <div class="second-column-name">厨电</div>
                    </a>
                </li>

            </ul>
            <!--<ul class="o_u o_df_2-2 nav-second o_df-center js_column_show">
                <li class="second-column o_df-center">
                    <a href="javascript:;">
                        <div class="second-column-i">
                            <img src="http://image.tongshuai.com/tongshuai/images/nav_icon1.png" />
                        </div>
                        <div class="second-column-name">悠生活栏目</div>
                    </a>
                </li>
                <li class="second-column o_df-center">
                    <a href="javascript:;">
                        <div class="second-column-i">
                            <img src="http://image.tongshuai.com/tongshuai/images/nav_icon1.png" />
                        </div>
                        <div class="second-column-name">悠生活栏目</div>
                    </a>
                </li>
                <li class="second-column o_df-center">
                    <a href="javascript:;">
                        <div class="second-column-i">
                            <img src="http://image.tongshuai.com/tongshuai/images/nav_icon1.png" />
                        </div>
                        <div class="second-column-name">悠生活栏目</div>
                    </a>
                </li>
                <li class="second-column o_df-center">
                    <a href="javascript:;">
                        <div class="second-column-i">
                            <img src="http://image.tongshuai.com/tongshuai/images/nav_icon1.png" />
                        </div>
                        <div class="second-column-name">轻产品栏目</div>
                    </a>
                </li>
            </ul>-->
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
        <!--头部banner-->
        <div class="serve_index_banner">
            <div class="bottom_wrap"></div>
            <div class="swiper-container swiper_serve_top o_df-hide o_md-show o_sm-show o_xs-show js_serve_top">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="banner_top top_back_one">
                            <img src="" />
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner_top top_back_two">
                            <img src="" />
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner_top top_back_three">
                            <img src="" />
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner_top top_back_four">
                            <img src="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-container swiper_serve_left o_df-show o_md-hide o_sm-hide o_xs-hide js_serve_left">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="banner_left">
                            <img src="" />
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner_left">
                            <img src="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner_mid">
                <div class="mid_box">
                </div>
                <div class="mid_content">
                    <p class="banner_head">欢迎使用迷糊服务</p>
                    <div class="search_banner">
                        <div class="english_head o_df-show o_xs-hide">
                            <div class="up_word">
                                <p class="turn_word js_turn active">
                                    <span class="word_right">L</span>
                                </p>
                                <p class="turn_word js_turn active">
                                    <span class="word_right word_E">E</span>
                                </p>
                                <p class="turn_word js_turn active">
                                    <span class="word_right">A</span>
                                </p>
                                <p class="turn_word js_turn active">
                                    <span class="word_right">D</span>
                                </p>
                                <p class="turn_word js_turn active">
                                    <span class="word_right word_E">E</span>
                                </p>
                                <p class="turn_word js_turn active">
                                    <span class="word_right">R</span>
                                </p>
                                <p class="turn_word word_s js_turn active">
                                    <span class="word_right">S</span>
                                </p>
                                <p class="turn_word js_turn active">
                                    <span class="word_right">E</span>
                                </p>
                                <p class="turn_word js_turn active">
                                    <span class="word_right">R</span>
                                </p>
                                <p class="turn_word js_turn active">
                                    <span class="word_right">V</span>
                                </p>
                                <p class="turn_word js_turn active">
                                    <span class="word_right">I</span>
                                </p>

                                <p class="turn_word js_turn active">
                                    <span class="word_right">C</span>
                                </p>
                                <p class="turn_word js_turn active">
                                    <span class="word_right">E</span>
                                </p>

                                <!--<p class="turn_word js_turn active">E</p>
                                <p class="turn_word js_turn active">A</p>
                                <p class="turn_word js_turn active">D</p>
                                <p class="turn_word js_turn active">E</p>
                                <p class="turn_word js_turn active">R</p>
                                <p class="turn_word js_turn word_s active">S</p>
                                <p class="turn_word js_turn active">E</p>
                                <p class="turn_word js_turn active">R</p>
                                <p class="turn_word js_turn active">V</p>
                                <p class="turn_word js_turn active">I</p>
                                <p class="turn_word js_turn active">C</p>
                                <p class="turn_word js_turn active">E</p>-->
                            </div>
                            <div class="down_word">
                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right">L</span>
                                </p>
                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right word_E">E</span>
                                </p>
                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right">A</span>
                                </p>
                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right">D</span>
                                </p>
                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right word_E">E</span>
                                </p>
                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right">R</span>
                                </p>
                                <p class="turn_word_down word_s js_turn_down">
                                    <span class="word_right">S</span>
                                </p>
                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right">E</span>
                                </p>
                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right">R</span>
                                </p>
                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right">V</span>
                                </p>
                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right">I</span>
                                </p>

                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right">C</span>
                                </p>
                                <p class="turn_word_down js_turn_down">
                                    <span class="word_right">E</span>
                                </p>
                                <!--<p class="turn_word_down js_turn_down">L</p>
                                <p class="turn_word_down js_turn_down">E</p>
                                <p class="turn_word_down js_turn_down">A</p>
                                <p class="turn_word_down js_turn_down">D</p>
                                <p class="turn_word_down js_turn_down">E</p>
                                <p class="turn_word_down js_turn_down">R</p>
                                <p class="turn_word_down word_s js_turn_down">S</p>
                                <p class="turn_word_down js_turn_down">E</p>
                                <p class="turn_word_down js_turn_down">R</p>
                                <p class="turn_word_down js_turn_down">V</p>
                                <p class="turn_word_down js_turn_down">I</p>
                                <p class="turn_word_down js_turn_down">C</p>
                                <p class="turn_word_down js_turn_down">E</p>-->
                            </div>
                        </div>
                        <div class="o_df-hide o_xs-show">
                            <div class="english_head_top o_df-hide o_xs-show">
                                <div class="txt_up">
                                    <p class="trun_txt js_trun_txt active">L</p>
                                    <p class="trun_txt js_trun_txt active">E</p>
                                    <p class="trun_txt js_trun_txt active">A</p>
                                    <p class="trun_txt js_trun_txt active">D</p>
                                    <p class="trun_txt js_trun_txt active">E</p>
                                    <p class="trun_txt js_trun_txt active">R</p>
                                </div>
                                <div class="txt_down">
                                    <p class="trun_txt_down js_trun_txt_down">L</p>
                                    <p class="trun_txt_down js_trun_txt_down">E</p>
                                    <p class="trun_txt_down js_trun_txt_down">A</p>
                                    <p class="trun_txt_down js_trun_txt_down">D</p>
                                    <p class="trun_txt_down js_trun_txt_down">E</p>
                                    <p class="trun_txt_down js_trun_txt_down">R</p>
                                </div>
                            </div>
                            <div class="english_head_bottom o_df-hide o_xs-show">
                                <div class="txt_up">
                                    <p class="trun_txt js_trun_txt active word_down_margin word_left_margin">S</p>
                                    <p class="trun_txt js_trun_txt active word_down_margin">E</p>
                                    <p class="trun_txt js_trun_txt active word_down_margin word_E">R</p>
                                    <p class="trun_txt js_trun_txt active word_down_margin">V</p>
                                    <p class="trun_txt js_trun_txt active word_down_margin">I</p>
                                    <p class="trun_txt js_trun_txt active word_down_margin">C</p>
                                    <p class="trun_txt js_trun_txt active word_down_margin word_right_margin">E</p>
                                </div>
                                <div class="txt_down">
                                    <p class="trun_txt_down js_trun_txt_down word_down_margin word_left_margin">S</p>
                                    <p class="trun_txt_down js_trun_txt_down word_down_margin">E</p>
                                    <p class="trun_txt_down js_trun_txt_down word_down_margin word_E">R</p>
                                    <p class="trun_txt_down js_trun_txt_down word_down_margin">V</p>
                                    <p class="trun_txt_down js_trun_txt_down word_down_margin">I</p>
                                    <p class="trun_txt_down js_trun_txt_down word_down_margin">C</p>
                                    <p class="trun_txt_down js_trun_txt_down word_down_margin word_right_margin">E</p>
                                </div>
                            </div>
                        </div>
                        <p class="js_show_input_wrap input_ph">
									<span id="" class="js_show_input input_write">

									</span>
                        </p>
                        <input class="o_input js_search_serve js_txt-rotate" data-period="2000" data-rotate='[ "请输入产品型号、名称或关键词获取服务支持" ]' type="text" name="" id="js_serviceSearch" value="" autotext="" maxlength="25" />

                        <span class="search_icon js_searchIcon">
									<i class="iconfont icon-search"></i>
								</span>
                        <div class="search_shadow">
                            <img src="http://image.tongshuai.com/tongshuai/images/serve_shadow.png" />
                        </div>
                        <div class="search_banner_list js_list_search_active" style="visibility: hidden;">
                            <ul class="js_scroll">
                                <!--<li class="list_li">
                                    <a href="javascript:;">搜索结果</a>
                                </li>-->

                            </ul>
                        </div>
                    </div>
                    <p class="banner-border"></p>
                </div>
            </div>
            <div class="swiper-container swiper_serve_right o_df-show o_md-hide o_sm-hide o_xs-hide js_serve_right">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="banner_right">
                            <img src="" />
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner_right">
                            <img src="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--头部bannerEND-->
        <!--服务入口-->
        <div class="o_g serve_entrance_service">
            <div class="o_u o_df_2-12 o_lg_4-12 o_md_4-12 o_sm_4-12 o_xs_1-2 service_item">
                <a href="/service/installation_and_maintenance/index.shtml?datatype=1 " target="_blank">
                    <div class="service_pic">
                        <img src="http://image.tongshuai.com/tongshuai/images/serve_entrance_installation.png" />
                    </div>
                    <p class="entrance_service_type">预约安装</p>
                    <p class="entrance_service_name">INSTALLATION</p>
                </a>
            </div>
            <div class="o_u o_df_2-12 o_lg_4-12 o_md_4-12 o_sm_4-12 o_xs_1-2 service_item">
                <a href="/service/installation_and_maintenance/index.shtml?datatype=2 " target="_blank">
                    <div class="service_pic">
                        <img src="http://image.tongshuai.com/tongshuai/images/serve_entrance_online.png" />
                    </div>
                    <p class="entrance_service_type">在线报修</p>
                    <p class="entrance_service_name">ONLINE REPAIR</p>
                </a>
            </div>
            <div class="o_u o_df_2-12 o_lg_4-12 o_md_4-12 o_sm_4-12 o_xs_1-2 service_item">
                <a target="_blank" class="add_after">
                    <div class="service_pic">
                        <img src="http://image.tongshuai.com/tongshuai/images/serve_entrance_reg.png" />
                    </div>
                    <p class="entrance_service_type">注册产品</p>
                    <p class="entrance_service_name">PRODUCT REGISTRATION</p>
                </a>
            </div>
            <div class="o_u o_df_2-12 o_lg_4-12 o_md_4-12 o_sm_4-12 o_xs_1-2 service_item" id="js_service_status">
                <a href="javascript:;" class="js_status">
                    <div class="service_pic">
                        <img src="http://image.tongshuai.com/tongshuai/images/serve_entrance_status.png" />
                    </div>
                    <p class="entrance_service_type">服务进度查询</p>
                    <p class="entrance_service_name">SERVICE STATUS</p>
                </a>
            </div>
            <div class="o_u o_df_2-12 o_lg_4-12 o_md_4-12 o_sm_4-12 o_xs_1-2 service_item">
                <a href="javascript:;"  class="js_policy">
                    <div class="service_pic">
                        <img src="http://image.tongshuai.com/tongshuai/images/serve_entrance_policy.png" />
                    </div>
                    <p class="entrance_service_type">服务政策与收费标准</p>
                    <p class="entrance_service_name">SERVICE POLICY</p>
                </a>
            </div>
            <div class="o_u o_df_2-12 o_lg_4-12 o_md_4-12 o_sm_4-12 o_xs_1-2 service_item">
                <a href="javascript:;"  class="js_downLoad">
                    <div class="service_pic">
                        <img src="http://image.tongshuai.com/tongshuai/images/serve_entrance_download.png" />
                    </div>
                    <p class="entrance_service_type">使用手册下载</p>
                    <p class="entrance_service_name">BROCHURE DOWNLOAD</p>
                </a>
            </div>
        </div>
        <!--服务入口END-->
        <!--产品分类-->
        <div class="o_g serve_item serve_class">
            <div class="serve_title">
                您的哪类产品遇到了问题？
            </div>
            <div class="o_u o_df_1-12">
            </div>
            <div class="o_u o_df_10-12 serve_class_content">
                <div class="o_g">

                    <div class="o_u o_lg_1-4 o_md_1-3 o_sm_1-3 o_xs_1-2 class_item">
                        <a href="http://www.tongshuai.com/service/product_support/televisions/troubles/" target="_blank">

                            <img src="http://image.tongshuai.com/tongshuai/service/product_support/televisions/W020180322540371309866.png" />
                            <p class="class_english_name">TELEVISION</p>
                            <p class="class_chinese_name">电视</p>

                            <div class="enter-con-point o_df-show o_xs-hide">
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                            </div>
                        </a>
                    </div>

                    <div class="o_u o_lg_1-4 o_md_1-3 o_sm_1-3 o_xs_1-2 class_item">
                        <a href="http://www.tongshuai.com/service/product_support/laundry/troubles/" target="_blank">

                            <img src="http://image.tongshuai.com/tongshuai/service/product_support/laundry/W020180322540783318150.png" />
                            <p class="class_english_name">WASHING MACHINE</p>
                            <p class="class_chinese_name">洗衣机</p>

                            <div class="enter-con-point o_df-show o_xs-hide">
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                            </div>
                        </a>
                    </div>

                    <div class="o_u o_lg_1-4 o_md_1-3 o_sm_1-3 o_xs_1-2 class_item">
                        <a href="http://www.tongshuai.com/service/product_support/air_conditioners/troubles/" target="_blank">

                            <img src="http://image.tongshuai.com/tongshuai/service/product_support/air_conditioners/W020180322541144401578.png" />
                            <p class="class_english_name">AIR CONDITIONER</p>
                            <p class="class_chinese_name">空调</p>

                            <div class="enter-con-point o_df-show o_xs-hide">
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                            </div>
                        </a>
                    </div>

                    <div class="o_u o_lg_1-4 o_md_1-3 o_sm_1-3 o_xs_1-2 class_item">
                        <a href="http://www.tongshuai.com/service/product_support/cooling/troubles/" target="_blank">

                            <img src="http://image.tongshuai.com/tongshuai/service/product_support/cooling/W020180322541538620773.png" />
                            <p class="class_english_name">REFRIGERATOR</p>
                            <p class="class_chinese_name">冰箱</p>

                            <div class="enter-con-point o_df-show o_xs-hide">
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                            </div>
                        </a>
                    </div>

                    <div class="o_u o_lg_1-4 o_md_1-3 o_sm_1-3 o_xs_1-2 class_item">
                        <a href="http://www.tongshuai.com/service/product_support/freezer/troubles/" target="_blank">

                            <img src="http://image.tongshuai.com/tongshuai/service/product_support/freezer/W020180322542082438779.png" />
                            <p class="class_english_name">FREEZER</p>
                            <p class="class_chinese_name">冷柜</p>

                            <div class="enter-con-point o_df-show o_xs-hide">
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                            </div>
                        </a>
                    </div>

                    <div class="o_u o_lg_1-4 o_md_1-3 o_sm_1-3 o_xs_1-2 class_item">
                        <a href="http://www.tongshuai.com/service/product_support/water_heater/troubles/" target="_blank">

                            <img src="http://image.tongshuai.com/tongshuai/service/product_support/water_heater/W020180322542481982490.png" />
                            <p class="class_english_name">WATER HEATER</p>
                            <p class="class_chinese_name">热水器</p>

                            <div class="enter-con-point o_df-show o_xs-hide">
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                            </div>
                        </a>
                    </div>

                    <div class="o_u o_lg_1-4 o_md_1-3 o_sm_1-3 o_xs_1-2 class_item">
                        <a href="http://www.tongshuai.com/service/product_support/cooking_appliances/troubles/" target="_blank">

                            <img src="http://image.tongshuai.com/tongshuai/service/product_support/cooking_appliances/W020180322542868612327.png" />
                            <p class="class_english_name">KITCHEN APPLIANCES</p>
                            <p class="class_chinese_name">厨电</p>

                            <div class="enter-con-point o_df-show o_xs-hide">
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                                <span class="typing_loader"></span>
                            </div>
                        </a>
                    </div>

                </div>
            </div>
        </div>
        <!--产品分类END-->
        <!--联系我们-->
        <div class="o_g serve_item serve_contact">
            <div class="o_u o_df_1-12">
            </div>
            <div class="o_u o_df_10-12 serve_contact_pic">
                <div class="contact_box">
                    <div class="contact_pic">
                        <img src="http://image.tongshuai.com/tongshuai/images/serve_contact_df.png" />
                    </div>
                    <div class="serve_contact_text">
                        <p class="contact_title">联系我们</p>
                        <div class="contact_type">
                            <div class="contact_online">
                                <p class="type_name">在线客服：</p>
                                <a href="javascript:;" class="btn l-btn-normal l-btn-red go_ask add_after">
                                    立即咨询
                                </a>
                            </div>
                            <div class="contact_phone">
                                <p class="type_name">客服热线：</p>
                                <a href="javascript:;" class="phone_number">
                                    4006-999-999
                                </a>
                            </div>
                        </div>
                        <div class="contact_goods">
                            <span class="gift_title">了解迷糊最新资讯，参与互动好礼：</span>
                            <a class="contact_weibo" href="https://weibo.com/u/2003689247" target="_blank">
                                <i class="iconfont icon-share-weibo"></i>
                            </a>
                            <a class="contact_weixin">
                                <i class="iconfont icon-share-weixin"></i>
                                <div class="l-float-top">
                                    <img src="http://image.tongshuai.com/tongshuai/images/tongshuai_weixin.jpg" />
                                    <p></p><i></i>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--联系我们END-->
        <!--服务入口弹层-->
        <div class="o_shade js_hide js_shade_up">

        </div>
        <div class="service_popup_wrap js_pup_wrap js_hide">
            <div class="service_pup service_pup_status js_service_pup js_pup_status">
                <p class="pup_title">服务记录查询<i class="iconfont icon-close js_close_pup"></i></p>
                <div class="pup_item">
                    <p>仅针对三个月内的服务记录查询，迷糊用户请
                        <a href="javascript:;" class="go_login" id="service_login">登录</a>
                    </p>
                </div>
                <form class="ui_validForm js_popup_status content_pup">
                    <div class="l_wrap_form">
                        <p class="form_label">联系人手机号：</p>
                        <div class="l-input">
                            <input type="text" data-normal="1" id="ph_serve" class="pup_phone" ph="请输入联系人手机号" name="" maxlength="11" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" />
                            <p class="Validform_checktip js_ph"></p>
                        </div>
                    </div>
                    <div class="l_wrap_form">
                        <p class="form_label">图形验证码：</p>
                        <div class="l-input">
                            <input type="text" data-normal="1" id="code_serve" name="" ph="图形验证码" maxlength="5" />
                            <a href="javascript:;" class="exchange" id="js_exchange">换一换</a>
                            <a href="javascript:;" class="l-btn-sm l-btn-red l-btn-disable code"><img id="js_code" src="" /></a>
                            <p class="Validform_checktip js_code"></p>
                        </div>

                    </div>
                    <div class="l_wrap_form serve_index_infocode">
                        <p class="form_label">短信验证码：</p>
                        <div class="l-input">
                            <input id="informationCode" type="text" data-normal="1" class="" maxlength="6" name="" datatype="p" tip="短信验证码" ph="短信验证码" errormsg="<i class='iconfont icon-information-solid'></i>短信验证码不正确" nullmsg="<i class='iconfont icon-information-solid'></i>请输入短信验证码" />
                            <a href="javascript:;" class="l-btn-sm l-btn-red js_smsCode">发送验证短信</a>
                            <p class="Validform_checktip js_smserror"></p>
                        </div>
                        <div class="l-input hasStatus js_hasStatus js_hide" style="display: none">
                            <p class="Validform_checktip js_status_msg"><i class="iconfont icon-information-solid"></i>您输入的手机号三个月内没有服务记录</p>
                        </div>
                    </div>
                    <a class="l-btn-normal l-btn-red l-popup-submit js_submit_status" id="js_submit_info">
                        查询
                    </a>
                </form>

            </div>
            <div class="service_pup service_pup_policy js_service_pup js_pup_policy">
                <p class="pup_title">服务政策与收费标准<i class="iconfont icon-close js_close_pup"></i></p>
                <div class="pup_item">
                    <p>你需要哪类产品的服务政策与收费标准？</p>
                </div>
                <div class="content_pup">
                    <div class="o_g product_wrap">

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/product_support/televisions/warranty/" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/televisions/material/icon.png" />
                                <p class="product_name">电视</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/product_support/laundry/warranty/" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/laundry/material/icon.png" />
                                <p class="product_name">洗衣机</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/product_support/air_conditioners/warranty/" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/air_conditioners/material/icon.png" />
                                <p class="product_name">空调</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/product_support/cooling/warranty/" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/cooling/material/icon.png" />
                                <p class="product_name">冰箱</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/product_support/freezer/warranty/" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/freezer/material/icon.png" />
                                <p class="product_name">冷柜</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/product_support/water_heater/warranty/" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/water_heater/material/icon.png" />
                                <p class="product_name">热水器</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/product_support/cooking_appliances/warranty/" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/cooking_appliances/material/icon.png" />
                                <p class="product_name">厨电</p>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
            <div class="service_pup service_pup_downLoad js_service_pup js_pup_downLoad">
                <p class="pup_title">使用手册下载<i class="iconfont icon-close js_close_pup"></i></p>
                <div class="pup_item">
                    <p>你需要哪类产品的说明书？</p>
                </div>
                <div class="content_pup">
                    <div class="o_g product_wrap">

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/Instructions/index.shtml?type=

电视" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/televisions/material/icon.png" />
                                <p class="product_name">电视</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/Instructions/index.shtml?type=

洗衣机" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/laundry/material/icon.png" />
                                <p class="product_name">洗衣机</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/Instructions/index.shtml?type=

空调" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/air_conditioners/material/icon.png" />
                                <p class="product_name">空调</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/Instructions/index.shtml?type=

冰箱" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/cooling/material/icon.png" />
                                <p class="product_name">冰箱</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/Instructions/index.shtml?type=

冷柜" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/freezer/material/icon.png" />
                                <p class="product_name">冷柜</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/Instructions/index.shtml?type=

热水器" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/water_heater/material/icon.png" />
                                <p class="product_name">热水器</p>
                            </a>
                        </div>

                        <div class="o_u o_df_1-4 o_xs_1-3 product_item">
                            <a href="http://www.tongshuai.com/service/Instructions/index.shtml?type=

厨电" target="_blank">
                                <img src="http://www.tongshuai.com/service/product_support/cooking_appliances/material/icon.png" />
                                <p class="product_name">厨电</p>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
            <div class="service_pup service_pup_status_add js_service_pup js_pup_status_add" id="js_list_info">
                <p class="pup_title">当前有 <span class="status_num" id="js_list_num"></span> 条服务记录<i class="iconfont icon-close js_close_pup"></i></p>
                <div class="content_pup">
                    <div class="add_df o_df-show o_xs-hide">
                        <div>
                            <ul class="o_g add_title">
                                <li class="o_u o_df_4-10">产品类型</li>
                                <li class="o_u o_df_3-10">申请日期与类型</li>
                                <li class="o_u o_df_3-10">服务状态</li>
                            </ul>
                        </div>
                        <div id="js_list_item">
                            <!--<ul class="o_g add_item">-->
                            <!--<li class="o_u o_df_4-10">-->
                            <!--<p class="prod_name">洗衣机</p>-->
                            <!--<p class="prod_size">波轮XQG60-BX1028A</p>-->
                            <!--</li>-->
                            <!--<li class="o_u o_df_3-10">-->
                            <!--<p class="prod_type">新品安装</p>-->
                            <!--<p class="prod_time">2018-9-15</p>-->
                            <!--</li>-->
                            <!--<li class="o_u o_df_3-10">-->
                            <!--<p class="prod_status oringe">已安装上门</p>-->
                            <!--<a class="prod_gosee" href="javascript:;">查看详情<i class="iconfont icon-arrow-line-right"></i></a>-->
                            <!--</li>-->
                            <!--</ul>-->
                        </div>
                    </div>
                    <div class="add_xs o_df-hide o_xs-show">
                        <div id="js_list_mobile">
                            <!--<ul class="o_g add_item_xs">-->
                            <!--<li class="o_u o_df_2-2 li_top">-->
                            <!--<p class="prod_type">新品安装</p>-->
                            <!--<p class="prod_time">2016-1-12 16 : 48</p>-->
                            <!--</li>-->
                            <!--<li class="o_u o_df_2-2 li_mid">-->
                            <!--<p class="prod_title">产品名称 : </p>-->
                            <!--<p class="prod_name">洗衣机</p>-->
                            <!--</li>-->
                            <!--<li class="o_u o_df_2-2 li_mid">-->
                            <!--<p class="prod_title">产品型号 : </p>-->
                            <!--<p class="prod_size">波轮XQG60-BX1028A</p>-->
                            <!--</li>-->
                            <!--<li class="o_u o_df_2-2 li_bottom">-->
                            <!--<p class="prod_status oringe">已安装上门</p>-->
                            <!--<a class="prod_gosee" href="javascript:;">查看详情</a>-->
                            <!--</li>-->
                            <!--</ul>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--服务入口弹层END-->
        <!--弹出层2-->
        <div class="pop-up2 js_popUpBox2">
            <span class="iconfont icon-check-mark-solid pop-up2_true js_popUpTrue"></span>
            <span class="iconfont icon-close pop-up2_false  js_popUpFales"></span>
            <span class="iconfont icon-information-solid  pop-up2_warn  js_popUpWarn"></span>
            <p class="o_u js_popUpText"></p>
        </div>
        <!--end弹出层2-->
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
                            <a class="foot_link" href="http://www.tongshuai.com/life/">悠生活</a>
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
<script type="text/javascript" src="http://image.tongshuai.com/images/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/jquery.cookie.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_obox.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_module.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_base.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/templete_nav_search.js"></script>

<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/idangerous.swiper2.7.6.min.js"></script>
<!--<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/swiper.min.js"></script>-->
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/serve_action.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/serve_index.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/templet_service_index.js"></script>
<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
<script type="text/javascript">
    var jiathis_config = {
        pic: "",
        summary: "",
        siteNum: 8,
        sm: "tsina,qzone,douban,weixin,cqq,twitter,fb,linkedin",
        appkey: {
            "tsina": "2413070761",
            "tqq": "801127250",
            "renren": "02a810140e56450c8907b6de8c1677cf",
            "kaixin001": "658605209749f040a7325d53719585eb",
            "douban": "0dc955b486374567295c011d92a5d035"
        },
        hideMore: true
    }
    //banner
    var templet_left_pic="http://image.tongshuai.com/tongshuai/service/W020180322561409416594.png,http://image.tongshuai.com/tongshuai/service/W020180322561829692480.png";
    var templet_right_pic="http://image.tongshuai.com/tongshuai/service/W020180322561409116549.png,http://image.tongshuai.com/tongshuai/service/W020180322561829401626.png";
    templet_left_pic=templet_left_pic.split(',');
    templet_right_pic=templet_right_pic.split(',');
    $(".top_back_one").find("img").prop("src",templet_left_pic[0]);
    $(".top_back_two").find("img").prop("src",templet_right_pic[0]);
    $(".top_back_three").find("img").prop("src",templet_left_pic[1]);
    $(".top_back_four").find("img").prop("src",templet_right_pic[1]);
    $(".js_serve_left").find("img").eq(0).prop("src",templet_left_pic[0]);
    $(".js_serve_left").find("img").eq(1).prop("src",templet_left_pic[1]);
    $(".js_serve_right").find("img").eq(0).prop("src",templet_right_pic[0]);
    $(".js_serve_right").find("img").eq(1).prop("src",templet_right_pic[1]);

</script>
</body>

</html>