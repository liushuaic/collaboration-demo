<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/20
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset=utf-8"UTF-8">
    <title>法律声明 - 统帅官网</title>
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
                        <a href="../cooling/index.jsp" tppabs="http://www.tongshuai.com/cooling/">
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
                <a href="../service/installation_and_maintenance/index.jsp" tppabs="http://www.tongshuai.com/service/installation_and_maintenance">在线报修</a>
                <!--<a href="http://user.tongshuai.com/product_registe">产品注册</a>-->
                <a href="../service/help/index.jsp" tppabs="http://www.tongshuai.com/service/help">帮助中心</a>
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
            <a href="../cooling/index.jsp" tppabs="http://www.tongshuai.com/cooling/">
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
<div class="service_term_titlebox">
    <p class="service_term_title">法律声明</p>
</div>
<div class="service_term_contentbox">
    <p class="service_term_content">本网站为海尔集团拥有、管理和维护。使用本网站前请您仔细阅读以下条款，使用本网站则表明您已明知并接受这些条款，如果不接受这些条款请不要使用本网站。</p>
    <p class="service_term_smalltitle">1、网站使用</p>
    <p class="service_term_content">统帅网站（以下简称“本站”）上的内容，仅供您个人而非商业使用。对于内容中所含的版权和其他所有权声明，您应予以尊重并在其副本中予以保留。如果网站内容无权利声明，并不代表网站对其不享有权利，也不意味着网站不主张权利，您应根据诚信原则尊重该等内容的合法权益并进行合法使用。您不得以任何方式修改、复制、公开展示、公布或分发这些材料或者以其他方式把它们用于任何公开或商业目的。禁止以任何目的把这些材料用于其他任何网站或其他平面媒体或网络计算机环境。本站上的内容及编辑等形式均受版权法等法律保护，任何未经授权的使用都可能构成对版权、商标和其他法律权利的侵犯。如果您不接受或违反上述约定，您使用本站的授权将自动终止，同时您应立即销毁任何已下载或打印好的本站内容。</p>
    <p class="service_term_smalltitle">2、信息发布</p>
    <p class="service_term_content">本站的信息按原样提供，不附加任何形式的保证，包括适销性、适合于特定目的或不侵犯知识产权的保证。此外，统帅网站也不保证本站信息的绝对准确性和绝对完整性。统帅网站中的内容或在这些内容中介绍的产品、价格和配置等会随时变更，恕不另行通知。本站中的内容也可能已经过期，统帅网站不承诺更新他们。本站发布的信息可能是在您本地尚不能得到的产品、程序或服务，您可向当地的统帅网站联系人和经销商咨询。</p>
    <p class="service_term_smalltitle">3、用户提交材料</p>
    <p class="service_term_content">除个人识别信息，其他任何您发送或邮寄给本站的材料、信息或联系方式(以下统称信息)均将被视为非保密和非专有。统帅网站将对这些信息不承担任何义务。同时您的提交行为如果没有特别声明时，可视为同意（或授权）：统帅网站及其授权人将可因商业或非商业的目的自由复制、透露、分发、合并和以其他方式利用这些信息和所有数据、图像、声音、文本及其他内容。您对本站的使用不得违背法律法规及公众道德，不得向或从本站邮寄或发送任何非法、威胁、诽谤、中伤、淫秽、色情或其他可能违法的材料。若相关人对此信息的内容及影响提出确有证据的警告或异议，本站可随时删除该等信息或无限时中止该信息的网上浏览，而不必事先取得提交者的同意，亦无义务事后通知提交者，情况严重的，本站可采取注销该用户的措施。</p>
    <p class="service_term_smalltitle">4、用户交流内容</p>
    <p class="service_term_content">统帅网站不负监控或审查用户在本站上发送或邮寄的信息或相互之间单独交流的任何领域信息的责任，包括但不限于交谈室、公告牌或其他用户论坛以及任何交流内容。统帅网站对有关任何这类交流的内容不承担任何责任，无论它们是否会引起诽谤、隐私、淫秽或其它方面的问题。统帅网站保留在发现时删除包含被视为侮辱、诽谤、淫秽或其它不良内容的信息消息的权利。</p>
    <p class="service_term_smalltitle">5、软件使用</p>
    <p class="service_term_content">如果您从本站下载软件，在使用软件时要遵守该软件携带的软件许可协议中所有的许可条款。在您阅读并接受软件许可协议的各项条款之前，不得下载或安装这一软件。</p>
    <p class="service_term_smalltitle">6、第三方网站</p>
    <p class="service_term_content">本站到第三方网站的链接仅作为一种方便服务提供给您。如果使用这些链接，您将离开本站。统帅网站对这些网站及其内容不进行控制，也不负任何责任。如果您决定访问任何与本站链接的第三方网站，其可能带来的结果和风险全部由您自己承担。</p>
    <p class="service_term_smalltitle">7、责任限度</p>
    <p class="service_term_content">统帅网站及其供应商或本站中提到的第三方对任何损害概不负责（包括但不限于由损失的利润、损失的数据或业务中断而造成的损害），无论这些损害是否由于使用、不能使用本站的结果、连到本站的任何Web网站或者任何这类网站中包含的信息所引起（包括但不限于由损失的利润、损失的数据或业务中断而造成的损害），也不管它们是否有保证、合同、侵权行为或任何其它法律根据以及事前已得到这类损害可能发生的消息。如果您由于使用本站的信息导致需要对设备或数据进行维护、修理或纠正，您也必须承担由此而造成的所有费用。</p>
    <p class="service_term_smalltitle">8、国际用户</p>
    <p class="service_term_content">该网站由海尔中国青岛总部的办公室进行控制、操作和管理。海尔不保证该网站上的资料适用于或可用于中国之外的其它地点，以及您能够从资料内容被视为非法的区域取阅这些资料。您不得违背中国出口法规使用网站或出口资料。如果您从中国之外的地点访问该网站，则您有责任遵守所有当地法律。这些使用条款和条件受中国法律管辖，且和其法律条文不相抵触。</p>
    <p class="service_term_smalltitle">9、更改</p>
    <p class="service_term_content">统帅网站可能随时修改这些条款，您应经常访问本页面以了解当前的条款，这些条款的某些条文也可能被本站中某些页面上明确指定的法律通告或条款所取代。统帅网站可随时终止、更改、暂停或中止该网站的任何方面，包括该网站任何特性的可用性。统帅网站还可未做事先通知且不承担责任对某些特征和服务加以限制或限制您访问网站的某些部分或全部。统帅网站可终止上述授权、权利和许可，您应在此类终止时立即销毁所有资料。</p>
    <p class="service_term_smalltitle">10、因本公告或使用本网站所发生的争议适用中华人民共和国法律。</p>
    <p class="service_term_smalltitle">11、因本公告或使用本网站发生争议，应当协商解决，协商不成的，由青岛市人民法院诉讼解决。</p>
    <p class="service_term_smalltitle">12、本公告的解释权及对本网站使用的解释权归结于统帅网站。</p>


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

                    <a class="foot_link" href="../cooling/index.jsp" tppabs="http://www.tongshuai.com/cooling/">冰箱</a>

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
                    <a class="foot_link" href="../service/Instructions/index.jsp" tppabs="http://www.tongshuai.com/service/Instructions/">使用手册下载</a>
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
                    <a href="index.jsp" tppabs="http://www.tongshuai.com/terms_conditions/">法律声明</a>
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
