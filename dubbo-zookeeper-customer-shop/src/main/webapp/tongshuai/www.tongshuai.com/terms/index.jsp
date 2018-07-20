<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/20
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset=utf-8"UTF-8">
    <title>服务条款 - 统帅官网</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=10;IE=9; IE=8; IE=7; IE=EDGE">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/images/iconfont.css" tppabs="http://image.tongshuai.com/images/iconfont.css">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/images/l_base.css" tppabs="http://image.tongshuai.com/images/l_base.css">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/images/l_module.css" tppabs="http://image.tongshuai.com/images/l_module.css">

    <script type="text/javascript">
        // 站点服务配置
        var siteConfig = {
            domain: "",
            userUrl: "http://user.tongshuai.com/",
            apiUrl: "/buy",//本地
        };
        //公共头检索相关配置
        var headerSearch = {
            headerChannelId: "212354",
            productChannelId: "273690",
        };
    </script>
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/tongshuai/images/service.css" tppabs="http://image.tongshuai.com/tongshuai/images/service.css">
</head>
<body>
<!-- 导航 -->
<div class="o_g l-nav">
    <!-- 一级导航 -->

    <!-- logo -->
    <div class="o_u o_df_2-12 o_xs_3-12">
        <a class="nav-logo" href="../index.jsp" tppabs="http://www.tongshuai.com/">
            <img src="../../image.tongshuai.com/tongshuai/images/logo.png" tppabs="http://image.tongshuai.com/tongshuai/images/logo.png" />
        </a>
    </div>
    <!-- logo END -->
    <!-- 导航栏目 轻产品/悠生活、服务、会员-->
    <ul class="o_u o_df_7-12 o_df-center o_md-hide o_sm-hide o_xs-hide js_navSearchLgHide">
        <li class="nav-column js_column" column='0'>
            <a href="javascript:;">
                <div class="nav-column-box1"></div>
                <img src="../../image.tongshuai.com/tongshuai/images/nav-pro.gif" tppabs="http://image.tongshuai.com/tongshuai/images/nav-pro.gif" class="o_lg-hide" />
            </a>
        </li>
        <li class="nav-column js_column" column='1'>

            <a href="../life/index.htm" tppabs="http://www.tongshuai.com/life/">
                <div class="nav-column-box2"></div>
                <img src="../../image.tongshuai.com/tongshuai/images/nav-life.gif" tppabs="http://image.tongshuai.com/tongshuai/images/nav-life.gif" class="o_lg-hide" />
            </a>
        </li>
        <li class="nav-column js_column" column='2'>
            <a href="../member/index.htm" tppabs="http://www.tongshuai.com/member/">
                <div class="nav-column-box3"></div>
            </a>
        </li>
        <li class="nav-column js_column" column='3'>
            <a href="../service/index.htm" tppabs="http://www.tongshuai.com/service/">
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
            <a class="nav-chart" href="../cart/index.htm" tppabs="http://www.tongshuai.com/cart/"><i class="iconfont icon-shoppingcart"></i>&nbsp;&nbsp;我的购物车</a>
        </div>
        <div class="nav-user o_df-hide" id="header_loginDiv">
            <div class="login nav-zindex1">
                <span class="o_df-hide js_userNews"></span>
                <i class="iconfont icon-arrow-sanjiao-down-s nav-userdown"></i>
                <i class="iconfont icon-arrow-sanjiao-up-s nav-userup"></i>
                <ul class="nav-user-column">
                    <li><a href="javascript:if(confirm('http://user.tongshuai.com/user/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/user/'" tppabs="http://user.tongshuai.com/user/">个人中心</a></li>
                    <li><a href="javascript:if(confirm('http://user.tongshuai.com/message/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/message/'" tppabs="http://user.tongshuai.com/message/">消息<i class="point o_df-hide js_userNews"></i></a></li>
                    <li><a href="javascript:if(confirm('http://user.tongshuai.com/order/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/order/'" tppabs="http://user.tongshuai.com/order/" target="_blank">我的订单</a></li>
                    <!--<li><a href="javascript:;">我的优惠券</a></li>-->
                    <li><a href="javascript:if(confirm('http://user.tongshuai.com/collection/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/collection/'" tppabs="http://user.tongshuai.com/collection/">关注的产品</a></li>
                    <!--<li><a href="javascript:;">我的产品</a></li>-->
                    <li class="nav-quip">
                        <a href="javascript:;" id="header_logout">退出登录</a>
                    </li>
                </ul>
            </div>
            <a class="nav-chart" href="../cart/index.htm" tppabs="http://www.tongshuai.com/cart/"><i class="iconfont icon-shoppingcart"></i>&nbsp;&nbsp;我的购物车</a>
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
                        <li><a href="javascript:if(confirm('http://user.tongshuai.com/user/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/user/'" tppabs="http://user.tongshuai.com/user/">个人中心</a></li>
                        <li><a href="javascript:if(confirm('http://user.tongshuai.com/message/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/message/'" tppabs="http://user.tongshuai.com/message/">消息<i class="point o_df-hide js_userNews"></i></a></li>
                        <li><a href="javascript:if(confirm('http://user.tongshuai.com/order/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/order/'" tppabs="http://user.tongshuai.com/order/" target="_blank">我的订单</a></li>
                        <!--<li><a href="javascript:;">我的优惠券</a></li>-->
                        <li><a href="javascript:if(confirm('http://user.tongshuai.com/collection/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/collection/'" tppabs="http://user.tongshuai.com/collection/">关注的产品</a></li>
                        <!--<li><a href="javascript:;">我的产品</a></li>-->
                        <li class="nav-quip">
                            <a href="javascript:;" id="header_logout2">退出登录</a>
                        </li>
                    </ul>
                </div>
                <!-- 已登录展示 END -->
            </li>
            <li>
                <a class="js_nav-chart2" href="../cart/index.htm" tppabs="http://www.tongshuai.com/cart/">
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
                        <a href="../televisions/index.htm" tppabs="http://www.tongshuai.com/televisions/">
                            <div class="nav-mdbox-icon">
                                <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                            </div>
                            <div class="nav-mdbox-name">电视</div>
                        </a>
                    </li>

                    <li>
                        <a href="../laundry/index.htm" tppabs="http://www.tongshuai.com/laundry/">
                            <div class="nav-mdbox-icon">
                                <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                            </div>
                            <div class="nav-mdbox-name">洗衣机</div>
                        </a>
                    </li>

                    <li>
                        <a href="../air_conditioners/index.htm" tppabs="http://www.tongshuai.com/air_conditioners/">
                            <div class="nav-mdbox-icon">
                                <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                            </div>
                            <div class="nav-mdbox-name">空调</div>
                        </a>
                    </li>

                    <li>
                        <a href="../cooling/index.htm" tppabs="http://www.tongshuai.com/cooling/">
                            <div class="nav-mdbox-icon">
                                <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                            </div>
                            <div class="nav-mdbox-name">冰箱</div>
                        </a>
                    </li>

                    <li>
                        <a href="../freezer/index.htm" tppabs="http://www.tongshuai.com/freezer/">
                            <div class="nav-mdbox-icon">
                                <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                            </div>
                            <div class="nav-mdbox-name">冷柜</div>
                        </a>
                    </li>

                    <li>
                        <a href="../water_heater/index.htm" tppabs="http://www.tongshuai.com/water_heater/">
                            <div class="nav-mdbox-icon">
                                <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                            </div>
                            <div class="nav-mdbox-name">热水器</div>
                        </a>
                    </li>

                    <li>
                        <a href="../cooking_appliances/index.htm" tppabs="http://www.tongshuai.com/cooking_appliances/">
                            <div class="nav-mdbox-icon">
                                <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                            </div>
                            <div class="nav-mdbox-name">厨电</div>
                        </a>
                    </li>

                </ul>
            </li>
            <li><a href="../life/index.htm" tppabs="http://www.tongshuai.com/life/">悠生活<i class="iconfont icon-arrow-line-right"></i></a></li>
            <li><a href="../member/index.htm" tppabs="http://www.tongshuai.com/member/">会员<i class="iconfont icon-arrow-line-right"></i></a></li>
            <li><a href="../service/index.htm" tppabs="http://www.tongshuai.com/service/">服务<i class="iconfont icon-arrow-line-right"></i></a></li>
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
                <a href="../service/installation_and_maintenance/index.htm" tppabs="http://www.tongshuai.com/service/installation_and_maintenance">在线报修</a>
                <!--<a href="http://user.tongshuai.com/product_registe">产品注册</a>-->
                <a href="../service/help/index.htm" tppabs="http://www.tongshuai.com/service/help">帮助中心</a>
                <a href="../contact/index.htm" tppabs="http://www.tongshuai.com/contact">联系我们</a>
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
            <a href="../televisions/index.htm" tppabs="http://www.tongshuai.com/televisions/">
                <div class="second-column-i">
                    <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                </div>
                <div class="second-column-name">电视</div>
            </a>
        </li>

        <li class="second-column o_df-center">
            <a href="../laundry/index.htm" tppabs="http://www.tongshuai.com/laundry/">
                <div class="second-column-i">
                    <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                </div>
                <div class="second-column-name">洗衣机</div>
            </a>
        </li>

        <li class="second-column o_df-center">
            <a href="../air_conditioners/index.htm" tppabs="http://www.tongshuai.com/air_conditioners/">
                <div class="second-column-i">
                    <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                </div>
                <div class="second-column-name">空调</div>
            </a>
        </li>

        <li class="second-column o_df-center">
            <a href="../cooling/index.htm" tppabs="http://www.tongshuai.com/cooling/">
                <div class="second-column-i">
                    <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                </div>
                <div class="second-column-name">冰箱</div>
            </a>
        </li>

        <li class="second-column o_df-center">
            <a href="../freezer/index.htm" tppabs="http://www.tongshuai.com/freezer/">
                <div class="second-column-i">
                    <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                </div>
                <div class="second-column-name">冷柜</div>
            </a>
        </li>

        <li class="second-column o_df-center">
            <a href="../water_heater/index.htm" tppabs="http://www.tongshuai.com/water_heater/">
                <div class="second-column-i">
                    <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                </div>
                <div class="second-column-name">热水器</div>
            </a>
        </li>

        <li class="second-column o_df-center">
            <a href="../cooking_appliances/index.htm" tppabs="http://www.tongshuai.com/cooking_appliances/">
                <div class="second-column-i">
                    <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
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
            <a href="javascript:if(confirm('http://user.tongshuai.com/user/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/user/'" tppabs="http://user.tongshuai.com/user/"><span>个人中心</span><i class="iconfont icon-arrow-line-right"></i></a>
        </li>
        <li>
            <a href="javascript:if(confirm('http://user.tongshuai.com/message/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/message/'" tppabs="http://user.tongshuai.com/message/"><span>消息<em class="o_df-hide js_userNews"></em></span><i class="iconfont icon-arrow-line-right"></i></a>
        </li>
        <li>
            <a href="javascript:if(confirm('http://user.tongshuai.com/order/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/order/'" tppabs="http://user.tongshuai.com/order/" target="_blank"><span>我的订单</span><i class="iconfont icon-arrow-line-right"></i></a>
        </li>
        <!--<li>
            <a href="javascript:;"><span>我的优惠券</span><i class="iconfont icon-arrow-line-right"></i></a>
        </li>-->
        <li>
            <a href="javascript:if(confirm('http://user.tongshuai.com/collection/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/collection/'" tppabs="http://user.tongshuai.com/collection/"><span>关注的产品</span><i class="iconfont icon-arrow-line-right"></i></a>
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
<div class="service_term_titlebox">
    <p class="service_term_title">服务条款</p>
