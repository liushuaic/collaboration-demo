<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/20
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset=utf-8"UTF-8">



    <title>【统帅冰箱】风冷_直冷_定频_变频冰箱 多门_三门_双门_单门冰箱 介绍_价格 - 统帅官网</title>
    <meta name="keywords" content="【统帅冰箱】风冷_直冷_定频_变频冰箱 多门_三门_双门_单门冰箱 介绍_价格 - 统帅官网" />
    <meta name="description" content="【统帅冰箱】风冷_直冷_定频_变频冰箱 多门_三门_双门_单门冰箱 介绍_价格 - 统帅官网" />




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
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/tongshuai/images/swiper-3.4.2.min.css" tppabs="http://image.tongshuai.com/tongshuai/images/swiper-3.4.2.min.css">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/tongshuai/images/product_list.css" tppabs="http://image.tongshuai.com/tongshuai/images/product_list.css">
    <style type="text/css">
        .displayFilter{color: #ccc;cursor: default;}
    </style>
</head>
<script type="text/javascript" src="../../../EasyUI/jquery.min.js"></script>
<script>
    $(function () {
        $("#logoutDiv").show();
        $("#loginDiv").hide();
        if('${loginAdmin.username}'.length>0){
            $("#logoutDiv").hide();
            $("#loginDiv").show();
        }
    })

    function outLogin(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zhjController/loginOut.jhtml",
            type:"post",
            success:function(data){
                if(data==1){
                    location.href="";
                }
            }
        })
    }
