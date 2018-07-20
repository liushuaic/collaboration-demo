<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/18
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>会员权益-迷糊官网</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui"/>
    <meta name="format-detection" content="telephone=no, email=no"/>
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
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/tongshuai/images/member-center.css">
</head>

<body>
<div class="o_body">
    <div class="o_main">
        <!-- 首屏动画 -->
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
        <div class="o_g">
            <div class="membercenter-top">

                <div class="o_u o_df_9-12 o_md_7-12  o_sm_6-6 o_xs_6-6 membercenter-banner js_memberCenterBanner" memberCenterBanner="http://image.tongshuai.com/tongshuai/member/hyqybanner/W020171223482471852326.jpg,http://image.tongshuai.com/tongshuai/member/hyqybanner/W020171223482472259959.jpg,">
                    <!--style='background: url("http://image.tongshuai.com/tongshuai/member/hyqybanner/W020171223482471852326.jpg") no-repeat top center;'>-->
                    <div class="o_u o_df_1-8"></div>
                    <div class="o_u o_df_7-8 membercenter-banner-cont">
                        <h2>
                            加入迷糊
                            ，<span>慢享悠悠生活</span></h2>
                        <p>
                            完成注册产品即可成为会员
                        </p>
                        <a href="javascript:;">
                            成为会员
                        </a>
                    </div>
                </div>

                <ul id="memberqybanner" class="o_u o_df_3-12 o_md_5-12 o_sm_6-6 o_xs_6-6 membercenter-list js-membercenterList">

                    <li class="o_u o_df_12-12 o_sm_6-12 o_xs_6-6 " style=' background: url("http://image.tongshuai.com/tongshuai/member/hyqybanner/W020171223484877576731.png") no-repeat center right;'>
                        <div class="membercenter-list-cont">
                            <h4>
                                乐分享
                            </h4>
                            <p>
                                晒单分享，最多得550积分
                            </p>
                            <a href="javascript:;" class="l-btn-sm l-btn-line1">
                                晒单分享
                            </a>
                        </div>
                    </li>

                    <li class="o_u o_df_12-12 o_sm_6-12 o_xs_6-6 " style=' background: url("http://image.tongshuai.com/tongshuai/member/hyqybanner/W020171223484478520433.png") no-repeat center right;'>
                        <div class="membercenter-list-cont">
                            <h4>
                                悦代言
                            </h4>
                            <p>
                                成为代言人，得100积分
                            </p>
                            <a href="javascript:;" class="l-btn-sm l-btn-line1">
                                迷糊代言人
                            </a>
                        </div>
                    </li>

                    <li class="o_u o_df_12-12 o_sm_6-12 o_xs_6-6 " style=' background: url("http://image.tongshuai.com/tongshuai/member/hyqybanner/W020171223484089951502.png") no-repeat center right;'>
                        <div class="membercenter-list-cont">
                            <h4>
                                惬互动
                            </h4>
                            <p>
                                交流与活动，互动拿积分
                            </p>
                            <a href="javascript:;" class="l-btn-sm l-btn-line1">
                                会员互动
                            </a>
                        </div>
                    </li>

                    <li class="o_u o_df_12-12 o_sm_6-12 o_xs_6-6 " style=' background: url("http://image.tongshuai.com/tongshuai/member/hyqybanner/W020171223483619619607.png") no-repeat center right;'>
                        <div class="membercenter-list-cont">
                            <h4>
                                兑好礼
                            </h4>
                            <p>
                                积分兑换诸多会员好礼
                            </p>
                            <a href="javascript:;" class="l-btn-sm l-btn-line1">
                                权益商城
                            </a>
                        </div>
                    </li>

                </ul>
            </div>
            <div class="member-center js_memberCenterBox o_g">
                <div class="member-center-border-box js_memberCenterBorderBox o_u o_df_2-2">
                    <div class="o_u o_df_4-12 o_sm_2-12  o_xs_2-12 member-center-left"></div>
                    <div class="o_u o_df_2-12 o_sm_show "></div>
                    <div class="o_u o_df_2-12 "></div>
                    <div class="o_u o_df_2-12 "></div>
                    <div class="o_u o_df_2-12  member-center-border member-center-border-xl">
                        <div class="member-center-border-red"></div>
                    </div>
                    <div class="o_u o_df_2-12 o_lg_1-12 member-center-border"></div>
                </div>
                <div class="member-center-box o_u o_df_8-12 o_lg_10-12 o_md_11-12 o_sm_11-12 o_xs_12-12 js_memberCenterContBox">
                    <div class="member-center-title">
                        了解会员权益
                    </div>
                    <div class="o_u o_df_6-12 o_xs_10-12  member-center-boxleft js_centerBoxLeft">

                        <div class="member-content-1 o_u o_md_11-12 o_sm_11-12 o_xs_12-12" style='background: url("http://image.tongshuai.com/tongshuai/member/ljmember/W020171223487478838377.png") no-repeat center;'>
                            <img class="member-content-md" src="http://image.tongshuai.com/tongshuai/member/ljmember/W020171223487478516018.png" alt="" />
                            <div class="member-conter-text">
                                <div class=" o_u ">
                                    <h5>
                                        会员关怀
                                    </h5>
                                    <p>
                                        普通会员专享型号，银卡会员增享生日关怀，金卡会员增享节日关怀与邮寄杂志
                                    </p>
                                    <div class="member-conter-text-down member_1" pic="普通会员,银卡会员,金卡会员">

                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="member-content-3 o_u o_md_11-12 o_sm_11-12 o_xs_12-12 " style=' background: url("http://image.tongshuai.com/tongshuai/member/ljmember/W020171223487037137157.png") no-repeat center;'>
                            <img class="member-content-md" src="http://image.tongshuai.com/tongshuai/member/ljmember/W020171223487037452188.png" alt="" />
                            <div class="member-conter-text">
                                <div class=" o_u ">
                                    <h5>
                                        免费清洗
                                    </h5>
                                    <p>
                                        银卡会员每年可享1次深度清洗，金卡会员可享2次（彩电除外）
                                    </p>
                                    <div class="member-conter-text-down member_2" pic="银卡会员,金卡会员">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="o_u o_df_6-12 o_xs_10-12 member-center-boxright  js_centerBoxRight">
                        <div class="member-center-title">
                            <h3>LEADER</h3>
                            <p>
                                了解会员权益
                            </p>
                        </div>

                        <div class="member-content-2 o_u o_md_11-12 o_sm_11-12 o_xs_12-12" style=' background: url("http://image.tongshuai.com/tongshuai/member/ljmember/W020180110502369686950.png") no-repeat center;'>
                            <img class="member-content-md" src="http://image.tongshuai.com/tongshuai/member/ljmember/W020180110502370467698.png" alt="" />
                            <div class="member-conter-text ">
                                <h5>
                                    免费延保
                                </h5>
                                <p>
                                    新购产品银卡会员赠送1年延保，金卡会员赠送3年（限冰箱，洗衣机）
                                </p>
                                <div class="member-conter-text-down member_3" pic="银卡会员,金卡会员">

                                </div>
                            </div>
                        </div>


                        <div class="member-content-4 o_u o_md_11-12 o_sm_11-12 o_xs_12-12" style=' background: url("http://image.tongshuai.com/tongshuai/member/ljmember/W020171223487934858331.png") no-repeat center;'>
                            <!-- <div class="member-content-4md"></div> -->
                            <img class="member-content-md" src="http://image.tongshuai.com/tongshuai/member/ljmember/W020171223487935160922.png" alt="" />
                            <div class="member-conter-text  ">
                                <div class=" o_u ">
                                    <h5>
                                        生态权益
                                    </h5>
                                    <p>
                                        银卡会员和金卡会员，根据等级享受不同折扣优惠
                                    </p>
                                    <div class="member-conter-text-down member_4" pic="银卡会员,金卡会员">

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="memeber-bottom o_g">
                <div class="o_u o_df_11-12">
                    <h3>
                        会员等级规则
                    </h3>
                    <ul class="o_u o_df_10-12">

                        <li class=" o_u o_df_3-12 o_xs_6-12 member-no-vip">
                            <div class="log"><span></span></div>
                            <div class="o_u o_md_12-12 o_sm_12-12 o_xs_12-12">
                                <h5>
                                    粉丝
                                </h5>
                                <p>
                                    注册网站会员
                                </p>
                            </div>
                        </li>

                        <li class=" o_u o_df_3-12 o_xs_6-12 member-ordinary-vip">
                            <div class="log"><span></span></div>
                            <div class="o_u o_md_12-12 o_sm_12-12 o_xs_12-12">
                                <h5>
                                    普通会员
                                </h5>
                                <p>
                                    至少注册一款产品
                                </p>
                            </div>
                        </li>

                        <li class=" o_u o_df_3-12 o_xs_6-12 member-silvery-vip">
                            <div class="log"><span></span></div>
                            <div class="o_u o_md_12-12 o_sm_12-12 o_xs_12-12">
                                <h5>
                                    银卡会员
                                </h5>
                                <p>
                                    累计注册产品金额达9000元
                                </p>
                            </div>
                        </li>

                        <li class=" o_u o_df_3-12 o_xs_6-12 member-golden-vip">
                            <div class="log"><span></span></div>
                            <div class="o_u o_md_12-12 o_sm_12-12 o_xs_12-12">
                                <h5>
                                    金卡会员
                                </h5>
                                <p>
                                    累计注册产品金额达16000元
                                </p>
                            </div>
                        </li>

                    </ul>

                </div>
            </div>
        </div>
        <div class="member-center-foot">
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
</div>