</div>
<div class="service_term_contentbox">
    <p class="service_term_content">客户在统帅官网接受商品订购与送货的同时，有义务遵守以下交易条款。您在统帅官网下订单之前或接受统帅官网送货之前，请您仔细阅读以下条款：</p>
    <p class="service_term_smalltitle">一、本站服务条款的确认和接纳</p>
    <p class="service_term_content">本站的各项电子服务的所有权和运作权归本站。本站提供的服务将完全按照其发布的服务条款和操作规则严格执行。用户必须完全同意所有服务条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的当然约定依据，除非违反国家强制性法律，否则始终有效。在下订单的同时，您也同时承认了您拥有购买这些产品的权利能力和行为能力，并且将您对您在订单中提供的所有信息的真实性负责。</p>
    <p class="service_term_smalltitle">二、服务简介</p>
    <p class="service_term_content">本站运用自己的操作系统通过国际互联网络为用户提供网络服务。同时，用户必须：</p>
    <p class="service_term_content">1. 自行配备上网的所需设备，包括个人电脑、调制解调器或其他必备上网装置。</p>
    <p class="service_term_content">2. 自行负担个人上网所支付的与此服务有关的电话费用、网络费用。</p>
    <p class="service_term_content">3. 基于本站所提供的网络服务的重要性，用户应同意：</p>
    <p class="service_term_content"> - 提供详尽、准确的个人资料。</p>
    <p class="service_term_content"> - 不断更新注册资料，符合及时、详尽、准确的要求。</p>
    <p class="service_term_content">本站不公开用户的姓名、地址、电子邮箱和笔名， 除以下情况外：</p>
    <p class="service_term_content">1. 用户授权本站透露这些信息。</p>
    <p class="service_term_content">2. 相应的法律及程序要求本站提供用户的个人资料。</p>
    <p class="service_term_content">如果用户提供的资料包含有不正确的信息，本站保留结束用户使用网络服务资格的权利。</p>