</script>
<body>
<div class="o_body">
    <div class="o_main">
        <!-- 首屏动画 -->
        <!-- <div class="o_g js_animateLine">
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
        </div> -->
        <!-- 首屏动画 END -->
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

                    <a href="../life/index.jsp" tppabs="http://www.tongshuai.com/life/">
                        <div class="nav-column-box2"></div>
                        <img src="../../image.tongshuai.com/tongshuai/images/nav-life.gif" tppabs="http://image.tongshuai.com/tongshuai/images/nav-life.gif" class="o_lg-hide" />
                    </a>
                </li>
                <li class="nav-column js_column" column='2'>
                    <a href="../member/index.jsp" tppabs="http://www.tongshuai.com/member/">
                        <div class="nav-column-box3"></div>
                    </a>
                </li>
                <li class="nav-column js_column" column='3'>
                    <a href="../service/index.jsp" tppabs="http://www.tongshuai.com/service/">
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
                    <a class="login" href="../../user.tongshuai.com/login.jsp">登录</a>
                    <span class="line"></span>
                    <a class="login" id="header_reg">注册</a>
                    <a class="nav-chart" href="../cart/index.jsp" tppabs="http://www.tongshuai.com/cart/"><i class="iconfont icon-shoppingcart"></i>&nbsp;&nbsp;我的购物车</a>
                </div>
                <div class="nav-user" id="loginDiv">
                    <div class="login nav-zindex1">
                        <span class="o_df-hide js_userNews"></span>
                        <font color="#228b22">${loginAdmin.username}</font>
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
                                <a href="javascript:outLogin();" id="header_logout">退出登录</a>
                            </li>
                        </ul>
                    </div>
                    <a class="nav-chart" href="../cart/index.jsp" tppabs="http://www.tongshuai.com/cart/"><i class="iconfont icon-shoppingcart"></i>&nbsp;&nbsp;我的购物车</a>
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
                        <a class="js_nav-chart2" href="../cart/index.jsp" tppabs="http://www.tongshuai.com/cart/">
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
                                <a href="../televisions/index.jsp" tppabs="http://www.tongshuai.com/televisions/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">电视</div>
                                </a>
                            </li>

                            <li>
                                <a href="../laundry/index.jsp" tppabs="http://www.tongshuai.com/laundry/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">洗衣机</div>
                                </a>
                            </li>

                            <li>
                                <a href="../air_conditioners/index.jsp" tppabs="http://www.tongshuai.com/air_conditioners/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">空调</div>
                                </a>
                            </li>

                            <li>
                                <a href="index.jsp" tppabs="http://www.tongshuai.com/cooling/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">冰箱</div>
                                </a>
                            </li>

                            <li>
                                <a href="../freezer/index.jsp" tppabs="http://www.tongshuai.com/freezer/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">冷柜</div>
                                </a>
                            </li>

                            <li>
                                <a href="../water_heater/index.jsp" tppabs="http://www.tongshuai.com/water_heater/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">热水器</div>
                                </a>
                            </li>

                            <li>
                                <a href="../cooking_appliances/index.jsp" tppabs="http://www.tongshuai.com/cooking_appliances/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">厨电</div>
                                </a>
                            </li>

                        </ul>
                    </li>
                    <li><a href="../life/index.jsp" tppabs="http://www.tongshuai.com/life/">悠生活<i class="iconfont icon-arrow-line-right"></i></a></li>
                    <li><a href="../member/index.jsp" tppabs="http://www.tongshuai.com/member/">会员<i class="iconfont icon-arrow-line-right"></i></a></li>
                    <li><a href="../service/index.jsp" tppabs="http://www.tongshuai.com/service/">服务<i class="iconfont icon-arrow-line-right"></i></a></li>
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
                        <a href="../service/help/index.<%@attribute name="" type="" required=""%>" tppabs="http://www.tongshuai.com/service/help">帮助中心</a>
                        <a href="../contact/index.jsp" tppabs="http://www.tongshuai.com/contact">联系我们</a>
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
                    <a href="../televisions/index.jsp" tppabs="http://www.tongshuai.com/televisions/">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">电视</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../laundry/index.jsp" tppabs="http://www.tongshuai.com/laundry/">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">洗衣机</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../air_conditioners/index.jsp" tppabs="http://www.tongshuai.com/air_conditioners/">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">空调</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="index.jsp" tppabs="http://www.tongshuai.com/cooling/">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">冰箱</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../freezer/index.jsp" tppabs="http://www.tongshuai.com/freezer/">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">冷柜</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../water_heater/index.jsp" tppabs="http://www.tongshuai.com/water_heater/">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">热水器</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../cooking_appliances/index.jsp" tppabs="http://www.tongshuai.com/cooking_appliances/">
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

        <!-- 导航 列表页 -->
        <div class="o_g list-nav">
            <div class="o_u o_df_2-2 list-nav-img">



                <img src="../../image.tongshuai.com/tongshuai/cooling/W020171223689287691865.jpg" tppabs="http://image.tongshuai.com/tongshuai/cooling/W020171223689287691865.jpg" class="o_u o_df_2-2 js_bannerImg" />

                <div class="list-nav-type">


                    <div class="nav-type-img">
                        <img src="../../image.tongshuai.com/tongshuai/cooling/W020171223689288124351.png" tppabs="http://image.tongshuai.com/tongshuai/cooling/W020171223689288124351.png" />
                    </div>
                    <div class="nav-type-en">REFRIGERATOR</div>
                    <div class="nav-type-china">冰箱</div>
                </div>




            </div>
            <div class="o_u o_df_1-12"></div>
            <div class="o_u o_df_10-12">
                <div class="list-kind-box">
                    <div class="list-kind js_showFloatList">
                        <div class="list-kind-icon">

                            <img src="images/P020170925571335610145.png" tppabs="http://www.tongshuai.com/cooling/images/P020170925571335610145.png"/>


                        </div>
                        <div class="list-kind-font">

                            <span class="list-kind-china">冰箱<i class="iconfont icon-arrow-line-down"></i><i class="iconfont icon-arrow-line-up"></i></span>


                            <span class="list-kind-english">REFRIGERATOR</span>





                        </div>
                        <div class="list-kind-line o_md-hide o_sm-hide o_xs-hide"></div>
                        <ul class="float-list">
                            <div class="triangle"></div>


                            <li>
                                <a href="../televisions/index.jsp" tppabs="http://www.tongshuai.com/televisions/">
                                    <img src="../televisions/images/P020170925572468483553.png" tppabs="http://www.tongshuai.com/televisions/images/P020170925572468483553.png"/>
                                    <span>电视</span>
                                </a>
                            </li>

                            <li>
                                <a href="../laundry/index.jsp" tppabs="http://www.tongshuai.com/laundry/">
                                    <img src="../laundry/images/P020170925571955730312.png" tppabs="http://www.tongshuai.com/laundry/images/P020170925571955730312.png"/>
                                    <span>洗衣机</span>
                                </a>
                            </li>

                            <li>
                                <a href="../air_conditioners/index.jsp" tppabs="http://www.tongshuai.com/air_conditioners/">
                                    <img src="../air_conditioners/images/P020170925572252727655.png" tppabs="http://www.tongshuai.com/air_conditioners/images/P020170925572252727655.png"/>
                                    <span>空调</span>
                                </a>
                            </li>

                            <li>
                                <a href="index.jsp" tppabs="http://www.tongshuai.com/cooling/">
                                    <img src="images/P020170925571335610145.png" tppabs="http://www.tongshuai.com/cooling/images/P020170925571335610145.png"/>
                                    <span>冰箱</span>
                                </a>
                            </li>

                            <li>
                                <a href="../freezer/index.jsp" tppabs="http://www.tongshuai.com/freezer/">
                                    <img src="../freezer/images/P020171101586087833174.png" tppabs="http://www.tongshuai.com/freezer/images/P020171101586087833174.png"/>
                                    <span>冷柜</span>
                                </a>
                            </li>

                            <li>
                                <a href="../water_heater/index.jsp" tppabs="http://www.tongshuai.com/water_heater/">
                                    <img src="../water_heater/images/P020170925572321617383.png" tppabs="http://www.tongshuai.com/water_heater/images/P020170925572321617383.png"/>
                                    <span>热水器</span>
                                </a>
                            </li>

                            <li>
                                <a href="../cooking_appliances/index.jsp" tppabs="http://www.tongshuai.com/cooking_appliances/">
                                    <img src="../cooking_appliances/images/P020170925572388955321.png" tppabs="http://www.tongshuai.com/cooking_appliances/images/P020170925572388955321.png"/>
                                    <span>厨电</span>
                                </a>
                            </li>




                        </ul>
                    </div>
                    <div class="list-type o_md-hide o_sm-hide o_xs-hide js_proNameBox">



                    </div>
                    <a class="more js_listNavShowMore js_listMobileNavhide" data-flag=0 >
                        <span class="o_df-hide o_xs-show">展开筛选项</span><span class="o_xs-hide">展开筛选项</span>&nbsp;<i class="iconfont icon-plus"></i>
                    </a>
                </div>



                <!-- sku -->

                <div class="list-filter-select" style="display:none">
                    <div class="list-select-deletebox">
                        <a class="list-select-deleteall js_deleteAll">全部删除</a>
                    </div>
                    <div class="list-select-bgbox js_filter">


                    </div>
                </div>

                <div class="list-filter js_screenClick">
                    <!-- <div class="filter-line">
                        <div class="filter-sole mar-right">
                            <span class="sole-title">箱门结构：</span>
                            <span class="sole-type">单门</span>
                            <span class="sole-type">双门</span>
                            <span class="sole-type">三门</span>
                            <span class="sole-type">多门</span>
                        </div>
                    </div>
                    <div class="filter-line">
                        <div class="filter-sole mar-left">
                            <span class="sole-title">箱门结构：</span>
                            <span class="sole-type">单门</span>
                            <span class="sole-type">双门</span>
                            <span class="sole-type">三门</span>
                            <span class="sole-type">多门</span>
                        </div>
                    </div>
                    <div class="filter-line">
                        <div class="filter-sole mar-right">
                            <span class="sole-title">箱门结构：</span>
                            <span class="sole-type">单门</span>
                            <span class="sole-type">双门</span>
                            <span class="sole-type">三门</span>
                            <span class="sole-type">多门</span>
                        </div>
                    </div>
                    <div class="filter-line">
                        <div class="filter-sole mar-left">
                            <span class="sole-title">箱门结构：</span>
                            <span class="sole-type">单门</span>
                            <span class="sole-type">双门</span>
                            <span class="sole-type">三门</span>
                            <span class="sole-type">多门</span>
                        </div>
                    </div>
                    <div class="filter-line o_df-hide">
                        <div class="filter-sole mar-right">
                            <span class="sole-title">箱门结构：</span>
                            <span class="sole-type">单门</span>
                            <span class="sole-type">双门</span>
                            <span class="sole-type">三门</span>
                            <span class="sole-type">多门</span>
                        </div>
                    </div>
                    <div class="filter-line o_df-hide">
                        <div class="filter-sole mar-left">
                            <span class="sole-title">箱门结构：</span>
                            <span class="sole-type">单门</span>
                            <span class="sole-type">双门</span>
                            <span class="sole-type">三门</span>
                            <span class="sole-type">多门</span>
                        </div>
                    </div>
                    <div class="filter-line o_df-hide">
                        <div class="filter-sole mar-right">
                            <span class="sole-title">箱门结构：</span>
                            <span class="sole-type">单门</span>
                            <span class="sole-type">双门</span>
                            <span class="sole-type">三门</span>
                            <span class="sole-type">多门</span>
                        </div>
                    </div> -->
                    <a class="list-more js_listNavShowMore  js_listNavhide" data-flag=0 >
                        <span>展开全部筛选项</span>&nbsp;<i class="iconfont icon-plus"></i>
                    </a>
                </div>
                <!-- sku END -->
            </div>
            <div class="o_u o_df_1-12"></div>
        </div>
        <!-- 导航 列表页 END -->

        <!-- 产品列表-头部 -->
        <div class="o_g prduct-title">
            <div class="o_u o_df_1-12"></div>
            <div class="o_u o_df_10-12">
                <div class="prolist-top">
                    <a class="font">上市时间<i class="iconfont icon-arrow-refresh-down"></i></a>
                    <span class="line"></span>
                    <a class="font">人气<i class="iconfont l-none icon-arrow-refresh-down"></i></a>
                    <span class="line"></span>
                    <a class="font">价格<i class="iconfont l-none"></i></a>
                    <span class="info">
							共<span class="red js_dataNum">5</span>款冰箱产品
						</span>
                    <!--<div class="pro-group">
                        <div class="group-style">
                            <span>
                                <input class="js_proGroup" type="checkbox" checked="true" data-notnull="true" value="组合优惠" />
                            </span>
                        </div>
                        <div class="group-style">
                            <span class="yellow">
                                <input class="js_proGroup" type="checkbox" checked="true" data-notnull="true" value="唤醒初夏" />
                            </span>
                            <span class="group-info">套装满额送好礼</span>
                            <span class="group-info o_xs-hide"> | </span>
                            <a><span>前往活动会场 </span><i class="iconfont icon-arrow-line-right o_xs-hide"></i></a>
                        </div>
                    </div>-->
                </div>
            </div>
            <div class="o_u o_df_1-12"></div>
        </div>
        <!-- 产品列表-头部 END -->

        <!-- 产品列表 -->
        <div class="o_g product-list">
            <!-- <div class=""> -->
            <div class="o_u o_df_1-12"></div>
            <div class="o_u o_df_10-12">
                <div class="prolist-con js_prolistBox">

                    <div class="o_u o_df_1-4 o_lg_1-3 o_md_1-2 o_sm_2-2 o_xs_2-2 js_collectBox">
                        <div class="prolist-box">


                            <span class="l-tag-radius l-tag-green pro-tag">人气</span>



                            <div class="pro-opporate">
                                <a class="pro-read js_listCollect" data-productId="642" data-mdm="B70U70017" data-channelName="冰箱产品">
                                        <span class="pro-read-i">
                                            <i class="iconfont icon-price-tag-solid1"></i>
                                        </span>
                                    <span class="pro-read-font">收藏</span>
                                </a>
                                <a class="pro-read l-fr js_compareAddProduct" auto="0"
                                   id="compare_642_top"
                                   data-id="compare_642_top"
                                   data-link="http://www.tongshuai.com/cooling/20171216_642.shtml"
                                   data-thumb="http://image.tongshuai.com/tongshuai/cooling/W020171216542818469091.jpg"
                                   data-name="统帅中字五门BCD-415WLDCXU1"
                                   data-type="BCD-415WLDCXU1"
                                   data-chnid="72">
                                    <span class="pro-read-font">对比</span>
                                    <span class="pro-read-i">
											<i class="iconfont icon-contrast-solid"></i>
										</span>
                                </a>
                            </div>

                            <a href="20171216_642.shtml.htm" tppabs="http://www.tongshuai.com/cooling/20171216_642.shtml" class="pro-info-box">
                                <!--<img src="http://image.tongshuai.com/tongshuai/cooling/W020171216542818469091_200.jpg" width="200"/>-->
                                <img src="../../image.tongshuai.com/tongshuai/cooling/W020171216542818469091_200.jpg" tppabs="http://image.tongshuai.com/tongshuai/cooling/W020171216542818469091_200.jpg" />
                                <!-- http://image.tongshuai.com/tongshuai/cooling/W020171216542818469091_200.jpg -->

                                <div class="pro-info-title">
                                    统帅中字五门BCD-415WLDCXU1
                                </div>
                                <div class="pro-info-mark">
                                    BCD-415WLDCXU1
                                </div>
                                <div class="pro-info-price js_minPrice" sku_value=''>
                                    ¥<span>5999</span>
                                </div>
                                <span class="l-btn-sm l-btn-red pro-info-buy">立即购买</span>
                                <!--<span class="l-btn-sm l-btn-line2 pro-info-take">订阅</span>-->
                            </a>
                            <!--活动暂时隐藏-->
                            <!-- <div class="pro-activity">
                                <i class="iconfont icon-arrow-line-left l-fl"></i>
                                <span>唤醒初夏</span>
                                <i class="iconfont icon-arrow-line-right l-fr"></i>
                            </div> -->
                        </div>
                    </div>

                    <div class="o_u o_df_1-4 o_lg_1-3 o_md_1-2 o_sm_2-2 o_xs_2-2 js_collectBox">
                        <div class="prolist-box">


                            <span class="l-tag-radius l-tag-green pro-tag">人气</span>



                            <div class="pro-opporate">
                                <a class="pro-read js_listCollect" data-productId="641" data-mdm="B70U7009F" data-channelName="冰箱产品">
                                        <span class="pro-read-i">
                                            <i class="iconfont icon-price-tag-solid1"></i>
                                        </span>
                                    <span class="pro-read-font">收藏</span>
                                </a>
                                <a class="pro-read l-fr js_compareAddProduct" auto="0"
                                   id="compare_641_top"
                                   data-id="compare_641_top"
                                   data-link="http://www.tongshuai.com/cooling/20171216_641.shtml"
                                   data-thumb="http://image.tongshuai.com/tongshuai/cooling/W020171216542026703200.jpg"
                                   data-name="统帅中字五门BCD-415WLDCT"
                                   data-type="BCD-415WLDCT"
                                   data-chnid="72">
                                    <span class="pro-read-font">对比</span>
                                    <span class="pro-read-i">
											<i class="iconfont icon-contrast-solid"></i>
										</span>
                                </a>
                            </div>

                            <a href="20171216_641.shtml.htm" tppabs="http://www.tongshuai.com/cooling/20171216_641.shtml" class="pro-info-box">
                                <!--<img src="http://image.tongshuai.com/tongshuai/cooling/W020171216542026703200_200.jpg" width="200"/>-->
                                <img src="../../image.tongshuai.com/tongshuai/cooling/W020171216542026703200_200.jpg" tppabs="http://image.tongshuai.com/tongshuai/cooling/W020171216542026703200_200.jpg" />
                                <!-- http://image.tongshuai.com/tongshuai/cooling/W020171216542026703200_200.jpg -->

                                <div class="pro-info-title">
                                    统帅中字五门BCD-415WLDCT
                                </div>
                                <div class="pro-info-mark">
                                    BCD-415WLDCT
                                </div>
                                <div class="pro-info-price js_minPrice" sku_value=''>
                                    ¥<span>5299</span>
                                </div>
                                <span class="l-btn-sm l-btn-red pro-info-buy">立即购买</span>
                                <!--<span class="l-btn-sm l-btn-line2 pro-info-take">订阅</span>-->
                            </a>
                            <!--活动暂时隐藏-->
                            <!-- <div class="pro-activity">
                                <i class="iconfont icon-arrow-line-left l-fl"></i>
                                <span>唤醒初夏</span>
                                <i class="iconfont icon-arrow-line-right l-fr"></i>
                            </div> -->
                        </div>
                    </div>

                    <div class="o_u o_df_1-4 o_lg_1-3 o_md_1-2 o_sm_2-2 o_xs_2-2 js_collectBox">
                        <div class="prolist-box">


                            <span class="l-tag-radius l-tag-green pro-tag">人气</span>



                            <div class="pro-opporate">
                                <a class="pro-read js_listCollect" data-productId="649" data-mdm="B70U02095" data-channelName="冰箱产品">
                                        <span class="pro-read-i">
                                            <i class="iconfont icon-price-tag-solid1"></i>
                                        </span>
                                    <span class="pro-read-font">收藏</span>
                                </a>
                                <a class="pro-read l-fr js_compareAddProduct" auto="0"
                                   id="compare_649_top"
                                   data-id="compare_649_top"
                                   data-link="http://www.tongshuai.com/cooling/20171218_649.shtml"
                                   data-thumb="http://image.tongshuai.com/tongshuai/cooling/W020171218513938993289.jpg"
                                   data-name="统帅中字五门BCD-480WLDCD"
                                   data-type="BCD-480WLDCD"
                                   data-chnid="72">
                                    <span class="pro-read-font">对比</span>
                                    <span class="pro-read-i">
											<i class="iconfont icon-contrast-solid"></i>
										</span>
                                </a>
                            </div>

                            <a href="20171218_649.shtml.htm" tppabs="http://www.tongshuai.com/cooling/20171218_649.shtml" class="pro-info-box">
                                <!--<img src="http://image.tongshuai.com/tongshuai/cooling/W020171218513938993289_200.jpg" width="200"/>-->
                                <img src="../../image.tongshuai.com/tongshuai/cooling/W020171218513938993289_200.jpg" tppabs="http://image.tongshuai.com/tongshuai/cooling/W020171218513938993289_200.jpg" />
                                <!-- http://image.tongshuai.com/tongshuai/cooling/W020171218513938993289_200.jpg -->

                                <div class="pro-info-title">
                                    统帅中字五门BCD-480WLDCD
                                </div>
                                <div class="pro-info-mark">
                                    BCD-480WLDCD
                                </div>
                                <div class="pro-info-price js_minPrice" sku_value=''>
                                    ¥<span>5899</span>
                                </div>
                                <span class="l-btn-sm l-btn-red pro-info-buy">立即购买</span>
                                <!--<span class="l-btn-sm l-btn-line2 pro-info-take">订阅</span>-->
                            </a>
                            <!--活动暂时隐藏-->
                            <!-- <div class="pro-activity">
                                <i class="iconfont icon-arrow-line-left l-fl"></i>
                                <span>唤醒初夏</span>
                                <i class="iconfont icon-arrow-line-right l-fr"></i>
                            </div> -->
                        </div>
                    </div>

                    <div class="o_u o_df_1-4 o_lg_1-3 o_md_1-2 o_sm_2-2 o_xs_2-2 js_collectBox">
                        <div class="prolist-box">


                            <span class="l-tag-radius l-tag-green pro-tag">人气</span>



                            <div class="pro-opporate">
                                <a class="pro-read js_listCollect" data-productId="648" data-mdm="B70U0109E" data-channelName="冰箱产品">
                                        <span class="pro-read-i">
                                            <i class="iconfont icon-price-tag-solid1"></i>
                                        </span>
                                    <span class="pro-read-font">收藏</span>
                                </a>
                                <a class="pro-read l-fr js_compareAddProduct" auto="0"
                                   id="compare_648_top"
                                   data-id="compare_648_top"
                                   data-link="http://www.tongshuai.com/cooling/20171218_648.shtml"
                                   data-thumb="http://image.tongshuai.com/tongshuai/cooling/W020171218510860864671.jpg"
                                   data-name="统帅中字五门静谧空间"
                                   data-type="BCD-480WLDCYU1"
                                   data-chnid="72">
                                    <span class="pro-read-font">对比</span>
                                    <span class="pro-read-i">
											<i class="iconfont icon-contrast-solid"></i>
										</span>
                                </a>
                            </div>

                            <a href="20171218_648.shtml.htm" tppabs="http://www.tongshuai.com/cooling/20171218_648.shtml" class="pro-info-box">
                                <!--<img src="http://image.tongshuai.com/tongshuai/cooling/W020171218510860864671_200.jpg" width="200"/>-->
                                <img src="../../image.tongshuai.com/tongshuai/cooling/W020171218510860864671_200.jpg" tppabs="http://image.tongshuai.com/tongshuai/cooling/W020171218510860864671_200.jpg" />
                                <!-- http://image.tongshuai.com/tongshuai/cooling/W020171218510860864671_200.jpg -->

                                <div class="pro-info-title">
                                    统帅中字五门静谧空间
                                </div>
                                <div class="pro-info-mark">
                                    BCD-480WLDCYU1
                                </div>
                                <div class="pro-info-price js_minPrice" sku_value=''>
                                    ¥<span>9999</span>
                                </div>
                                <span class="l-btn-sm l-btn-red pro-info-buy">立即购买</span>
                                <!--<span class="l-btn-sm l-btn-line2 pro-info-take">订阅</span>-->
                            </a>
                            <!--活动暂时隐藏-->
                            <!-- <div class="pro-activity">
                                <i class="iconfont icon-arrow-line-left l-fl"></i>
                                <span>唤醒初夏</span>
                                <i class="iconfont icon-arrow-line-right l-fr"></i>
                            </div> -->
                        </div>
                    </div>

                    <div class="o_u o_df_1-4 o_lg_1-3 o_md_1-2 o_sm_2-2 o_xs_2-2 js_collectBox">
                        <div class="prolist-box">


                            <span class="l-tag-radius l-tag-green pro-tag">人气</span>



                            <div class="pro-opporate">
                                <a class="pro-read js_listCollect" data-productId="650" data-mdm="B70U000A0" data-channelName="冰箱产品">
                                        <span class="pro-read-i">
                                            <i class="iconfont icon-price-tag-solid1"></i>
                                        </span>
                                    <span class="pro-read-font">收藏</span>
                                </a>
                                <a class="pro-read l-fr js_compareAddProduct" auto="0"
                                   id="compare_650_top"
                                   data-id="compare_650_top"
                                   data-link="http://www.tongshuai.com/cooling/20171218_650.shtml"
                                   data-thumb="http://image.tongshuai.com/tongshuai/cooling/W020171218517188303889.jpg"
                                   data-name="统帅中字五门BCD-480WLDCP"
                                   data-type="BCD-480WLDCP"
                                   data-chnid="72">
                                    <span class="pro-read-font">对比</span>
                                    <span class="pro-read-i">
											<i class="iconfont icon-contrast-solid"></i>
										</span>
                                </a>
                            </div>

                            <a href="20171218_650.shtml.htm" tppabs="http://www.tongshuai.com/cooling/20171218_650.shtml" class="pro-info-box">
                                <!--<img src="http://image.tongshuai.com/tongshuai/cooling/W020171218517188303889_200.jpg" width="200"/>-->
                                <img src="../../image.tongshuai.com/tongshuai/cooling/W020171218517188303889_200.jpg" tppabs="http://image.tongshuai.com/tongshuai/cooling/W020171218517188303889_200.jpg" />
                                <!-- http://image.tongshuai.com/tongshuai/cooling/W020171218517188303889_200.jpg -->

                                <div class="pro-info-title">
                                    统帅中字五门BCD-480WLDCP
                                </div>
                                <div class="pro-info-mark">
                                    BCD-480WLDCP
                                </div>
                                <div class="pro-info-price js_minPrice" sku_value=''>
                                    ¥<span>5899</span>
                                </div>
                                <span class="l-btn-sm l-btn-red pro-info-buy">立即购买</span>
                                <!--<span class="l-btn-sm l-btn-line2 pro-info-take">订阅</span>-->
                            </a>
                            <!--活动暂时隐藏-->
                            <!-- <div class="pro-activity">
                                <i class="iconfont icon-arrow-line-left l-fl"></i>
                                <span>唤醒初夏</span>
                                <i class="iconfont icon-arrow-line-right l-fr"></i>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="o_u o_df_1-4 o_lg_1-3 o_md_1-2 o_sm_2-2 o_xs_2-2">
                        <div class="prolist-box">
                            <span class="l-tag-radius l-tag-green pro-tag">人气</span>
                            <div class="pro-opporate">
                                <a class="pro-read">
                                    <span class="pro-read-i">
                                        <i class="iconfont icon-price-tag-solid1"></i>
                                    </span>
                                    <span class="pro-read-font">订阅</span>
                                </a>
                                <a class="pro-read l-fr">
                                    <span class="pro-read-font">对比</span>
                                    <span class="pro-read-i">
                                        <i class="iconfont icon-contrast-solid"></i>
                                    </span>
                                </a>
                            </div>
                            <a href="javascript:;" class="pro-info-box">
                                <img src="http://image.tongshuai.com/tongshuai/images/compare_goods.PNG" />
                                <div class="pro-info-title">
                                    双开门<br>海尔真诚到永远冰箱
                                </div>
                                <div class="pro-info-mark">
                                    HJOGJJEJG-797908
                                </div>
                                <div class="pro-info-price">
                                    ￥19889
                                </div>
                                <span class="l-btn-sm l-btn-red pro-info-buy">立即购买</span>
                                <span class="l-btn-sm l-btn-line2 pro-info-take">订阅</span>
                            </a>
                            <div class="pro-activity">
                                <i class="iconfont icon-arrow-line-left l-fl"></i>
                                <span>唤醒初夏</span>
                                <i class="iconfont icon-arrow-line-right l-fr"></i>
                            </div>
                        </div>
                    </div> -->
                </div>

            </div>
            <!-- </div> -->
        </div>
        <!-- 产品列表 END -->
        <!-- 分页 -->
        <div class="o_g product-listpage pageMax o_sm-hide o_xs-hide">

        </div>
        <div class="o_g product-listpage pageMiddle o_df-hide o_sm-show">

        </div>
        <div class="o_g product-listpage pageMobile o_df-hide o_xs-show">

        </div>

        <!-- 分页 END -->

        <!-- 精品推荐 -->
        <div class="o_g product-recommend">
            <div class="o_u o_df_1-12"></div>
            <div class="o_u o_df_10-12">
                <div class="recommend-box">
                    <div class="recommend-title">
                        精选推荐
                        <i class="iconfont icon-refresh-solid recommend-reload js_recomChange"></i>
                    </div>
                    <div class="recommend-pro">
                        <div class="o_g js_recommend">



                            <a class="o_u o_df_1-4 o_lg_1-3 o_md_1-2 o_sm_1-2 o_xs_1-2 o_df-hide" href="20171216_641.shtml.htm" tppabs="http://www.tongshuai.com/cooling/20171216_641.shtml">
                                <img src="../../image.tongshuai.com/tongshuai/cooling/W020171216542026703200.jpg" tppabs="http://image.tongshuai.com/tongshuai/cooling/W020171216542026703200.jpg" />
                                <div class="recommend-pro-info">
                                    <span class="pro-info-title">统帅中字五门BCD-415WLDCT</span>
                                    <span class="pro-info-type">BCD-415WLDCT</span>
                                    <span class="pro-info-price js_minPrice" sku_value=''>￥<span>5299</span></span>
                                </div>
                            </a>

                            <a class="o_u o_df_1-4 o_lg_1-3 o_md_1-2 o_sm_1-2 o_xs_1-2 o_df-hide" href="20171216_642.shtml.htm" tppabs="http://www.tongshuai.com/cooling/20171216_642.shtml">
                                <img src="../../image.tongshuai.com/tongshuai/cooling/W020171216542818469091.jpg" tppabs="http://image.tongshuai.com/tongshuai/cooling/W020171216542818469091.jpg" />
                                <div class="recommend-pro-info">
                                    <span class="pro-info-title">统帅中字五门BCD-415WLDCXU1</span>
                                    <span class="pro-info-type">BCD-415WLDCXU1</span>
                                    <span class="pro-info-price js_minPrice" sku_value=''>￥<span>5999</span></span>
                                </div>
                            </a>

                            <a class="o_u o_df_1-4 o_lg_1-3 o_md_1-2 o_sm_1-2 o_xs_1-2 o_df-hide" href="20171218_650.shtml.htm" tppabs="http://www.tongshuai.com/cooling/20171218_650.shtml">
                                <img src="../../image.tongshuai.com/tongshuai/cooling/W020171218517188303889.jpg" tppabs="http://image.tongshuai.com/tongshuai/cooling/W020171218517188303889.jpg" />
                                <div class="recommend-pro-info">
                                    <span class="pro-info-title">统帅中字五门BCD-480WLDCP</span>
                                    <span class="pro-info-type">BCD-480WLDCP</span>
                                    <span class="pro-info-price js_minPrice" sku_value=''>￥<span>5899</span></span>
                                </div>
                            </a>

                            <a class="o_u o_df_1-4 o_lg_1-3 o_md_1-2 o_sm_1-2 o_xs_1-2 o_df-hide" href="20171218_648.shtml.htm" tppabs="http://www.tongshuai.com/cooling/20171218_648.shtml">
                                <img src="../../image.tongshuai.com/tongshuai/cooling/W020171218510860864671.jpg" tppabs="http://image.tongshuai.com/tongshuai/cooling/W020171218510860864671.jpg" />
                                <div class="recommend-pro-info">
                                    <span class="pro-info-title">统帅中字五门静谧空间</span>
                                    <span class="pro-info-type">BCD-480WLDCYU1</span>
                                    <span class="pro-info-price js_minPrice" sku_value=''>￥<span>9999</span></span>
                                </div>
                            </a>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 精品推荐 END -->
        <!-- 背景间隔 -->
        <div class="o_g prolist-bg"></div>
        <!-- 背景间隔 END -->
        <!-- 产品对比 -->
        <div class="prolist-compare o_lg-hide o_md-hide o_sm-hide  o_xs-hide" style="display: none;" >
            <div class="compare-title">
                产品对比
                <div class="compare-spread js_compareBoxShow" data-show=0>
                    展开<i class="iconfont icon-arrow-line-up"></i>
                </div>
            </div>
            <ul class="compare-list">
                <div class="o_g js_compareBox">
                    <li class="o_u o_df_1-5 o_df-right compare-button-clear">
                        <div class="compare-link compareButton">
                            <a href="javascript:;" class="l-btn-sm l-btn-red">对比</a>
                        </div>
                        <div class="compare-link">
                            <a href="javascript:;" class="link-clear js_compareClose">清空对比栏</a>
                        </div>
                    </li>
                </div>
            </ul>
        </div>
        <!-- 产品对比 END -->
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
                            <a class="foot_link" href="../life/index.jsp" tppabs="http://www.tongshuai.com/life/">悠生活</a>
                            <a class="foot_link" href="../about/brand/index.jsp" tppabs="http://www.tongshuai.com/about/brand/">关于统帅</a>
                            <a class="foot_link" href="../about/news/index.jsp" tppabs="http://www.tongshuai.com/about/news/">新闻资讯</a>
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

                            <a class="foot_link" href="../televisions/index.jsp" tppabs="http://www.tongshuai.com/televisions/">电视</a>

                            <a class="foot_link" href="../laundry/index.jsp" tppabs="http://www.tongshuai.com/laundry/">洗衣机</a>

                            <a class="foot_link" href="../air_conditioners/index.jsp" tppabs="http://www.tongshuai.com/air_conditioners/">空调</a>

                            <a class="foot_link" href="index.jsp" tppabs="http://www.tongshuai.com/cooling/">冰箱</a>

                            <a class="foot_link" href="../freezer/index.jsp" tppabs="http://www.tongshuai.com/freezer/">冷柜</a>

                            <a class="foot_link" href="../water_heater/index.jsp" tppabs="http://www.tongshuai.com/water_heater/">热水器</a>

                            <a class="foot_link" href="../cooking_appliances/index.jsp" tppabs="http://www.tongshuai.com/cooking_appliances/">厨电</a>

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
                            <a href="../contact/index.jsp" tppabs="http://www.tongshuai.com/contact/">联系我们</a>
                        </li>
                        <li>
                            <a href="../service/help/index.jsp" tppabs="http://www.tongshuai.com/service/help/">帮助中心</a>
                        </li>
                        <li>
                            <a href="../terms/index.jsp" tppabs="http://www.tongshuai.com/terms/">服务条款</a>
                        </li>
                        <li>
                            <a href="../terms_conditions/index.jsp" tppabs="http://www.tongshuai.com/terms_conditions/">法律声明</a>
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
        <!-- 弹层-筛选项 -->
        <div class="o_g list-layer js_layerShowMore js_ignorAnimate">
            <div class="o_u o_df_5-12 o_md_4-12 o_sm_3-12 o_xs_2-12 layer-bg"></div>
            <div class="o_u o_df_7-12 o_md_8-12 o_sm_9-12 o_xs_10-12 layer-box">
                <div class="layer-tit">
                    筛选项
                    <a class="iconfont icon-close layer-close js_layerClose"></a>
                </div>
                <ul class="layer-list">

                </ul>
                <div class="layer-list-btn">
                    <a href="javascript:;" class="list-btn-reset">重置</a>
                    <a href="javascript:;" class="list-btn-finish js_layerClose">完成</a>
                </div>
            </div>
        </div>
        <!-- 弹层-筛选项 END -->

        <!-- 弹层-登录 -->
        <div class="login_bomb_box">


            <!--激活登录弹窗按钮添加class js_landBtn -->
            <div class="o_g land-shade js_landShades">
                <div class="land-box js_landContBox">
                    <div class="land-cont-title o_u">
                        <span class="o_u ">登录</span>
                        <a href="" class="o_u iconfont icon-close js_landClose"></a>
                    </div>
                    <div class="js_landType">
                        <div class="land-cont-type-normal o_u o_df_1-2 cur usual-login-select">普通登录</div>
                        <div class="land-cont-type-phone o_u o_df_1-2 mobile-login-select">手机动态密码登录</div>
                    </div>
                    <div class="js_landInputBox">
                        <div class="land-cont-normal-input o_g">
                            <form class="ui_validForm js-landFormPass">
                                <div class="o_g member-bingmob-list">
                                    <div class="o_u o_df_11-12  l-input  js-landInputBox">
                                        <input type="text" class="o_u o_df_2-2 o_lg_2-2 o_md_2-2 o_sm_2-2 o_xs_2-2  js-newMobile js-landUserIdInput" id="loginName" name="" ph="手机号 / 邮箱 / 用户名" value="" datatype="s6-16" maxlength="40" errormsg="<i class='iconfont icon-information-solid'></i>请输入正确的账号" nullmsg="<i class='iconfont icon-information-solid'></i>请输入账号" />
                                        <p class="Validform_checktip" id="loginName_error"></p>
                                    </div>
                                </div>
                                <div class="o_g member-bingmob-list">
                                    <div class="o_u o_df_11-12 l-input  js-landInputBox">
                                        <input type="text" class="o_u o_df_2-2 o_lg_2-2 o_md_2-2 o_sm_2-2 o_xs_2-2 js-landPasswordInput1" ph="密码" />
                                        <input type="password" id="pwd" class="o_u o_df_2-2 o_lg_2-2 o_md_2-2 o_sm_2-2 o_xs_2-2 land-password-hide   js-landPasswordInput2" name="userpassword" datatype="s6-16" maxlength="16" errormsg="<i class='iconfont icon-information-solid'></i>请输入6-16位密码" nullmsg="<i class='iconfont icon-information-solid'></i>请输入密码" />
                                        <p class="Validform_checktip" id="pwd_error"></p>
                                    </div>
                                </div>
                                <div class="o_g member-bingmob-list  verification-code-hide">
                                    <div class="l-input o_borderbox o_u o_df_11-12">
                                        <input type="text" id="sysCode" class="o_borderbox o_u o_df_2-2 o_lg_2-2 o_md_2-2 o_sm_2-2 o_xs_2-2" name="" ph="图形验证码" maxlength="4" />
                                        <!--<a href="javascript:;" class="exchange" id="exchange">换一换</a>   http://user.tongshuai.com/ids/casartePwd.code-->
                                        <a href="javascript:;" class="l-btn-sm l-btn-red l-btn-disable code"><img src="" id="verifyCode" /></a>
                                        <p class="Validform_checktip" id="sysCode_error"></p>

                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="land-cont-phone-input o_g">
                            <form class="ui_validForm js-landFormPhone">
                                <div class="o_g member-bingmob-list">
                                    <div class="o_u o_df_11-12  l-input  js-landInputBox">
                                        <input type="text" class="o_u o_df_2-2 o_lg_2-2 o_md_2-2 o_sm_2-2 o_xs_2-2 js-landPhone" id="mobile" name="" ph="手机号" value="" datatype="m" maxlength="11" errormsg="<i class='iconfont icon-information-solid'></i>请输入11位手机号码" nullmsg="<i class='iconfont icon-information-solid'></i>请在普通输入框填写信息" />
                                        <p class="Validform_checktip" id="mobile_error"></p>
                                    </div>
                                </div>
                                <div class="o_g member-bingmob-list">
                                    <div class="l-input o_borderbox o_u o_df_11-12">
                                        <input type="text" id="sysCode2" class="o_borderbox o_u o_df_2-2 o_lg_2-2 o_md_2-2 o_sm_2-2 o_xs_2-2" name="" ph="图形验证码" maxlength="4" />
                                        <!--<a href="javascript:;" class="exchange" id="exchange2">换一换</a>   http://user.tongshuai.com/ids/casartePwd.code-->
                                        <a href="javascript:;" class="l-btn-sm l-btn-red l-btn-disable code">
                                            <img src="" id="verifyCode2" /></a>
                                        <p class="Validform_checktip" id="sysCode2_error"></p>

                                    </div>
                                </div>
                                <div class="o_g member-bingmob-list">
                                    <div class="o_u o_df_11-12 l-input  js-landInputBox">
                                        <input type="text" class="o_u o_df_2-2 o_lg_2-2 o_md_2-2 o_sm_2-2 o_xs_2-2 js-landPhoneYanzheng" id="mobileCode" name="" ph="动态密码" value="" datatype="n6-6" maxlength="6" errormsg="<i class='iconfont icon-information-solid'></i>请输入6位验证码" nullmsg="<i class='iconfont icon-information-solid'></i>请输入6位验证码" />
                                        <a href="javascript:;" class="l-btn-sm l-btn-red l-btn-disable send-info-btn js-getinfo" id="sendCodeBtn">发送动态密码</a>
                                        <p class="Validform_checktip" id="mobileCode_error"></p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="land-cont-normal-btn o_g js_landUpdateBtn">
                        <!--l-btn-disable-->
                        <a href="javascript:;" class="l-btn-normal  l-btn-red o_u o_df_11-12 l-btn-disable  js-landUserPassBtn" id="loginBtn">登录</a>
                        <a href="javascript:;" class="l-btn-normal  l-btn-red o_u o_df_11-12 l-btn-disable  js-landPhoneInfoBtn" style="display: none" id="loginBtn2">登录</a>
                    </div>

                    <div class="land-cont-down">
                        <a class="o_u returnUrlReg" href="javascript:if(confirm('http://user.tongshuai.com/ids/ts/reg.jsp?regFrom=tongshuai&returnUrl=  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/ids/ts/reg.jsp?regFrom=tongshuai&returnUrl='" tppabs="http://user.tongshuai.com/ids/ts/reg.jsp?regFrom=tongshuai&returnUrl=">立即注册</a>
                        <a class="o_u returnUrlForget" href="javascript:if(confirm('http://user.tongshuai.com/ids/ts/password_find.jsp?regFrom=tongshuai&returnUrl=  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/ids/ts/password_find.jsp?regFrom=tongshuai&returnUrl='" tppabs="http://user.tongshuai.com/ids/ts/password_find.jsp?regFrom=tongshuai&returnUrl=">忘记密码</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--弹出层2-->
