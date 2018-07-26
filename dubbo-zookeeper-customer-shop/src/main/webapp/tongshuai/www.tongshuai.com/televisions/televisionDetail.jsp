<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/21
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset=utf-8"UTF-8">
    <title>【统帅T55FUA】统帅人工智能电视 介绍_价格_规格_参数 - 统帅官网</title>
    <meta name="keywords" content='【统帅T55FUA】统帅人工智能电视 介绍_价格_规格_参数 - 统帅官网' />
    <meta name="description" content='【统帅T55FUA】统帅人工智能电视 介绍_价格_规格_参数 - 统帅官网' />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=10;IE=9; IE=8; IE=7; IE=EDGE">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/images/iconfont.css" tppabs="http://image.tongshuai.com/images/iconfont.css">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/images/l_base.css" tppabs="http://image.tongshuai.com/images/l_base.css">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/images/l_module.css" tppabs="http://image.tongshuai.com/images/l_module.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"/>
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
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/tongshuai/images/product_detail.css" tppabs="http://image.tongshuai.com/tongshuai/images/product_detail.css">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/tongshuai/images/myShare.css" tppabs="http://image.tongshuai.com/tongshuai/images/myShare.css">
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
        <!-- 导航锚点定位-顶部 -->
        <div class="js_top"></div>
        <!-- 导航锚点定位-顶部 End -->

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
                                <a href="index.jsp" tppabs="http://www.tongshuai.com/televisions/">
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

                    </ul>
                </div>
                <!-- <div class="o_u o_df_2-12 o_xs_1-12"></div> -->
            </ul>
            <!-- 搜索结果：大屏 END -->

            <!-- 二级导航 冰箱/洗衣机/电视 -->
            <ul class="o_u o_df_2-2 nav-second o_df-center js_column_show">

                <li class="second-column o_df-center">
                    <a href="index.jsp" tppabs="http://www.tongshuai.com/televisions/">
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
        <!-- 导航锚点定位-导航 -->
        <div class="js_navPos"></div>
        <!-- 导航锚点定位-导航 End -->

        <!-- 详情页导航 -->
        <div class="detail-nav-height">
            <div class="o_g o_md-hide o_sm-hide o_xs-hide detail-nav js_detailNav">
                <div class="o_u o_df_1-12"></div>
                <div class="o_u o_df_5-6">
                    <div class="detail-nav-head">
                        <div class="nav-head-con">
                            <img src="images/P020170925572468483553.png" tppabs="http://www.tongshuai.com/televisions/images/P020170925572468483553.png"/>
                            <div class="nav-head-info">
                                <div class="head-info-titcn">
                                    <div class="head-info-box">
                                        电视
                                        <i class="iconfont icon-arrow-line-down"></i>
                                        <i class="iconfont icon-arrow-line-up"></i>
                                    </div>
                                    <!-- <div class="head-info-hover">
                                        <div class="l-float-tops">
                                            <div class="float_content">
                                                <a href="javascript:;">特性</a>
                                                <a href="javascript:;">设计</a>
                                                <a href="javascript:;">参数</a>
                                                <a href="javascript:;">口碑(888)</a>
                                                <a href="javascript:;">优惠组合</a>
                                                <a href="javascript:;">配送与服务</a>
                                            </div>
                                            <p>
                                                <i></i>
                                            </p>
                                        </div>
                                    </div> -->
                                </div>
                                <div class="head-info-titen">${pro.seotitle}</div>
                            </div>
                        </div>
                        <ul class="float-list">
                            <div class="triangle"></div>

                            <li>
                                <a href="index.jsp" tppabs="http://www.tongshuai.com/televisions/">
                                    <img src="images/P020170925572468483553.png" tppabs="http://www.tongshuai.com/televisions/images/P020170925572468483553.png"/>
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
                                <a href="../cooling/index.jsp" tppabs="http://www.tongshuai.com/cooling/">
                                    <img src="../cooling/images/P020170925571335610145.png" tppabs="http://www.tongshuai.com/cooling/images/P020170925571335610145.png"/>
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
                    <div class="o_u detail-nav-info">
                        <div class="nav-info-box js_navLink">
                            <a class="nav-type active" data-nav="js_features">特性<div class="line"></div></a>
                            <a class="nav-type" data-nav="js_design">设计<div class="line"></div></a>
                            <a class="nav-type" data-nav="js_params">参数<div class="line"></div></a>
                            <a class="nav-type js_comment"  href="javascript:;">口碑(<span></span>)<div class="line"></div></a>
                            <!--<a class="nav-type" data-nav="js_favourable">优惠组合<div class="line"></div></a>-->
                            <!-- <a class="nav-type" href="javascript:;">配送与服务<div class="line"></div></a>-->
                            <a class="l-btn-sm l-btn-red nav-btn js_buyNow" data-nav="js_top">立即购买</a>
                        </div>
                    </div>
                </div>
                <div class="o_df_1-12"></div>
            </div>
            <div class="o_g o_df-hide o_md-show o_sm-show o_xs-show detail-nav js_detailNav">
                <div class="o_u o_df_2-2">
                    <div class="detail-nav-head">
                        <div class="nav-head-list js_navfloatHover">
                            <i class="iconfont icon-menu-solid nav-head-icon"></i>
                            <a class="head-list-type">${pro.seotitle}</a>
                            <div class="head-info-hover">
                                <div class="l-float-tops">
                                    <div class="float_content js_navLink">
                                        <a href="javascript:;" data-nav="js_features">特性</a>
                                        <a href="javascript:;" data-nav="js_design">设计</a>
                                        <a href="javascript:;" data-nav="js_params">参数</a>
                                        <a class="js_comment" href="javascript:;">口碑(<span></span>)</a>
                                        <!--<a href="javascript:;" data-nav="js_favourable">优惠组合</a>-->
                                        <!--<a href="javascript:;">配送与服务</a>-->
                                    </div>
                                    <p>
                                        <i></i>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="o_u detail-nav-info">
                        <div class="nav-info-box js_navLink">
                            <a class="l-btn-sm l-btn-red nav-btn js_buyNow" data-nav="js_top" href="javascript:;">立即购买</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 详情页导航 END -->
        <!-- 首屏展示 -->
        <div class="o_g ">
            <div class="detail-first">
                <!-- <img class="o_picture" src="" df="images/ignore_prodetail1.jpg" xs="images/ignore_prodetail2.jpg" sm="images/ignore_prodetail2.jpg" md="images/ignore_prodetail2.jpg" alt="" /> -->
                <div class="detail-banner">
                    <!-- 中间 -->
                    <div class="banner-pro">
                        <div class="banner-block">
                            <div class="banner-pro-pic">

                                <img src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" df="http://image.tongshuai.com/tongshuai/televisions/W020171213520502137136.png" class="banner-pro-img js_specificsShow js_recPic" />

                                <div class="banner-pro-oppo o_df-hide o_xs-show">
                                    <div class="activity-icon js_detailCollect"data-productId="619" data-mdm="60000AM64" data-channelName="电视产品">
                                        <div class="icon-font">
                                            <i class="iconfont icon-star-solid"></i>
                                        </div>
                                        <span class="icon-font-info">收藏</span>
                                    </div>
                                    <!--<div class="activity-icon">
                                        <div class="icon-font">
                                            <i class="iconfont icon-price-tag-solid1"></i>
                                        </div>
                                        <span class="icon-font-info">订阅</span>
                                    </div>-->
                                    <div class="activity-icon">
                                        <div class="icon-font">
                                            <i class="iconfont icon-share-solid"></i>
                                        </div>
                                        <span class="icon-font-info">分享</span>
                                        <!-- JiaThis Button BEGIN -->
                                        <div class="l-float activity-float">
                                            <div class="float-box float-blog shareBtn_sinaAct">
                                                <a class=""></a>
                                            </div>
                                            <div class="float-box float-wechat shareBtn_wechatAct">
                                                <a class=""></a>
                                            </div>
                                            <div class="float-box float-qq shareBtn_qzoneAct">
                                                <a class=""></a>
                                            </div>
                                        </div>
                                        <!-- JiaThis Button END -->
                                    </div>
                                </div>
                            </div>
                            <!-- 首屏细节大图 详情弹层 -->
                            <div class="detail-specifics js_specificsBoxShow">
                                <!-- 新增：背景5线 -->
                                <div class="o_g detail-specifics-bg">
                                    <div class="line-box"><div class="line"></div></div>
                                    <div class="line-box"><div class="line"></div></div>
                                    <div class="line-box"><div class="line"></div></div>
                                    <div class="line-box o_xs-hide"><div class="line"></div></div>
                                    <div class="line-box o_xs-hide"><div class="line"></div></div>
                                </div>
                                <!-- 新增：背景5线 END -->
                                <!-- 关闭按钮 -->
                                <div class="specifics-close js_bannerSwiperClose">
                                    <i class="iconfont icon-fail-solid"></i>
                                </div>
                                <!-- 关闭按钮 END -->
                                <!-- 轮播 -->
                                <div class="swiper-container js_bannerSwiper">
                                    <div class="swiper-wrapper">

                                        <div class="swiper-slide swiper-slide-active">
                                            <a href="javascript:;">
                                                <img src="../../image.tongshuai.com/tongshuai/televisions/W020171214534602112438.png" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171214534602112438.png" />
                                            </a>
                                        </div>



                                        <div class="swiper-slide">
                                            <a href="javascript:;">
                                                <img src="../../image.tongshuai.com/tongshuai/televisions/W020171214534602395392.jpg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171214534602395392.jpg" />
                                            </a>
                                        </div>

                                        <div class="swiper-slide">
                                            <a href="javascript:;">
                                                <img src="../../image.tongshuai.com/tongshuai/televisions/W020171214534602671953.jpg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171214534602671953.jpg" />
                                            </a>
                                        </div>

                                        <div class="swiper-slide">
                                            <a href="javascript:;">
                                                <img src="../../image.tongshuai.com/tongshuai/televisions/W020171214534602878378.jpg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171214534602878378.jpg" />
                                            </a>
                                        </div>

                                        <div class="swiper-slide">
                                            <a href="javascript:;">
                                                <img src="../../image.tongshuai.com/tongshuai/televisions/W020171214534603075555.jpg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171214534603075555.jpg" />
                                            </a>
                                        </div>

                                        <div class="swiper-slide">
                                            <a href="javascript:;">
                                                <img src="../../image.tongshuai.com/tongshuai/televisions/W020171215551807693245.jpg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171215551807693245.jpg" />
                                            </a>
                                        </div>


                                    </div>
                                </div>
                                <!-- 轮播 END -->
                                <!-- 分页 -->
                                <div class="swiper-pagination js_bannerSwiperPage">

                                    <div class="pagination-box" data-index="0">
                                        <img src="../../image.tongshuai.com/tongshuai/televisions/W020171214534602112438.png" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171214534602112438.png" />
                                    </div>


                                    <div class="pagination-box" data-index=1>
                                        <img src="../../image.tongshuai.com/tongshuai/televisions/W020171214534602395392.jpg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171214534602395392.jpg" />
                                    </div>

                                    <div class="pagination-box" data-index=2>
                                        <img src="../../image.tongshuai.com/tongshuai/televisions/W020171214534602671953.jpg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171214534602671953.jpg" />
                                    </div>

                                    <div class="pagination-box" data-index=3>
                                        <img src="../../image.tongshuai.com/tongshuai/televisions/W020171214534602878378.jpg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171214534602878378.jpg" />
                                    </div>

                                    <div class="pagination-box" data-index=4>
                                        <img src="../../image.tongshuai.com/tongshuai/televisions/W020171214534603075555.jpg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171214534603075555.jpg" />
                                    </div>

                                    <div class="pagination-box" data-index=5>
                                        <img src="../../image.tongshuai.com/tongshuai/televisions/W020171215551807693245.jpg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171215551807693245.jpg" />
                                    </div>

                                </div>
                                <!-- 分页 END -->
                                <!-- 上一页/下一页 -->
                                <div class="pagination-prev js_bannerSwiperPrev">
                                    <i class="iconfont icon-arrow-line-left"></i>
                                </div>
                                <div class="pagination-next js_bannerSwiperNext">
                                    <i class="iconfont icon-arrow-line-right"></i>
                                </div>
                                <!-- 上一页/下一页 END -->
                            </div>
                        </div>

                        <div class="banner-pro-pic banner-pro-title">
                            <div class="banner-pro-tit" id="title1"></div>
                            <div class="banner-pro-sub" id="title2"></div>
                            <div class="banner-pro-info" id="title3"></div>
                        </div>
                        <!-- 右边 -->
                        <div class="banner-particulars">
                            <div class="particulars-browse o_md-hide o_sm-hide o_xs-hide js_specificsShow">
                                <span>浏览产品细节图</span>
                                <div class="particulars-browse-icon">
                                    <i class="iconfont icon-photo-solid"></i>
                                </div>
                            </div>
                            <div class="particulars-detail">

                                <div class="corrent-price js_price"><sub>￥</sub><span id="price"></span></div>

                                <div class="particulars-delivery">
                                    <div class="delivery-address js-delivery-address">
                                        <%--<span style="color:#ccc;margin-right:5px;">[无货]</span>--%>
                                        <span style="margin-right:60px;" >剩余:<font color="red" id="stock"></font>件</span>
                                    </div>
                                   <%-- <div class="delivery-time">
                                        <span>有货</span>
                                        <span>，预计</span>
                                        <span>02月89日（周五）22点送达</span>
                                    </div>--%>
                                </div>
                                <div class="particulars-btn">
                                   <%-- <a href="javascript:toCart();">加入购物车</a>--%>
                                    <input type="button" style="background-color:red;width:120px;height: 40px" value="加入购物车" onclick="toCart()"/>
                                </div>
                                <div class="particulars-box">
                                    <!--购买pc-->
                                    <div class="o_md-hide o_sm-hide o_xs-hide particulars-buy-tit">
                                        <div class="tit_shop js_shopBuy">
                                            品牌旗舰店购买：
                                        </div>
                                        <div class="tit_sell">
                                            <!--<i class="iconfont icon-code"></i>-->
                                            <img src="../../image.tongshuai.com/tongshuai/images/icon_pic.png" tppabs="http://image.tongshuai.com/tongshuai/images/icon_pic.png" class="icon_pic_detail" />
                                            <p class="sell_title">手机购买</p>
                                            <div class="l-float-top">
                                                <img src="" class="js_proTwoCode" />
                                                <p></p><i></i>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                    <!--购买移动-->
                                    <div class="o_df-hide o_md-show o_sm-show o_xs-show particulars-buy-tit">
                                        <div class="tit_sell">
                                            <!--<i class="iconfont icon-code"></i>-->
                                            <img src="../../image.tongshuai.com/tongshuai/images/icon_pic.png" tppabs="http://image.tongshuai.com/tongshuai/images/icon_pic.png" class="icon_pic_detail" />
                                            <p class="sell_title">手机购买</p>
                                            <div class="l-float-top">
                                                <img src="" class="js_proTwoCode" />
                                                <p></p><i></i>
                                            </div>
                                        </div>
                                        <div class="tit_shop js_shopBuy">
                                            品牌旗舰店购买：
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                    <div class="particulars-buy-con js_shopBuy">
                                        <!---->



                                        <!---->



                                        <!---->



                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 左边 -->
                        <div class="banner-activity">
                            <div class="activity-icon-box o_md-hide o_sm-hide o_xs-hide">
                                <div class="activity-icon js_detailCollect" data-productId="630" data-mdm="600000MXE" data-channelName="电视产品">
                                    <div class="icon-font">
                                        <i class="iconfont icon-star-solid"></i>
                                    </div>
                                    <span class="icon-font-info">收藏</span>
                                </div>

                                <div class="activity-icon">
                                    <div class="icon-font">
                                        <i class="iconfont icon-share-solid"></i>
                                    </div>
                                    <span class="icon-font-info">分享</span>
                                    <!-- JiaThis Button BEGIN -->
                                    <div class="l-float activity-float">
                                        <div class="float-box float-blog jiathis_style_32x32">
                                            <a class="jiathis_button_tsina"></a>
                                        </div>
                                        <div class="float-box float-wechat jiathis_style_32x32">
                                            <a class="jiathis_button_weixin"></a>
                                        </div>
                                        <div class="float-box float-qq jiathis_style_32x32">
                                            <a class="jiathis_button_qzone"></a>
                                        </div>
                                    </div>
                                    <!-- JiaThis Button END -->
                                </div>
                                <div class="activity-icon activity-icon-compare js_compareAddProduct" auto=""
                                     id="compare_630_top"
                                     data-id="compare_630_top"
                                     data-link="http://www.tongshuai.com/televisions/20171214_630.shtml"
                                     data-thumb="http://image.tongshuai.com/tongshuai/televisions/W020171214534602112438.png"
                                     data-name="统帅随心享"
                                     data-type="T55FUK"
                                     data-price="4399"
                                     data-chnid="94">
                                    <div class="icon-font">
                                        <i class="iconfont icon-contrast-solid"></i>
                                    </div>
                                    <span class="icon-font-info">对比</span>
                                </div>
                            </div>
                            <!-- <div class="activity-box">
                                <div class="activity-con">
                                    <div class="activity-con-tit">
                                        清爽大作战，统帅小清新
                                    </div>
                                    <div class="activity-con-sub">
                                        7月31日-8月20日
                                    </div>
                                    <div class="activity-con-info">
                                        套购满减最高3000，满减赠扫地机器人
                                    </div>
                                </div>
                                <div class="activity-con-small">
                                    【统帅天猫旗舰店】周年庆满减大奖有好礼
                                </div>
                            </div> -->
                        </div>
                        <!-- 左边 md sm xs-->
                        <div class="banner-activity banner-activity-md o_df-hide o_md-show o_sm-show">
                            <div class="activity-icon-box">
                                <div class="activity-icon js_detailCollect" data-productId="630" data-mdm="600000MXE" data-channelName="电视产品">
                                    <div class="icon-font">
                                        <i class="iconfont icon-star-solid"></i>
                                    </div>
                                    <span class="icon-font-info">收藏</span>
                                </div>
                                <!--<div class="activity-icon">
                                    <div class="icon-font">
                                        <i class="iconfont icon-price-tag-solid1"></i>
                                    </div>
                                    <span class="icon-font-info">订阅</span>
                                </div>-->
                                <div class="activity-icon">
                                    <div class="icon-font">
                                        <i class="iconfont icon-share-solid"></i>
                                    </div>
                                    <span class="icon-font-info">分享</span>
                                    <!-- JiaThis Button BEGIN -->
                                    <div class="l-float activity-float">
                                        <div class="float-box float-blog jiathis_style_32x32">
                                            <a class="jiathis_button_tsina"></a>
                                        </div>
                                        <div class="float-box float-wechat jiathis_style_32x32">
                                            <a class="jiathis_button_weixin"></a>
                                        </div>
                                        <div class="float-box float-qq jiathis_style_32x32">
                                            <a class="jiathis_button_qzone"></a>
                                        </div>
                                    </div>
                                    <!-- JiaThis Button END -->
                                </div>
                                <div class="activity-icon activity-icon-compare">
                                    <div class="icon-font">
                                        <i class="iconfont icon-contrast-solid"></i>
                                    </div>
                                    <span class="icon-font-info">对比</span>
                                </div>
                            </div>
                        </div>
                        <!-- 右边 md sm xs-->
                        <div class="banner-particulars banner-particulars-md o_df-hide o_md-show o_sm-show o_xs-show">
                            <div class="particulars-browse js_specificsShow">
                                <span>浏览产品细节图</span>
                                <div class="particulars-browse-icon">
                                    <i class="iconfont icon-photo-solid"></i>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <!-- 首屏展示 END -->
        <!-- 导航锚点定位-特性 -->
        <div class="js_features"></div>
        <!-- 导航锚点定位-特性 End -->
        <!-- 文字卖点 -->
        <div class="detail-fontpoint-index">
            <div class="o_g o_md-hide o_sm-hide o_xs-hide detail-fontpoint-top">
                <div class="o_u o_df_1-12"></div>
                <div class="o_u o_df_10-12 o_df-center">
                    <div class="o_u o_df_2-2 detail-fontpoint">
                        <div class="o_u o_df_1-12"></div>
                        <div class="o_u o_df_10-12 o_df-center">
                            <!--冰箱-->

                            <!--空调-->

                            <!--滚筒洗衣机-->

                            <!--波轮洗衣机-->

                            <!--电热水器-->

                            <!--燃气热水器-->

                            <!--空气能热水器-->

                            <!--吸油烟机-->

                            <!--燃气灶-->

                            <!--冷柜-->

                            <!--电视-->

                            <div class="o_u o_df_1-5">
                                <div class="fontpoint-box">
                                    <div class="fontpoint-bold" id="a2"></div>
                                    <div class="fontpoint-small">产品尺寸</div>
                                </div>
                            </div>
                            <div class="o_u o_df_1-5">
                                <div class="fontpoint-box">
                                    <div class="fontpoint-bold" id="a1"></div>
                                    <div class="fontpoint-small">颜色</div>
                                </div>
                            </div>
                            <div class="o_u o_df_1-5">
                                <div class="fontpoint-box border-none">
                                    <div class="fontpoint-bold" id="a3"></div>
                                    <div class="fontpoint-small">分辨率</div>
                                </div>
                            </div>

                        </div>
                        <div class="o_u o_df_1-12"></div>
                    </div>
                    <div class="o_u o_df_2-2 detail-fontpoint-bottom js_pointText">

                    </div>
                </div>
                <div class="o_u o_df_1-12"></div>
            </div>
            <div class="o_g detail-fontpoint-back o_df-hide o_md-show o_sm-show o_xs-show">
                <div class="detail-fontpoint">
                    <div class="swiper-container js_fontSwiper">
                        <div class="swiper-wrapper">


                            <div class="swiper-slide">
                                <div class="fontpoint-box">
                                    <div class="fontpoint-bold">${pro.attributevalue2}</div>
                                    <div class="fontpoint-small">产品尺寸</div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="fontpoint-box">
                                    <div class="fontpoint-bold">${pro.attributevalue1}</div>
                                    <div class="fontpoint-small">颜色</div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="fontpoint-box">
                                    <div class="fontpoint-bold">${pro.attributevalue3}</div>
                                    <div class="fontpoint-small">分辨率</div>
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="swiper-prev js_fontSwiperPrev">
                        <i class="iconfont icon-arrow-jiantou-left"></i>
                    </div>
                    <div class="swiper-next js_fontSwiperNext">
                        <i class="iconfont icon-arrow-jiantou-right"></i>
                    </div>
                </div>
                <div class="o_u o_df_2-2 detail-fontpoint-bottom o_df-hide o_md-show o_sm-show o_xs-show js_pointText">

                </div>
            </div>
            <div class="o_clear"></div>
        </div>
        <!-- 文字卖点 END -->
        <!-- 场景展示 -->

        <!-- 场景展示 -->
        <!-- 导航锚点定位-设计 -->
        <div class="js_design"></div>
        <!-- 导航锚点定位-设计 End -->
        <!-- 核心卖点-->
        <div class="o_g">
            <!---->



        </div>
        <!-- 核心卖点 -->
        <!-- 详情展示 -->
        <div class="o_g">
            <div class="o_u o_df_1-12"></div>
            <div class="o_u o_df_10-12">
                <div class="detail-display">
                    <div class="view TRS_UEDITOR trs_paper_default"><div style="margin:0;font-size: 0;"><div class="picbox" style="display: inline-block;width: 50%;padding-bottom: 30px;"><div class="pr_0" style="display: inline-block;padding-right: 15px;"><img class="ue_t" src="../../image.tongshuai.com/tongshuai/televisions/W020171226543926107435.jpeg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171226543926107435.jpeg" style="width: 100%;" title="1200_800-1.jpeg" alt="1200_800-1.jpeg" OLDSRC="W020171226543926107435.jpeg" /><img class="ue_t pt_10" src="../../image.tongshuai.com/tongshuai/televisions/W020171226543926475539.jpeg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171226543926475539.jpeg" style="display: inline-block;padding-top: 30px;width: 100%;" title="1200_600.jpeg" alt="1200_600.jpeg" OLDSRC="W020171226543926475539.jpeg" /></div></div><div class="picbox" style="display: inline-block;width: 50%;padding-bottom: 30px;"><div class="pl_0" style="display: inline-block;padding-left: 15px;"><img class="ue_t" src="../../image.tongshuai.com/tongshuai/televisions/W020171226543926601558.jpeg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171226543926601558.jpeg" style="width: 100%;" title="1200_600-2.jpeg" alt="1200_600-2.jpeg" OLDSRC="W020171226543926601558.jpeg" /><img class="ue_t pt_10" src="../../image.tongshuai.com/tongshuai/televisions/W020171226543926728797.jpeg" tppabs="http://image.tongshuai.com/tongshuai/televisions/W020171226543926728797.jpeg" style="display: inline-block;width: 100%;padding-top: 30px;" title="1200_800-2.jpeg" alt="1200_800-2.jpeg" OLDSRC="W020171226543926728797.jpeg" /></div></div></div><p><br/></p></div>
                </div>
            </div>
            <div class="o_u o_df_1-12"></div>
        </div>
        <!-- 详情展示 -->
        <!-- 电商拉页 -->

        <!-- 电商拉页 END -->
        <!-- 导航锚点定位-参数 -->
        <div class="js_params"></div>
        <!-- 导航锚点定位-参数 End -->
        <!-- 产品参数 -->
        <div class="o_g product-param">
            <div class="o_g param-bg">
                <div class="o_u o_df_3-12 o_sm_1-2 o_xs_1-2 param-bg-deep"></div>
                <div class="o_u o_df_9-12 o_sm_1-2 o_xs_1-2 param-bg-light"></div>
            </div>
            <div class="o_g param-con">
                <div class="o_u o_df_1-12"></div>
                <div class="o_u o_df_10-12">
                    <div class="param-struct">
                        <div class="param-struct-img">
                            <div>
                                <img class="js_recPic" src="images/W020171214559041359219.jpg"  />
                            </div>
                        </div>
                        <div class="param-attachment js_appendixText">



                        </div>
                    </div>
                    <div class="param-basic">
                        <div class="o_g">
                            <div class="o_u o_df_1-5 o_df-hide o_lg-show o_md-show param-basic-bg"></div>
                            <div class="o_u o_df_2-2 o_lg_4-5 o_md_4-5 param-basic-con">

                                <div class="param-basic-title">基本参数   <input type="hidden" value="${param.sn}" id="ids"></div>
                                <div class="o_u o_df_2-2">
                                    <div class="param-basic-box">


                                        <div class="param-basic-list">
                                            <span class="param-key">产品品类</span>
                                            <span class="param-value">LED</span>
                                        </div>



                                        <div class="param-basic-list">
                                            <span class="param-key">系列</span>
                                            <span class="param-value">FUA</span>
                                        </div>



                                        <div class="param-basic-list">
                                            <span class="param-key">内存</span>
                                            <span class="param-value">2GB（1G DDR3+1G DDR4）</span>
                                        </div>



                                        <div class="param-basic-list">
                                            <span class="param-key">闪存</span>
                                            <span class="param-value">16GB (eMMC 5.1 )</span>
                                        </div>



                                        <div class="param-basic-list">
                                            <span class="param-key">CPU</span>
                                            <span class="param-value">Cotex-A53 *4</span>
                                        </div>



                                        <div class="param-basic-list">
                                            <span class="param-key">颜色</span>
                                            <span class="param-value" id="color2"></span>
                                        </div>



                                        <div class="param-basic-list">
                                            <span class="param-key">GPU</span>
                                            <span class="param-value">ARM MALI-820</span>
                                        </div>



                                        <div class="param-basic-list">
                                            <span class="param-key">产品尺寸</span>
                                            <span class="param-value" id="size2"></span>
                                        </div>


                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 产品参数 END -->
        <!-- 产品口碑-->
        <div class="detail-title js_commentTitle">产品口碑</div>
        <div class="o_g js_commentContent">
            <div class="o_u o_df_1-12"></div>
            <div class="o_u o_df_10-12 detail-praise">
                <div class="praise-box">
                </div>
                <div class="prise-btn">
                    <a href="javascript:;" class="l-btn-normal l-btn-red js_commentUrl">查看更多</a>
                </div>
            </div>
            <div class="o_u o_df_1-12"></div>
        </div>
        <!-- 产品口碑 End -->
        <!-- 更多选择 -->
        <div class="detail-title js_moreTitle">更多选择</div>
        <div class="o_g js_moreTitle">
            <div class="o_u o_df_1-6"></div>
            <div class="o_u o_df_2-3">
                <div class="detail-more o_xs-hide">
                    <div class="swiper-container js_swiperMore1">
                        <div class="swiper-wrapper js_morePro js_moreProA">





                        </div>
                    </div>
                    <!-- 如果需要导航按钮 -->
                    <div class="swiper-prev js_swiperMore_prev">
                        <i class="iconfont icon-arrow-jiantou-left"></i>
                    </div>
                    <div class="swiper-next js_swiperMore_next">
                        <i class="iconfont icon-arrow-jiantou-right"></i>
                    </div>
                </div>
                <div class="detail-more o_df-hide o_xs-show js_morePro js_moreProB">




                </div>
            </div>
            <div class="o_u o_df_1-6"></div>
        </div>

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

                            <a class="foot_link" href="index.jsp" tppabs="http://www.tongshuai.com/televisions/">电视</a>

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
<!-- 配送地址 end -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.easyui.min.js"></script>
<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/locale/easyui-lang-zh_CN.js"></script>
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
<!--./20171213_619_json.json-->
<!--./20171213_619_comment.shtml-->
<!--./20171213_619_parameter.shtml-->
<script>
    var table_name_class ="v_leader_dianshi";
    var docId="619";//产品id
    var siteID="5";//站点id