</div>
<div class="o_g footer">
    <div class="line-red"></div>
    <div class="line"></div>
    <div class="o_u o_df_1-12"></div>
    <div class="o_u o_df_10-12">
        <div class="o_g footer_box">
            <div class="o_u o_df_1-6 o_md_1-4 o_sm_2-2 o_xs_2-2">
                <div class="foot_head js_footLindBtn">
                    <i class="iconfont icon-servicefile-solid o_xs-hide foot_icon"></i>
                    <span>了解统帅</span>
                    <a class="iconfont js_footmenuShow icon-plus o_df-hide o_sm-show o_xs-show"></a>
                </div>
                <div class="foot_linkbox js_footLink">
                    <a class="foot_link" href="../life/index.htm" tppabs="http://www.tongshuai.com/life/">悠生活</a>
                    <a class="foot_link" href="../about/brand/index.htm" tppabs="http://www.tongshuai.com/about/brand/">关于统帅</a>
                    <a class="foot_link" href="../about/news/index.htm" tppabs="http://www.tongshuai.com/about/news/">新闻资讯</a>
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

                    <a class="foot_link" href="../televisions/index.htm" tppabs="http://www.tongshuai.com/televisions/">电视</a>

                    <a class="foot_link" href="../laundry/index.htm" tppabs="http://www.tongshuai.com/laundry/">洗衣机</a>

                    <a class="foot_link" href="../air_conditioners/index.htm" tppabs="http://www.tongshuai.com/air_conditioners/">空调</a>

                    <a class="foot_link" href="../cooling/index.htm" tppabs="http://www.tongshuai.com/cooling/">冰箱</a>

                    <a class="foot_link" href="../freezer/index.htm" tppabs="http://www.tongshuai.com/freezer/">冷柜</a>

                    <a class="foot_link" href="../water_heater/index.htm" tppabs="http://www.tongshuai.com/water_heater/">热水器</a>

                    <a class="foot_link" href="../cooking_appliances/index.htm" tppabs="http://www.tongshuai.com/cooking_appliances/">厨电</a>

                </div>
            </div>
            <div class="o_u o_df_1-6 o_md_1-4 o_sm_2-2 o_xs_2-2">
                <div class="foot_head js_footLindBtn">
                    <i class="iconfont icon-heart-solid o_xs-hide"></i>
                    <span>服务</span>
                    <a class="iconfont js_footmenuShow icon-plus o_df-hide o_sm-show o_xs-show"></a>
                </div>
                <div class="foot_linkbox js_footLink">
                    <a class="foot_link" href="../service/installation_and_maintenance/index.shtml-datatype=1.htm" tppabs="http://www.tongshuai.com/service/installation_and_maintenance/index.shtml?datatype=1">预约安装</a>
                    <a class="foot_link" href="../service/installation_and_maintenance/index.shtml-datatype=2.htm" tppabs="http://www.tongshuai.com/service/installation_and_maintenance/index.shtml?datatype=2">在线报修</a>
                    <span class="foot_link">产品注册</span>
                    <a class="foot_link" href="../service/Instructions/index.htm" tppabs="http://www.tongshuai.com/service/Instructions/">使用手册下载</a>
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
                    <div class="shop_head">统帅旗舰店</div>
                    <ul class="o_g shop_box js_footImgLazy">
                        <li class="o_u o_df_1-3">
                            <a href="javascript:if(confirm('https://leader.jd.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://leader.jd.com/'" tppabs="https://leader.jd.com/" target="_blank">
                                <img lazy-src="../images/footer_logo1.jpg" tppabs="http://www.tongshuai.com/images/footer_logo1.jpg" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                <span>京东旗舰店</span>
                                <div class="line"></div>
                            </a>
                        </li>
                        <li class="o_u o_df_1-3">
                            <a href="javascript:if(confirm('https://leaderrrslj.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.AlZnYC  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://leaderrrslj.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.AlZnYC'" tppabs="https://leaderrrslj.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.AlZnYC" target="_blank">
                                <img lazy-src="../images/footer_logo2.jpg" tppabs="http://www.tongshuai.com/images/footer_logo2.jpg" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                <span>天猫旗舰店</span>
                                <div class="line"></div>
                            </a>
                        </li>
                        <li class="o_u o_df_1-3">
                            <a href="javascript:if(confirm('http://shop.suning.com/70088046/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://shop.suning.com/70088046/index.html'" tppabs="http://shop.suning.com/70088046/index.html" target="_blank">
                                <img lazy-src="../images/footer_logo3.jpg" tppabs="http://www.tongshuai.com/images/footer_logo3.jpg" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
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
                <a href="javascript:if(confirm('https://weibo.com/u/2003689247  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://weibo.com/u/2003689247'" tppabs="https://weibo.com/u/2003689247" class="iconfont icon-share-weibo" target="_blank"></a>
				<a href="javascript:;"  class="iconfont icon-share-weixin">
					<div class="l-float-top js_footImgLazy">
						<img lazy-src="../images/tongshuai_weixin.jpg" tppabs="http://www.tongshuai.com/images/tongshuai_weixin.jpg" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        <p></p><i></i>
                    </div>
				</a>
            </span>
            <ul>
                <li>
                    <a href="../contact/index.htm" tppabs="http://www.tongshuai.com/contact/">联系我们</a>
                </li>
                <li>
                    <a href="../service/help/index.htm" tppabs="http://www.tongshuai.com/service/help/">帮助中心</a>
                </li>
                <li>
                    <a href="index.htm" tppabs="http://www.tongshuai.com/terms/">服务条款</a>
                </li>
                <li>
                    <a href="../terms_conditions/index.htm" tppabs="http://www.tongshuai.com/terms_conditions/">法律声明</a>
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
<script id="_trs_ta_js" src="../../net.haier.com/c/js/ta.js-mpid=1112&cPrefix=ta.trs.cn-c" tppabs="http://net.haier.com/c/js/ta.js?mpid=1112&cPrefix=ta.trs.cn/c" async="async" defer="defer"></script>
<!--网脉end-->
<!--全局cookie start-->
<script src="../../c.haier.com/trscookie/images/trs_cookie.js" tppabs="http://c.haier.com/trscookie/images/trs_cookie.js" data-mpId="36" defer="defer" id="_trs_glc_js_"></script>
<!--全局cookie end-->

