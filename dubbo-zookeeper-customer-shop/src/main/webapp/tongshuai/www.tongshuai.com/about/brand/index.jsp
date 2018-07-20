<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/20
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset=utf-8"UTF-8">
    <title>关于统帅-统帅官网</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=10;IE=9; IE=8; IE=7; IE=EDGE">
    <link rel="stylesheet" type="text/css" href="../../../image.tongshuai.com/images/iconfont.css" tppabs="http://image.tongshuai.com/images/iconfont.css">
    <link rel="stylesheet" type="text/css" href="../../../image.tongshuai.com/images/l_base.css" tppabs="http://image.tongshuai.com/images/l_base.css">
    <link rel="stylesheet" type="text/css" href="../../../image.tongshuai.com/images/l_module.css" tppabs="http://image.tongshuai.com/images/l_module.css">

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
    <link rel="stylesheet" type="text/css" href="../../../image.tongshuai.com/tongshuai/images/aboutus.css" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus.css">
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
                <a class="nav-logo" href="../../index.jsp" tppabs="http://www.tongshuai.com/">
                    <img src="../../../image.tongshuai.com/tongshuai/images/logo.png" tppabs="http://image.tongshuai.com/tongshuai/images/logo.png" />
                </a>
            </div>
            <!-- logo END -->
            <!-- 导航栏目 轻产品/悠生活、服务、会员-->
            <ul class="o_u o_df_7-12 o_df-center o_md-hide o_sm-hide o_xs-hide js_navSearchLgHide">
                <li class="nav-column js_column" column='0'>
                    <a href="javascript:;">
                        <div class="nav-column-box1"></div>
                        <img src="../../../image.tongshuai.com/tongshuai/images/nav-pro.gif" tppabs="http://image.tongshuai.com/tongshuai/images/nav-pro.gif" class="o_lg-hide" />
                    </a>
                </li>
                <li class="nav-column js_column" column='1'>

                    <a href="../../life/index.htm" tppabs="http://www.tongshuai.com/life/">
                        <div class="nav-column-box2"></div>
                        <img src="../../../image.tongshuai.com/tongshuai/images/nav-life.gif" tppabs="http://image.tongshuai.com/tongshuai/images/nav-life.gif" class="o_lg-hide" />
                    </a>
                </li>
                <li class="nav-column js_column" column='2'>
                    <a href="../../member/index.htm" tppabs="http://www.tongshuai.com/member/">
                        <div class="nav-column-box3"></div>
                    </a>
                </li>
                <li class="nav-column js_column" column='3'>
                    <a href="../../service/index.htm" tppabs="http://www.tongshuai.com/service/">
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
                    <a class="nav-chart" href="../../cart/index.htm" tppabs="http://www.tongshuai.com/cart/"><i class="iconfont icon-shoppingcart"></i>&nbsp;&nbsp;我的购物车</a>
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
                    <a class="nav-chart" href="../../cart/index.htm" tppabs="http://www.tongshuai.com/cart/"><i class="iconfont icon-shoppingcart"></i>&nbsp;&nbsp;我的购物车</a>
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
                        <a class="js_nav-chart2" href="../../cart/index.htm" tppabs="http://www.tongshuai.com/cart/">
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
                                <a href="../../televisions/index.htm" tppabs="http://www.tongshuai.com/televisions/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">电视</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../laundry/index.htm" tppabs="http://www.tongshuai.com/laundry/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">洗衣机</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../air_conditioners/index.htm" tppabs="http://www.tongshuai.com/air_conditioners/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">空调</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../cooling/index.htm" tppabs="http://www.tongshuai.com/cooling/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">冰箱</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../freezer/index.htm" tppabs="http://www.tongshuai.com/freezer/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">冷柜</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../water_heater/index.htm" tppabs="http://www.tongshuai.com/water_heater/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">热水器</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../cooking_appliances/index.htm" tppabs="http://www.tongshuai.com/cooking_appliances/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">厨电</div>
                                </a>
                            </li>

                        </ul>
                    </li>
                    <li><a href="../../life/index.htm" tppabs="http://www.tongshuai.com/life/">悠生活<i class="iconfont icon-arrow-line-right"></i></a></li>
                    <li><a href="../../member/index.htm" tppabs="http://www.tongshuai.com/member/">会员<i class="iconfont icon-arrow-line-right"></i></a></li>
                    <li><a href="../../service/index.htm" tppabs="http://www.tongshuai.com/service/">服务<i class="iconfont icon-arrow-line-right"></i></a></li>
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
                        <a href="../../service/installation_and_maintenance/index.htm" tppabs="http://www.tongshuai.com/service/installation_and_maintenance">在线报修</a>
                        <!--<a href="http://user.tongshuai.com/product_registe">产品注册</a>-->
                        <a href="../../service/help/index.htm" tppabs="http://www.tongshuai.com/service/help">帮助中心</a>
                        <a href="../../contact/index.htm" tppabs="http://www.tongshuai.com/contact">联系我们</a>
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
                    <a href="../../televisions/index.htm" tppabs="http://www.tongshuai.com/televisions/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">电视</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../laundry/index.htm" tppabs="http://www.tongshuai.com/laundry/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">洗衣机</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../air_conditioners/index.htm" tppabs="http://www.tongshuai.com/air_conditioners/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">空调</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../cooling/index.htm" tppabs="http://www.tongshuai.com/cooling/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">冰箱</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../freezer/index.htm" tppabs="http://www.tongshuai.com/freezer/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">冷柜</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../water_heater/index.htm" tppabs="http://www.tongshuai.com/water_heater/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">热水器</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../cooking_appliances/index.htm" tppabs="http://www.tongshuai.com/cooking_appliances/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
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

        <!-- 品牌简介banner -->
        <div class="js_introduce">

        </div>
        <div class="o_g aboutus_banner">
            <div class="o_u o_df_1-12 o_md_1-12 o_sm_1-12"></div>
            <div class="o_u o_df_3-12 o_md_4-12 o_sm_5-12 o_xs_2-2 aboutus_head">
                <p class="aboutus_head_title">关于统帅</p>
                <p class="aboutus_head_text">统帅电器是海尔集团在互联网背景下，继海尔、卡萨帝之后战略布局的年轻化品牌。定位于“轻时尚家电开创者”，并提出“轻时尚 悠生活”的品牌主张，致力于为用户打造一种时尚、简约、悠闲、舒适的生活方式。</p>
                <p class="aboutus_head_text">统帅旗下产品涵盖冰箱、洗衣机、空调、热水器、厨电、冷柜、彩电等七大品类，均由全球顶尖工程师联合设计打造，现已拥有上千万忠实用户，获得行业内30余项大奖。</p>
            </div>
            <div class="o_u o_df_1-12 o_md_1-12 o_sm_1-12"></div>
            <div class="o_u o_df_7-12 o_md_6-12 o_sm_5-12 o_xs_2-2 aboutus_head_banner">
                <img class="js_recPic" src="" df="/images/aboutus_banner_df.png" lg="/images/aboutus_banner_lg.png" md="/images/aboutus_banner_md.png" sm="/images/aboutus_banner_md.png" xs="/images/aboutus_banner_xs.png" />
            </div>
        </div>
        <!-- 品牌简介banner END -->

        <!--导航与内容-->
        <div class="aboutus_list_content">
            <div class="o_g aboutus_list_head">
                <div class="o_u o_df_1-12">
                </div>
                <div class="o_u o_df_10-12">
                    <div class="aboutus_list_item">
                        <div class="o_g">
                            <div class="o_u o_df_1-2">
                                <a href="javascript:;">
                                    <div class="aboutus_list_title active">
                                        统帅品牌
                                    </div>
                                </a>
                            </div>
                            <div class="o_u o_df_1-2">
                                <a href="../news/index.htm" tppabs="http://www.tongshuai.com/about/news/">
                                    <div class="aboutus_list_title">
                                        新闻动态
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="o_u o_df_1-12">
                </div>
            </div>

            <!--锚点导航-->
            <div class="js_navi">

            </div>
            <div class="aboutus_nav">
                <div class="aboutus_navigation js_navigation">
                    <div class="swiper-container swiper_navigation">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
										<span class="aboutus_navigation_item active" data-nav="js_introduce">
										品牌简介
									</span>
                            </div>
                            <div class="swiper-slide">
										<span class="aboutus_navigation_item" data-nav="js_electrical">
										定位与口号
									</span>
                            </div>
                            <div class="swiper-slide">
										<span class="aboutus_navigation_item" data-nav="js_idea">
										理念及文化
									</span>
                            </div>
                            <div class="swiper-slide">
										<span class="aboutus_navigation_item" data-nav="js_advantage">
										品牌优势
									</span>
                            </div>
                            <div class="swiper-slide">
										<span class="aboutus_navigation_item" data-nav="js_history">
										品牌历程
									</span>
                            </div>
                            <div class="swiper-slide">
										<span class="aboutus_navigation_item" data-nav="js_glory">
										品牌荣誉
									</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--锚点导航END-->
            <div class="aboutus_padding_bottom">

            </div>
        </div>
        <!--导航与内容END-->
        <!--定位与口号-->
        <div class=" js_electrical">

        </div>
        <div class="aboutus_content active">
            <div class="aboutus_content_electrical">
                <img class="js_recPic" src="" df="/images/aboutus_electrical.png" lg="/images/aboutus_electrical_lg.png" md="/images/aboutus_electrical_lg.png" sm="/images/aboutus_electrical_lg.png" xs="/images/aboutus_electrical_lg.png" />
            </div>
            <div class="aboutus_content_text">
                <p class="aboutus_text_head">品牌定位</p>
                <p class="aboutus_text_title">轻时尚家电开创者</p>
                <p class="aboutus_text_content">“轻”即适度，崇尚简约本真，不受当下变幻潮流的左右，只从本心。轻时尚代表着一种简单精致、回归本质的文化，不是标新立异、夸张色彩，而是真正有内涵的时尚。统帅电器的“轻时尚”，是让家电化繁为简，把简单做到极致，却又无比认真细致地照顾到生活点滴所需</p>
            </div>
            <div class="aboutus_content_border">

            </div>
            <div class="aboutus_content_line o_df-show o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_text_positioning.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_text_positioning.png" />
            </div>
            <div class="aboutus_content_life o_df-show o_lg-show o_md-show o_sm-hide o_xs-hide">
                <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_life.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_life.png" />
            </div>
            <div class="aboutus_content_text aboutus_life">
                <p class="aboutus_text_head">品牌口号</p>
                <p class="aboutus_text_title"><img src="../../../image.tongshuai.com/tongshuai/images/aboutus_text_life.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_text_life.png" /></p>
                <p class="aboutus_text_content">统帅电器倡导时尚、简约、悠闲、舒适的生活方式，将简约时尚的自然美学和返璞归真的生活哲学相融合，提出自己的主张“轻时尚 悠生活”，将用户从生活琐事束缚中解放出来，拥有更多时间享受生活的惬意。悠生活：于简单中创造享受快乐；悠闲：奋斗之余的从容；悠趣：简单满足的小确幸；悠享：乐在其中的执着；悠然：回归自然的本真</p>
            </div>
            <div class="aboutus_content_fashion">
                <img class="js_recPic" src="" df="/images/aboutus_fashion_xl.png" lg="/images/aboutus_fashion_lg.png" md="/images/aboutus_fashion_lg.png" sm="/images/aboutus_fashion_lg.png" xs="/images/aboutus_fashion_lg.png" />
            </div>
        </div>
        <!--定位与口号END-->
        <!--品牌理念-->
        <div class=" js_idea">

        </div>
        <div class="aboutus_content aboutus_red_line">
            <div class="o_g">
                <div class="o_u o_df_2-12 o_md_1-12 o_sm_1-12 o_xs_1-12"></div>
                <div class="o_u o_df_8-12 o_md_10-12 o_sm_10-12 o_xs_10-12">
                    <div class="aboutus_content_text aboutus_idea">
                        <p class="aboutus_text_head">品牌理念</p>
                        <p class="aboutus_text_title">考量设计与性能的平衡美学</p>
                        <p class="aboutus_text_content">“轻”即适度，崇尚简约本真，不受当下变幻潮流的左右，只从本心。轻时尚代表着一种简单精致、回归本质的文化，不是标新立异、夸张色彩，而是真正有内涵的时尚。 统帅电器的“轻时尚”，是让家电化繁为简，把简单做到极致，却又无比认真细致地照顾到生活点滴所需</p>
                    </div>
                </div>
            </div>
            <div class="o_g aboutus_design">
                <div class="o_u o_df_1-2 o_xs_4-12 aboutus_design_pic">
                    <img class="js_recPic" src="" df="/images/aboutus_pic1.png" sm="/images/aboutus_pic3.png" xs="/images/aboutus_pic3.png" />
                </div>
                <div class="o_u o_df_1-2 o_xs_8-12 aboutus_design_text">
                    <div class="o_g">
                        <div class="o_u o_df_2-12 o_xs_1-8"></div>
                        <div class="o_u o_df_8-12 o_xs_6-8">
                            <p class="aboutus_design_head">设计理念：简约、时尚</p>
                            <p class="aboutus_design_content">统帅电器各品类均由国际顶级设计大咖倾心打造，重新诠释时尚简约，干净简洁的产品设计摒除一切多余繁杂，与环境自然相融，用至简元素勾勒出时尚家居格调</p>
                        </div>
                        <div class="o_u o_df_2-12 o_xs_1-8"></div>
                    </div>
                </div>
            </div>
            <div class="o_g aboutus_design pic_right_design">
                <div class="o_u o_df_1-2 o_xs_8-12 aboutus_design_text">
                    <div class="o_g">
                        <div class="o_u o_df_2-12 o_xs_1-8"></div>
                        <div class="o_u o_df_8-12 o_xs_6-8">
                            <p class="aboutus_design_head">性能理念：适用、品质</p>
                            <p class="aboutus_design_content">统帅电器将产品返璞归真，追求家电基础功能的精益求精，用心锻造高品质、不花哨的全系产品，为用户提供恰到好处的功能满足，让用户从生活琐事中解放出来</p>
                        </div>
                        <div class="o_u o_df_2-12 o_xs_1-8"></div>
                    </div>
                </div>
                <div class="o_u o_df_1-2 o_xs_4-12 aboutus_design_pic">
                    <img class="js_recPic" src="" df="/images/aboutus_pic2.png" sm="/images/aboutus_pic4.png" xs="/images/aboutus_pic4.png" />
                </div>
            </div>
            <div class=" aboutus_red">
                <div class="aboutus_red_top">

                </div>
                <div class="aboutus_red_bottom">

                </div>
            </div>
        </div>

        <!--品牌理念END-->
        <!--品牌文化-->
        <div class="js_culture">

        </div>
        <div class="aboutus_content aboutus_shadow ">
            <div class="swiper-container swiper_culture">
                <div class="aboutus_culture">
                    <p class="aboutus_culture_head">品牌文化</p>
                    <p class="aboutus_culture_title">年轻、时尚与品质生活的融合</p>
                </div>
                <div class="swiper-wrapper aboutus_culture_content">
                    <div class="swiper-slide">
                        <div class="culture_mar">
                            <div class="aboutus_culture_pic">
                                <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_culture_pic1.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_culture_pic1.png" />
                            </div>
                            <div class="aboutus_culture_text">
                                <p class="culture_line"></p>
                                <p class="culture_head">品牌精髓</p>
                                <p class="culture_title">年轻、时尚、品质、适用</p>
                                <p class="culture_text">将时尚元素回归生活本真，在简约中发现不简单的精致，为用户提供时尚、简约、悠闲、舒适的生活方式</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="culture_mar">
                            <div class="aboutus_culture_pic">
                                <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_culture_pic2.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_culture_pic2.png" />
                            </div>
                            <div class="aboutus_culture_text">
                                <p class="culture_line"></p>
                                <p class="culture_head">品牌个性</p>
                                <p class="culture_title">时尚、活力、有追求</p>
                                <p class="culture_text o_df-show o_lg-hide o_md-hide o_sm-hide o_xs-hide">时尚：绝不受制于世俗眼光，我即风尚<br />活力：积极面对每个崭新的一天，充满阳光<br />有追求：不囿于生活的苟且，努力向上</p>
                                <p class="culture_text o_df-hide o_lg-show o_md-show o_sm-show o_xs-show">时尚：绝不受制于世俗眼光，我即风尚活力：积极面对每个崭新的一天，充满阳光有追求：不囿于生活的苟且，努力向上</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="culture_mar">
                            <div class="aboutus_culture_pic">
                                <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_culture_pic3.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_culture_pic3.png" />
                            </div>
                            <div class="aboutus_culture_text">
                                <p class="culture_line"></p>
                                <p class="culture_head">品牌愿景</p>
                                <p class="culture_title">为奋斗青年打造简单又有品质的悠生活</p>
                                <p class="culture_text">希望奋斗拼搏的人们在打拼之余，回到家就能享受时尚、简约、悠闲、舒适的生活，摆脱生活繁琐，不被生活所支配，拥有更多时间去专注自己热爱的事情。</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--品牌文化END-->
        <!--品牌优势-->
        <div class="js_advantage">

        </div>
        <div class="aboutus_content ">
            <div class="swiper-container swiper_advantage">
                <div class="aboutus_advantage">
                    <p class="aboutus_advantage_head">品牌优势</p>
                    <p class="aboutus_advantage_title">专业专心构筑至悠生活</p>
                </div>
                <div class="swiper-wrapper aboutus_advantage_content">
                    <div class="swiper-slide">
                        <div class="aboutus_bgcolor">
                            <div class="aboutus_advantage_pic">
                                <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_advantage_pic1.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_advantage_pic1.png" />
                            </div>
                            <div class="aboutus_advantage_text">
                                <p class="advantage_head">创新 </p>
                                <div class="advantage_title">
                                    <p>整合全球研发资源</p>
                                    <p>塑造品牌独特个性</p>
                                </div>
                                <p class="advantage_text">10大综合研发中心、6大设计分部、18大设计中心、28个国际研发机构，300多位国际设计师，确保统帅独特的品牌个性</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="aboutus_bgcolor">
                            <div class="aboutus_advantage_pic">
                                <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_advantage_pic2.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_advantage_pic2.png" />
                            </div>
                            <div class="aboutus_advantage_text">
                                <p class="advantage_head">品质 </p>
                                <div class="advantage_title">
                                    <p>完善流程制造体系</p>
                                    <p>锻造产品卓越品质</p>
                                </div>
                                <p class="advantage_text">建立以模块为索引的市场问题归零模式，实现全流程的质量预防；同时建立过程SPC（统计过程控制）管控体系、关键工序CPK（制程能力指数）改善体系等</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="aboutus_bgcolor">
                            <div class="aboutus_advantage_pic">
                                <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_advantage_pic3.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_advantage_pic3.png" />
                            </div>
                            <div class="aboutus_advantage_text">
                                <p class="advantage_head">专业 </p>
                                <div class="advantage_title">
                                    <p>规范的IHS信息管理</p>
                                    <p>提供专业咨询服务</p>
                                </div>
                                <p class="advantage_text">全国各中心设置有专职的统帅IHS（信息管理服务），通过4006999999，在订单执行、渠道网络、促销活动等方面提供专业服务</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="aboutus_bgcolor">
                            <div class="aboutus_advantage_pic">
                                <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_advantage_pic4.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_advantage_pic4.png" />
                            </div>
                            <div class="aboutus_advantage_text">
                                <p class="advantage_head">高效</p>
                                <div class="advantage_title">
                                    <p>聚合优势物流资源</p>
                                    <p>布局全球物流网</p>
                                </div>
                                <p class="advantage_text">83个物流配送中心（TC）、300多万m²仓储资源、36个设备中心、6000余家服务网点、13000余辆全国可调配车辆资源</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="aboutus_bgcolor">
                            <div class="aboutus_advantage_pic">
                                <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_advantage_pic5.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_advantage_pic5.png" />
                            </div>
                            <div class="aboutus_advantage_text">
                                <p class="advantage_head">贴心 </p>
                                <div class="advantage_title">
                                    <p>七星服务入户体系</p>
                                    <p>尽享无忧售后服务</p>
                                </div>
                                <p class="advantage_text">统帅电器的服务由海尔集团售后服务网点完全承接，切实实现24小时响应、按约送达、送装同步的售后服务</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--品牌优势END-->
        <!--品牌历史-->
        <div class="js_history">

        </div>
        <div class="aboutus_content ">
            <div class="swiper-container swiper_history">
                <div class="aboutus_history o_g">
                    <div class="o_u o_df_7-12 o_sm_2-2 o_xs_2-2 history_pic_left">
                        <img src="" class="js_recPic" df="/images/aboutus_history_banner1.png" lg="/images/aboutus_history_banner2.png" md="/images/aboutus_history_banner3.png" sm="/images/aboutus_history_banner4.png" xs="/images/aboutus_history_banner4.png" />
                        <span class="history_left_text">OUR HISTORY</span>
                    </div>
                    <div class="o_u o_df_4-12 o_sm_2-2 o_xs_2-2 history_pic_mid">
                        <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_history_text.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_history_text.png" />
                    </div>
                    <div class="o_df-show o_u o_df_1-12 o_sm-hide o_xs-hide history_pic_right">
                        <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_history_banner12.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_history_banner12.png" />
                    </div>
                </div>
                <div class="swiper-wrapper aboutus_history_content o_g">
                    <div class="swiper-slide o_u o_df_1-6 history_slide_begin">
                        <div class="history_circle">
                        </div>
                        <div class="history_circle_inner">
                        </div>
                    </div>

                    <div class="swiper-slide o_u o_df_1-6">
                        <div class="history_circle">
                        </div>
                        <div class="history_circle_inner">
                        </div>
                        <div class="history_content">
                            <p class="history_title">1998</p>
                            <div class="history_text">创立青岛乐家电器有限公司，并将品牌命名为统帅；同年，统帅品牌上市</div>
                        </div>
                    </div>

                    <div class="swiper-slide o_u o_df_1-6">
                        <div class="history_circle">
                        </div>
                        <div class="history_circle_inner">
                        </div>
                        <div class="history_content">
                            <p class="history_title">2000</p>
                            <div class="history_text">青岛乐家电器有限公司集结美国、德国、意大利的设计师们在美国成立全球研发团队，针对海外发展需求研发简约家电</div>
                        </div>
                    </div>

                    <div class="swiper-slide o_u o_df_1-6">
                        <div class="history_circle">
                        </div>
                        <div class="history_circle_inner">
                        </div>
                        <div class="history_content">
                            <p class="history_title">2002</p>
                            <div class="history_text">统帅针对海外消费特点研发产品，主要销往美国、德国、意大利、法国等欧美主流市场</div>
                        </div>
                    </div>

                    <div class="swiper-slide o_u o_df_1-6">
                        <div class="history_circle">
                        </div>
                        <div class="history_circle_inner">
                        </div>
                        <div class="history_content">
                            <p class="history_title">2008</p>
                            <div class="history_text">国家家电下乡等多个利好政策出台，带来家电市场倍速发展，乐家电器及时调整策略，布局国内市场</div>
                        </div>
                    </div>

                    <div class="swiper-slide o_u o_df_1-6">
                        <div class="history_circle">
                        </div>
                        <div class="history_circle_inner">
                        </div>
                        <div class="history_content">
                            <p class="history_title">2010</p>
                            <div class="history_text">统帅成功中标国家家电下乡，深耕国内家电市场，大力拓展渠道，实现倍速发展</div>
                        </div>
                    </div>



                </div>
            </div>
        </div>
        <!--品牌历史END-->
        <!--品牌荣誉-->
        <div class="js_glory">

        </div>
        <div class="aboutus_content aboutus_glory ">
            <div class="o_g glory_content">
                <div class="o_u o_df_3-12 o_lg_4-12">
                    <div class="glory_left">
                        <div class="glory_pic o_df-show o_md-hide o_sm-hide o_xs-hide">
                            <img src="../../../image.tongshuai.com/tongshuai/images/aboutus_glory_text.png" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus_glory_text.png" />
                        </div>
                        <div class="glory_text_left">
                            世界于统帅理念的认可
                        </div>
                    </div>
                </div>
                <div class="o_u o_df_8-12">
                    <div class="swiper_glory">
                        <div class="glory_line">
                        </div>
                        <div class="glory_item">

                            <div class="glory_slider">

                                <div class="glory_circle">
                                </div>
                                <div class="glory_circle_mid">
                                </div>
                                <p class="glory_year">2011</p>
                                <p>统帅冰箱荣获“2010-2011年度冰箱行业新锐品牌”奖<br/>统帅电器荣获“最佳创新营销案例大奖”，成功入围《2011创新一百营销案例手册》<br/>统帅电器荣获“2011先驱中国年度创新品牌奖”，并入选新民周刊“2011消费者最喜爱百大国产杰出品牌”</p>
                            </div>

                            <div class="glory_slider">

                                <div class="glory_circle">
                                </div>
                                <div class="glory_circle_mid">
                                </div>
                                <p class="glory_year">2012</p>
                                <p>统帅力揽“2011-2012年度冰箱行业节能标杆”和“2011-2012年度冰箱行业节能明星”两项大奖<br/>统帅彩电LE42KCAI获“2012节能云电视产品”<br/>统帅电器蝉联“2012年度最佳创新营销案例”大奖，成功入选《2012创新一百营销案例手册》</p>
                            </div>

                            <div class="glory_slider">

                                <div class="glory_circle">
                                </div>
                                <div class="glory_circle_mid">
                                </div>
                                <p class="glory_year">2013</p>
                                <p>统帅电器再度荣获“2012先驱中国年度创新品牌奖”<br/>统帅“风暴洗”洗衣机，荣获中国家用电器研究院颁发的“好产品”证书</p>
                            </div>

                            <div class="glory_slider">

                                <div class="glory_circle">
                                </div>
                                <div class="glory_circle_mid">
                                </div>
                                <p class="glory_year">2014</p>
                                <p>统帅玉砂彩晶冰箱荣获“IF产品设计大奖”<br/>统帅电器被授予“中国互联网20周年最受用户欢迎定制家电品牌奖”<br/>统帅燃气热水器、电热水器、酒柜荣获中国家用电器研究院颁发的“中国好产品”<br/>统帅天幕ISEE MINI荣获《财经天下周刊》“2014年异想大会年度产品” 和WEMEDIA自媒体联盟年会“2014年度智能产品”<br/>统帅电器荣获2014（第十二届）中国互联网经济年会“金I奖”，即“互联网定制家电品牌人气奖”</p>
                            </div>

                            <div class="glory_slider">

                                <div class="glory_circle">
                                </div>
                                <div class="glory_circle_mid">
                                </div>
                                <p class="glory_year">2015</p>
                                <p>经第十届“鼎电杯”中华电子企业品牌价值评议组委会评测，统帅电器2015年度的品牌价值为156.95亿元</p>
                            </div>

                            <div class="glory_slider">

                                <div class="glory_circle">
                                </div>
                                <div class="glory_circle_mid">
                                </div>
                                <p class="glory_year">2016</p>
                                <p>统帅冰箱BCD-241WLDCN，由中国家用电器研究院授予“好产品”奖，有效期2年<br/>统帅真我洗衣机在2016中国国际消费电子博览会上荣获“LEADER趋势设计大奖”<br/>统帅空调在2016-2017中国空调行业高峰论坛上荣获“年轻人优选空调品牌”、“ACB品质领先奖”和“CLA创新技术奖”<br/>统帅品牌在德国IFA展上荣获“年度最具成长力家用品牌”，统帅洗衣机被授予“年度设计创新奖”<br/>统帅品牌荣获“2016年度中国洗衣机行业未来洗护引领品牌”，统帅洗衣机荣获“2016年度中国洗衣机行业新锐洗护引领产品”<br/>统帅品牌由美国信科检验认证集团授予“时尚家电创新奖”<br/>统帅品牌被世界影响力组织授予“年轻消费者喜爱的家电品牌奖”</p>
                            </div>

                            <div class="glory_slider">

                                <div class="glory_circle">
                                </div>
                                <div class="glory_circle_mid">
                                </div>
                                <p class="glory_year">2017</p>
                                <p>统帅品牌荣获“2017中国广告长城奖媒介营销铜奖”<br/>统帅品牌荣获“2017中国广告长城奖互动创意优秀奖”<br/>统帅品牌荣获“2017金印奖数字化与粉丝营销类优秀奖”<br/>统帅品牌荣获“效果营销标杆案例大奖金比特奖”<br/>统帅品牌荣获“最佳品牌营销案例奖金坐标奖”<br/>统帅品牌荣获“2017金触点全球商业创新大奖社会化与粉丝营销类优秀奖”<br/>统帅微博运维荣获“蓝微联盟家电行业微博运维优秀奖”<br/>统帅品牌荣获“中国商业联合会年度同类产品市场销售领先品牌”<br/>统帅超保温热水器LES60H-LN7金(U1)荣获中国家用电器研究院产品评测中心“好产品证书”<br/>统帅冰箱BCD-480WLDCYU1荣获“2017年度冰箱行业智选产品智慧时尚奖”<br/>统帅空调荣获空调行业高峰论坛组委会“2017年度空调行业年轻化创新品牌”<br/>统帅先衣机斩获“2017中国洗衣机行业专业洗护时尚品牌大奖”<br/>统帅真我系列直驱洗衣机荣获“2017年中国洗衣机行业时尚洗护引领产品奖”</p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--品牌荣誉END-->
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
                            <a class="foot_link" href="../../life/index.htm" tppabs="http://www.tongshuai.com/life/">悠生活</a>
                            <a class="foot_link" href="index.htm" tppabs="http://www.tongshuai.com/about/brand/">关于统帅</a>
                            <a class="foot_link" href="../news/index.htm" tppabs="http://www.tongshuai.com/about/news/">新闻资讯</a>
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

                            <a class="foot_link" href="../../televisions/index.htm" tppabs="http://www.tongshuai.com/televisions/">电视</a>

                            <a class="foot_link" href="../../laundry/index.htm" tppabs="http://www.tongshuai.com/laundry/">洗衣机</a>

                            <a class="foot_link" href="../../air_conditioners/index.htm" tppabs="http://www.tongshuai.com/air_conditioners/">空调</a>

                            <a class="foot_link" href="../../cooling/index.htm" tppabs="http://www.tongshuai.com/cooling/">冰箱</a>

                            <a class="foot_link" href="../../freezer/index.htm" tppabs="http://www.tongshuai.com/freezer/">冷柜</a>

                            <a class="foot_link" href="../../water_heater/index.htm" tppabs="http://www.tongshuai.com/water_heater/">热水器</a>

                            <a class="foot_link" href="../../cooking_appliances/index.htm" tppabs="http://www.tongshuai.com/cooking_appliances/">厨电</a>

                        </div>
                    </div>
                    <div class="o_u o_df_1-6 o_md_1-4 o_sm_2-2 o_xs_2-2">
                        <div class="foot_head js_footLindBtn">
                            <i class="iconfont icon-heart-solid o_xs-hide"></i>
                            <span>服务</span>
                            <a class="iconfont js_footmenuShow icon-plus o_df-hide o_sm-show o_xs-show"></a>
                        </div>
                        <div class="foot_linkbox js_footLink">
                            <a class="foot_link" href="../../service/installation_and_maintenance/index.shtml-datatype=1.htm" tppabs="http://www.tongshuai.com/service/installation_and_maintenance/index.shtml?datatype=1">预约安装</a>
                            <a class="foot_link" href="../../service/installation_and_maintenance/index.shtml-datatype=2.htm" tppabs="http://www.tongshuai.com/service/installation_and_maintenance/index.shtml?datatype=2">在线报修</a>
                            <span class="foot_link">产品注册</span>
                            <a class="foot_link" href="../../service/Instructions/index.htm" tppabs="http://www.tongshuai.com/service/Instructions/">使用手册下载</a>
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
                                        <img lazy-src="../../images/footer_logo1.jpg" tppabs="http://www.tongshuai.com/images/footer_logo1.jpg" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                        <span>京东旗舰店</span>
                                        <div class="line"></div>
                                    </a>
                                </li>
                                <li class="o_u o_df_1-3">
                                    <a href="javascript:if(confirm('https://leaderrrslj.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.AlZnYC  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://leaderrrslj.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.AlZnYC'" tppabs="https://leaderrrslj.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.AlZnYC" target="_blank">
                                        <img lazy-src="../../images/footer_logo2.jpg" tppabs="http://www.tongshuai.com/images/footer_logo2.jpg" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                        <span>天猫旗舰店</span>
                                        <div class="line"></div>
                                    </a>
                                </li>
                                <li class="o_u o_df_1-3">
                                    <a href="javascript:if(confirm('http://shop.suning.com/70088046/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://shop.suning.com/70088046/index.html'" tppabs="http://shop.suning.com/70088046/index.html" target="_blank">
                                        <img lazy-src="../../images/footer_logo3.jpg" tppabs="http://www.tongshuai.com/images/footer_logo3.jpg" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
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
						<img lazy-src="../../images/tongshuai_weixin.jpg" tppabs="http://www.tongshuai.com/images/tongshuai_weixin.jpg" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        <p></p><i></i>
                    </div>
				</a>
            </span>
                    <ul>
                        <li>
                            <a href="../../contact/index.htm" tppabs="http://www.tongshuai.com/contact/">联系我们</a>
                        </li>
                        <li>
                            <a href="../../service/help/index.htm" tppabs="http://www.tongshuai.com/service/help/">帮助中心</a>
                        </li>
                        <li>
                            <a href="../../terms/index.htm" tppabs="http://www.tongshuai.com/terms/">服务条款</a>
                        </li>
                        <li>
                            <a href="../../terms_conditions/index.htm" tppabs="http://www.tongshuai.com/terms_conditions/">法律声明</a>
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
        <script id="_trs_ta_js" src="../../../net.haier.com/c/js/ta.js-mpid=1112&cPrefix=ta.trs.cn-c" tppabs="http://net.haier.com/c/js/ta.js?mpid=1112&cPrefix=ta.trs.cn/c" async="async" defer="defer"></script>
        <!--网脉end-->
        <!--全局cookie start-->
        <script src="../../../c.haier.com/trscookie/images/trs_cookie.js" tppabs="http://c.haier.com/trscookie/images/trs_cookie.js" data-mpId="36" defer="defer" id="_trs_glc_js_"></script>
        <!--全局cookie end-->
    </div>