</script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/validform_v5.3.2_min.js" tppabs="http://image.tongshuai.com/tongshuai/images/validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/templet_login_bomb_box.js" tppabs="http://image.tongshuai.com/tongshuai/images/templet_login_bomb_box.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/idangerous.swiper2.7.6.js" tppabs="http://image.tongshuai.com/tongshuai/images/idangerous.swiper2.7.6.js"></script>
<script type="text/javascript" src="../../v3.jiathis.com/code/jia.js-uid=1748486" tppabs="http://v3.jiathis.com/code/jia.js?uid=1748486" charset="utf-8"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/product_detail.js" tppabs="http://image.tongshuai.com/tongshuai/images/product_detail.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/templet_product_detail_compare.js" tppabs="http://image.tongshuai.com/tongshuai/images/templet_product_detail_compare.js"></script>
<script>
    var chnlid_owner ='77';
    var templet_price='';//价格字符串
    var point='';//功能亮点
    var appendix='';//附件信息
    var templet_channelName="index.jsp"/*tpa=http://www.tongshuai.com/televisions/*/;//栏目链接
    var templet_businessId="T55FUA";
    //var templet_businessId="BCD-557WDGSU1"
    var templet_detailUrl='20171213_619.shtml.htm'/*tpa=http://www.tongshuai.com/televisions/20171213_619.shtml*/;//页面路径
    var templet_commentUrl='';//口碑页面
    var templet_parameterUrl='';//参数页面
    var templet_dsly='../../image.tongshuai.com/tongshuai/televisions/W020171214557639899494.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557640156990.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557640489766.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557640895363.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557641151466.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557641393573.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557641779618.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557642031434.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557642287514.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557642524570.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557642761167.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557642971027.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557643205621.jpghttp-/image.tongshuai.com/tongshuai/televisions/W020171214557643432046.jpghttp-/image.tongshuai.com/tongshuai/televisions/fi000002.jpg'/*tpa=http://image.tongshuai.com/tongshuai/televisions/W020171214557639899494.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557640156990.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557640489766.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557640895363.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557641151466.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557641393573.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557641779618.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557642031434.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557642287514.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557642524570.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557642761167.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557642971027.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557643205621.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557643432046.jpghttp://image.tongshuai.com/tongshuai/televisions/W020171214557643668367.jpg*/;//电商拉页
    var templet_smsxz='http://image.tongshuai.com/tongshuai/televisions/W020171215550161281638.pdf';//下载说明书
    //var templet_cpcjt='../../image.tongshuai.com/tongshuai/televisions/W020171213520497293147.jpg'/*tpa=http://image.tongshuai.com/tongshuai/televisions/W020171213520497293147.jpg*/;//产品场景图
    //产品参数链接
    var templet_detailNum=templet_detailUrl.lastIndexOf(".");
    templet_detailUrl=templet_detailUrl.substring(0,templet_detailNum);
    templet_parameterUrl=templet_detailUrl+'_parameter.shtml';
    $(".js_parameterUrl").prop("href",templet_parameterUrl);//参数
    templet_commentUrl=templet_detailUrl+'_comment.shtml';
    $(".js_commentUrl").prop("href",templet_commentUrl);//口碑
    $(".js_comment").prop("href",templet_commentUrl);//口碑

    if(templet_dsly ==""||templet_dsly ==null){
        $(".js_detail-foldover").hide();//电商拉页隐藏
    }
    var templet_buy=$(".particulars-buy-con").find("a").length;
    if(templet_buy==""||templet_buy==null){//购买电商隐藏
        $(".js_shopBuy").hide();
    }

    $(".js_download").prop("href",templet_smsxz);//说明书下载

    /*if(templet_cpcjt ==""||templet_cpcjt==null){//产品场景图
        $(".js_cpcjt").hide();
    }else{
        templet_cpcjt=templet_cpcjt.split("~");
        $(".js_cpcjt").find("img").attr("df",templet_cpcjt[0]);
        if(templet_cpcjt[1]==""||templet_cpcjt[1]==null){
            $(".js_cpcjt").find("img").attr("md",templet_cpcjt[0]);
            $(".js_cpcjt").find("img").attr("sm",templet_cpcjt[0]);
            $(".js_cpcjt").find("img").attr("xs",templet_cpcjt[0]);
        }else{
            $(".js_cpcjt").find("img").attr("md",templet_cpcjt[1]);
            $(".js_cpcjt").find("img").attr("sm",templet_cpcjt[1]);
            $(".js_cpcjt").find("img").attr("xs",templet_cpcjt[1]);
        }

    }*/