<script type="text/javascript" src="../../image.tongshuai.com/images/jquery-1.8.3.min.js" tppabs="http://image.tongshuai.com/images/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/images/jquery.cookie.js" tppabs="http://image.tongshuai.com/images/jquery.cookie.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/images/l_obox.js" tppabs="http://image.tongshuai.com/images/l_obox.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/images/l_module.js" tppabs="http://image.tongshuai.com/images/l_module.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/images/l_base.js" tppabs="http://image.tongshuai.com/images/l_base.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/images/templete_nav_search.js" tppabs="http://image.tongshuai.com/images/templete_nav_search.js"></script>
<!--全局cookie start-->
<div class="o_g footer_cookie js_footer_cookie o_df-hide">
    <div class="bottom_cookie_text">
        <img src="../../image.tongshuai.com/tongshuai/images/cookies_pic.png" tppabs="http://image.tongshuai.com/tongshuai/images/cookies_pic.png" />
        <div class="bottom_box">
            本网站会使用Cookies以提升您的访问体验。如继续浏览本网站，则表示您同意我们使用Cookies。更多Cookies政策请见本网站的<a href="javascript:if(confirm('http://account.haier.com/html/privacypolicy.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://account.haier.com/html/privacypolicy.html'" tppabs="http://account.haier.com/html/privacypolicy.html" target="_blank" class="go_open">隐私权政策</a>。
            <div class="bottom_cookie_button">
                <a href="javascript:;" class="l-btn-sm l-btn-line2 js_cookies_confirm">确定</a>
            </div>
        </div>
    </div>
</div>
<script>
    $(function() {
        var cookieVal = getCookie('authorize');
        if (cookieVal) {
            $(".js_footer_cookie").addClass("o_df-hide");
        } else {
            $(".js_footer_cookie").removeClass("o_df-hide");
        }

        $(".js_cookies_confirm").on('click', function () {//按钮
            $(".js_footer_cookie").addClass("o_df-hide");
            setCookie('authorize','1');
            $.ajax({
                type: "post",
                url: siteConfig.domain + "/interaction-service/userCookieInfo/saveInfo"
            });
        })
        //cookie方法
        function setCookie(cookieName,value){//设置cookie时间
            var liveDate = new Date();
            liveDate.setTime(liveDate.getTime() + 100 * 365 * 24 * 60 * 60);
            document.cookie=cookieName+"="+value+";path=/;domain=tongshuai.com;expires="+liveDate.toGMTString();
        }

        function getCookie(name){//获取cookie
            var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
            if(arr=document.cookie.match(reg))
                return unescape(arr[2]);
            else
                return null;
        }
    });
</script>
<!--全局cookie end-->
</body>
</html>