<script type="text/javascript" src="http://image.tongshuai.com/images/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/jquery.cookie.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_obox.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_module.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_base.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/templete_nav_search.js"></script>


</body>
<script type="text/javascript">
    $(function () {
        var windowWidth = $(window).width();
        var bannerpic=$(".js_memberCenterBanner").attr("memberCenterBanner");

        var result=bannerpic.split(",");
        var bannerpic1=result[0];
        var bannerpic2=result[1];

        if(windowWidth>1198){
            $('.js_memberCenterBanner').width(windowWidth-402+'px');
            $('.js-membercenterList').width('400px');
        }else if(windowWidth<1200&&windowWidth>991){
            $('.js_memberCenterBanner').width(windowWidth-342+'px');
            $('.js-membercenterList').width('340px');
        }else if(windowWidth<992&&windowWidth>700){
            $('.js_memberCenterBanner').width(windowWidth-312+'px');
            $('.js-membercenterList').width('310px');
        }

        if(windowWidth>1199){
            //这里放小图
            //images/member-center-bannermin.jpg
            $(".js_memberCenterBanner").css("background-image",'url("'+bannerpic2+'")');

        }else{
            $(".js_memberCenterBanner").css('background-image','url("'+bannerpic1+'")');
            //这里放大图
            //images/member-center-banner.jpg
        }

        setTimeout(function () {
            var centerBoxCenterLeft = [$('.member-content-1'),$('.member-content-2')];
            var centerBoxCenterRight = [$('.member-content-3'),$('.member-content-4')];
            if(windowWidth<575){
                $('.js_centerBoxLeft').html(centerBoxCenterLeft);
                $('.js_centerBoxRight').html(centerBoxCenterRight);
            }
        }, 2000)

        $("#memberqybanner li").eq(0).addClass("list-share");  //第一个li
        $("#memberqybanner li").eq(1).addClass("list-endorsement");//第二个li
        $("#memberqybanner li").eq(2).addClass("list-interact");  //第三个li
        $("#memberqybanner li").eq(3).addClass("list-present");  //第四个li

        selectmember();
        for(var i = 0;i< $('.member-conter-text-down').length;i++){
            if($('.member-conter-text-down').eq(i).find('i').length>1){
                $('.member-conter-text-down').find('i').eq(1).addClass('md-hide')
            }
        }

    })

    function selectmember() {
        for(var i=1;i<=4;i++){
            if ($(".member_"+i).attr("pic").indexOf("普通") > -1) {
                $(".member_"+i).append('<div class="o_u member-ordinary-vip-min"><strong></strong></span><span>普通会员</span></div><i>|</i>');
            }
            if ($(".member_"+i).attr("pic").indexOf("银卡") > -1) {
                $(".member_"+i).append('<div class="o_u  member-silvery-vip-min"><strong></strong><span>银卡会员</span></div><i>|</i>');

            }
            if ($(".member_"+i).attr("pic").indexOf("金卡") > -1) {
                $(".member_"+i).append('<div class="o_u member-golden-vip-min"><strong></strong><span>金卡会员</span></div>');
            }
        }


    }

</script>
</html>