<div class="pop-up2 js_popUpBox2">
    <span class="iconfont icon-check-mark-solid pop-up2_true js_popUpTrue"></span>
    <span class="iconfont icon-close pop-up2_false  js_popUpFales"></span>
    <span class="iconfont icon-information-solid  pop-up2_warn  js_popUpWarn"></span>
    <p class="o_u  js_popUpText"></p>
</div>
<!--end弹出层2-->
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
<script>
    var table_name ="v_leader_bingxiang";
</script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/validform_v5.3.2_min.js" tppabs="http://image.tongshuai.com/tongshuai/images/validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/swiper-3.4.2.jquery.min.js" tppabs="http://image.tongshuai.com/tongshuai/images/swiper-3.4.2.jquery.min.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/templet_pagination.js" tppabs="http://image.tongshuai.com/tongshuai/images/templet_pagination.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/templet_login_bomb_box.js" tppabs="http://image.tongshuai.com/tongshuai/images/templet_login_bomb_box.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/templet_product_list_template.js" tppabs="http://image.tongshuai.com/tongshuai/images/templet_product_list_template.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/templet_product_list.js" tppabs="http://image.tongshuai.com/tongshuai/images/templet_product_list.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/templet_product_list_compare.js" tppabs="http://image.tongshuai.com/tongshuai/images/templet_product_list_compare.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/product_list.js" tppabs="http://image.tongshuai.com/tongshuai/images/product_list.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/query_product_price.js" tppabs="http://image.tongshuai.com/tongshuai/images/query_product_price.js"></script>
<script>

    var template_url="index.htm"/*tpa=http://www.tongshuai.com/cooling/*/
    var chnlid_owner ='61';
    cur();
    //var pagehtml = createPageHTMLS(1, "INDEX", "SHTML",4,7);
    //if(undefined != pagehtml ){$(".leader_pager").html(pagehtml);}
    //paginationInit( 0,1,24,".product-listpage.pageMax",8,"INDEX","SHTML");

    //PC端分页
    var pager = new pagination(".product-listpage.pageMax");
    pager.currPage = 0+1;
    pager.totalPage = 1;
    pager.pageCount = 24;
    pager.showPageCount = 8;
    pager.render();
    //重写click方法  ajax取数据
    pager.onclick = function (currPageT) {
        /* pager.totalPage = pageCount;
         pager.currPage = currPageT;
         pager.pageCount = pageSize;
         pager.showPageCount = showPageNo;
         pager.render();*/
        if((currPageT-1)==0){
            window.location.href="INDEX"+".SHTML";
        }else{
            window.location.href="INDEX"+"_"+(currPageT-1)+".SHTML";
        }
    };
    //SM端分页
    var pager = new pagination(".product-listpage.pageMiddle");
    pager.currPage = 0+1;
    pager.totalPage = 1;
    pager.pageCount = 24;
    pager.showPageCount = 6;
    pager.render();
    //重写click方法  ajax取数据
    pager.onclick = function (currPageT) {
        /* pager.totalPage = pageCount;
         pager.currPage = currPageT;
         pager.pageCount = pageSize;
         pager.showPageCount = showPageNo;
         pager.render();*/
        if((currPageT-1)==0){
            window.location.href="INDEX"+".SHTML";
        }else{
            window.location.href="INDEX"+"_"+(currPageT-1)+".SHTML";
        }

    };
    //XS端分页
    var pager = new pagination(".product-listpage.pageMobile");
    pager.currPage = 0+1;
    pager.totalPage = 1;
    pager.pageCount = 24;
    pager.showPageCount = 3;
    pager.render();
    //重写click方法  ajax取数据
    pager.onclick = function (currPageT) {
        /* pager.totalPage = pageCount;
         pager.currPage = currPageT;
         pager.pageCount = pageSize;
         pager.showPageCount = showPageNo;
         pager.render();*/
        if((currPageT-1)==0){
            window.location.href="INDEX"+".SHTML";
        }else{
            window.location.href="INDEX"+"_"+(currPageT-1)+".SHTML";
        }
    };

</script>



</body>
</html>