</script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/templet_product_detail.js" tppabs="http://image.tongshuai.com/tongshuai/images/templet_product_detail.js"></script>
<script>
    $(function () {
       var id= $("#ids").val();
       $.ajax({
           url:"<%=request.getContextPath()%>/television/TVShowById.jhtml?sn="+id,
           type:"post",
           success:function(data){
               $("#title1").html(data.name);
               $("#title2").html(data.seotitle);
               $("#title3").html(data.introduction);
               $("#a1").html(data.attributevalue1);
               $("#a2").html(data.attributevalue2);
               $("#a3").html(data.attributevalue3);
               $("#size2").html(data.attributevalue2);
               $("#color2").html(data.attributevalue1);
               $("#stock").html(data.stock);
               $("#price").html(data.marketprice);
           }
       })
    })

    function toCart(){
        var id= $("#ids").val(); //productid
        var userid='${loginAdmin.aid}';
        // TEMPPRICE
       var  tempprice=$("#price").html();
        $.ajax({
            url:"<%=request.getContextPath()%>/television/insertCart.jhtml",
            data:{productid:id,userid:userid,tempprice:tempprice},
            type:"post",
            success:function(data){
                $.messager.show({

                    title:'我的消息',
                    msg:'该宝贝已在购物车等待~~~',
                    timeout:1000,
                    showType:'show',
                    style:{
                        top:300,
                    }

                })
            }
        })

    }
</script>

</body>
<!--<img src="http://image.tongshuai.com/tongshuai/televisions/W020171213520502137136_200.png" width="200"/>-->
<!--<img src="http://image.tongshuai.com/tongshuai/televisions/W020171213520502137136.png" width="1000"/><BR/><img src="http://image.tongshuai.com/tongshuai/televisions/W020171213520502423575.jpg" width="1000"/><BR/><img src="http://image.tongshuai.com/tongshuai/televisions/W020171213520502645318.jpg" width="1000"/><BR/><img src="http://image.tongshuai.com/tongshuai/televisions/W020171213520502856851.jpg" width="1000"/><BR/><img src="http://image.tongshuai.com/tongshuai/televisions/W020171213520503048495.jpg" width="1000"/><BR/><img src="http://image.tongshuai.com/tongshuai/televisions/W020171215550163297495.jpg" width="1000"/>-->
<!--http://image.tongshuai.com/tongshuai/televisions/W020171215550161281638.pdf-->
</html>