</div>
<script type="text/javascript" src="../../../image.tongshuai.com/images/jquery-1.8.3.min.js" tppabs="http://image.tongshuai.com/images/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../../../image.tongshuai.com/images/jquery.cookie.js" tppabs="http://image.tongshuai.com/images/jquery.cookie.js"></script>
<script type="text/javascript" src="../../../image.tongshuai.com/images/l_obox.js" tppabs="http://image.tongshuai.com/images/l_obox.js"></script>
<script type="text/javascript" src="../../../image.tongshuai.com/images/l_module.js" tppabs="http://image.tongshuai.com/images/l_module.js"></script>
<script type="text/javascript" src="../../../image.tongshuai.com/images/l_base.js" tppabs="http://image.tongshuai.com/images/l_base.js"></script>
<script type="text/javascript" src="../../../image.tongshuai.com/images/templete_nav_search.js" tppabs="http://image.tongshuai.com/images/templete_nav_search.js"></script>
<!--全局cookie start-->
<div class="o_g footer_cookie js_footer_cookie o_df-hide">
    <div class="bottom_cookie_text">
        <img src="../../../image.tongshuai.com/tongshuai/images/cookies_pic.png" tppabs="http://image.tongshuai.com/tongshuai/images/cookies_pic.png" />
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
<script type="text/javascript" src="../../../image.tongshuai.com/tongshuai/images/idangerous.swiper2.7.6.min.js" tppabs="http://image.tongshuai.com/tongshuai/images/idangerous.swiper2.7.6.min.js"></script>
<script type="text/javascript" src="../../../image.tongshuai.com/tongshuai/images/aboutus.js" tppabs="http://image.tongshuai.com/tongshuai/images/aboutus.js"></script>
</body>

</html>
