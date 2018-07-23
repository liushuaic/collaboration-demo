<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/20
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <meta charset=utf-8"UTF-8">
    <title>新闻动态 - 统帅官网</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui"/>
    <meta name="format-detection" content="telephone=no, email=no"/>
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
    <link rel="stylesheet" type="text/css" href="../../../image.tongshuai.com/tongshuai/images/news_list.css" tppabs="http://image.tongshuai.com/tongshuai/images/news_list.css">
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
                    <a class="nav-chart" href="../../cart/index.jsp" tppabs="http://www.tongshuai.com/cart/"><i class="iconfont icon-shoppingcart"></i>&nbsp;&nbsp;我的购物车</a>
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
                        <a class="js_nav-chart2" href="../../cart/index.jsp" tppabs="http://www.tongshuai.com/cart/">
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
                                <a href="../../televisions/index.jsp" tppabs="http://www.tongshuai.com/televisions/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">电视</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../laundry/index.jsp" tppabs="http://www.tongshuai.com/laundry/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">洗衣机</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../air_conditioners/index.jsp" tppabs="http://www.tongshuai.com/air_conditioners/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">空调</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../cooling/index.jsp" tppabs="http://www.tongshuai.com/cooling/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">冰箱</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../freezer/index.jsp" tppabs="http://www.tongshuai.com/freezer/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">冷柜</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../water_heater/index.jsp" tppabs="http://www.tongshuai.com/water_heater/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">热水器</div>
                                </a>
                            </li>

                            <li>
                                <a href="../../cooking_appliances/index.jsp" tppabs="http://www.tongshuai.com/cooking_appliances/">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675683634339.png" alt="" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">厨电</div>
                                </a>
                            </li>

                        </ul>
                    </li>
                    <li><a href="../../life/index.jsp" tppabs="http://www.tongshuai.com/life/">悠生活<i class="iconfont icon-arrow-line-right"></i></a></li>
                    <li><a href="../../member/index.jsp" tppabs="http://www.tongshuai.com/member/">会员<i class="iconfont icon-arrow-line-right"></i></a></li>
                    <li><a href="../../service/index.jsp" tppabs="http://www.tongshuai.com/service/">服务<i class="iconfont icon-arrow-line-right"></i></a></li>
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
                        <a href="../../service/help/index.jsp" tppabs="http://www.tongshuai.com/service/help">帮助中心</a>
                        <a href="../../contact/index.jsp" tppabs="http://www.tongshuai.com/contact">联系我们</a>
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
                    <a href="../../televisions/index.jsp" tppabs="http://www.tongshuai.com/televisions/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">电视</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../laundry/index.jsp" tppabs="http://www.tongshuai.com/laundry/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">洗衣机</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../air_conditioners/index.jsp" tppabs="http://www.tongshuai.com/air_conditioners/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">空调</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../cooling/index.jsp" tppabs="http://www.tongshuai.com/cooling/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">冰箱</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../freezer/index.jsp" tppabs="http://www.tongshuai.com/freezer/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">冷柜</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../water_heater/index.jsp" tppabs="http://www.tongshuai.com/water_heater/">
                        <div class="second-column-i">
                            <img lazy-src="../../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" src="../../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">热水器</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../../cooking_appliances/index.jsp" tppabs="http://www.tongshuai.com/cooking_appliances/">
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
        <!--头部banner-->

        <div class="news_list_banner" pic="http://image.tongshuai.com/tongshuai/about/W020180117754540508796.png,http://image.tongshuai.com/tongshuai/about/W020180117754540866286.png,http://image.tongshuai.com/tongshuai/about/W020180117754541077991.png,">
            <a href="javascript:;">
                <img class="js_recPic" src="" df="" lg="" md="" sm="" xs="" />
                <div class="news_list_caption">
                    关于统帅
                </div>
            </a>
        </div>

        <!--头部bannerEND-->
        <!--新闻中心列表-->
        <div class="news_list_content">
            <!--新闻列表标题-->
            <div class="o_g news_list_head">
                <div class="o_u o_df_1-12">
                </div>
                <div class="o_u o_df_10-12">
                    <div class="news_list_item">
                        <div class="o_g">
                            <div class="o_u o_df_1-2">
                                <a href="../brand/index.jsp" tppabs="http://www.tongshuai.com/about/brand/">
                                    <div class="news_list_title">
                                        统帅品牌
                                    </div>
                                </a>
                            </div>
                            <div class="o_u o_df_1-2">
                                <a href="index.jsp" tppabs="http://www.tongshuai.com/about/news/">
                                    <div class="news_list_title active">
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
            <!--新闻列表标题END-->
            <div>

                <div class="o_g news_list



							">
                    <div class="o_u o_df_1-12">
                    </div>
                    <div class="o_u o_df_10-12">
                        <div class="news_list_tip">



                            <div class="news_tip_pic mews_mid">
                                <div class="news_pic">
                                    <a href="20180718_1035.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180718_1035.shtml" target="_blank">
                                        <img src="../../../image.tongshuai.com/tongshuai/about/news/W020180718601302374307.jpg" tppabs="http://image.tongshuai.com/tongshuai/about/news/W020180718601302374307.jpg" />
                                    </a>
                                </div>
                            </div>


                            <div class="news_txt mews_mid">
                                <div class="news_tip_text mews_mid">
                                    <div class="news_text">
                                        <a href="20180718_1035.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180718_1035.shtml" target="_blank">
                                            <p class="news_tip_title">
                                                统帅启动“时尚家”征集:用照片换旅游基金
                                            </p>
                                        </a>
                                        <span class="news_tip_content js_cutWord">

                                            </span>

                                        <span class="js_none_text">
                                                <p>7月11日，统帅晒出了一则关于年轻人理想时尚家装风格的街访视频，并在线上同步发布时尚家装态度的问卷调查。从视频及调查结果中可以看出，年轻人对家装风格虽有不同的喜好，但他们对“时尚家”的评判有一个共同的标准，就是简约时尚。7月17日-7月31日，统帅将面向全国用户启动“时尚家的样子”征集活动，用户上传包含统帅电器在内的时尚家居照片参与活动，将有机会赢取最高3000元的家庭旅游基金。</p><p></p><p>年轻人对时尚的追求，除了日常生活中的穿衣打扮等，还体现在对家居风格的喜好上，他们对“时尚家”有自己的追求和理解。统帅此前的问卷调查结果显示，在18-35岁的年轻人中，有76.19%的年轻人对家装时尚度要求较高，他们不喜欢千篇一律的风格；有90.48%的年轻人喜欢设计感强的家居风格，他们对时尚家居有着自己独到的见解，并表示不认同老一辈对家装的眼光。在家电选购方面，他们比较看重家电与家居风格的融合，所以颜值高、有特点的时尚家电是年轻人的首选。而统帅家电时尚的外观和简约的功能与年轻人的时尚理念不谋而合，一直以来都受到年轻人的喜爱和支持。</p><p></p><p>据悉，此次活动将以征集统帅家电与时尚家居环境完美融合的照片为主，并上传用户与统帅家电的互动照片，通过真实的使用场景展示统帅家电时尚简约的品牌调性。同时，活动还将以用户与统帅家电之间的故事作为重点评价因素，展现统帅为年轻用户提供的优质服务和体验。征集活动结束后，统帅将筛选出优秀的时尚家居照片进行全网投票，前5名将获得最高3000元的时尚家庭旅游基金。</p><p></p><p>作为轻时尚家电开创者，统帅与年轻群体的互动除了交互方式上不断迭代，也非常注重与不同细分人群进行深入的沟通。此次“时尚家庭样板间”征集活动面向的是全国的统帅老用户，而在此前，统帅与民宿跨界合作打造“民宿样板间”，面向的则是追求精致简约生活的年轻人。从“民宿样板间”到“时尚家庭样板间”，统帅一路见证年轻人实现从一个人到一个家庭的时尚，并带领他们不断探索接下来的更多可能。</p><p></p><p>统帅消夏节正如火如荼地进行中，在为用户免费清洗家电、为新用户送货安装获点赞以及“10秒挑战”赛活动之后，统帅开启“时尚家”征集活动，与用户深入交互，在炎炎夏季为用户送去清凉。</p><p></p><p>业内人士指出，在供给侧改革的时代背景下，以用户需求作为企业研发的驱动力是每个企业都要面临的命题，但真正将其落到实处则考验了一个企业的实力和决心。统帅自开启年轻化品牌转型以来，坚定地执行与年轻用户交互的路径，不仅进一步提升了在年轻人中的品牌形象，更重要的是藉此精准把握年轻人的需求，为品牌的可持续发展奠定坚实的基础。</p><p></p>
                                            </span>

                                    </div>
                                </div>
                                <div class="news_tip_date mews_mid">
                                    <div class="news_date o_df-show o_md-hide o_sm-hide o_xs-hide">
                                        <div class="news_date_day">
                                            07-18
                                        </div>
                                        <div class="news_date_year">
                                            2018
                                        </div>
                                    </div>
                                    <div class="news_date o_df-hide o_md-show o_sm-show o_xs-show">
                                        <span class="news_date_year">2018-</span>
                                        <span class="news_date_day">07-18</span>
                                    </div>
                                </div>
                            </div>
                            <div class="news_tip_icon mews_mid o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                                <a class="news_icon" href="20180718_1035.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180718_1035.shtml" target="_blank">
                                    <i class="iconfont icon-arrow-jiantou-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="o_g news_list

							news_nopic


							">
                    <div class="o_u o_df_1-12">
                    </div>
                    <div class="o_u o_df_10-12">
                        <div class="news_list_tip">





                            <div class="news_txt mews_mid">
                                <div class="news_tip_text mews_mid">
                                    <div class="news_text">
                                        <a href="20180312_804.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180312_804.shtml" target="_blank">
                                            <p class="news_tip_title">
                                                年轻家电业绩增长慢，统帅增幅42%超行业13倍！
                                            </p>
                                        </a>
                                        <span class="news_tip_content js_cutWord">

                                            </span>

                                        <span class="js_none_text">
                                                <p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p></p><p style="font-size: 12px;padding: 0px">近年，家电品牌纷纷加入年轻化转型之战，却局限于年轻单品，陷入个位数增长的窘境。2018年AWE，参展人流汇集在了统帅“解悠情报局”，作为海尔世界第一家电品牌集群中的年轻时尚品牌，统帅用轻时尚套系家电用场景“讲解”了业绩增长超行业13倍的秘诀。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">“解悠情报局”诠释年轻套系优势</p><p style="font-size: 12px;padding: 0px">顺着人流走到统帅“解悠情报局”人不少，玩起了窃听、侦查、破译“悠生活”情报游戏的人更不少。厨房，阳台、浴室、客厅4大生活场景，风格统一，舒适的视感和体验感将年轻人代入了“家”的游戏氛围，全情搜索游戏里的产品线索，而这样的优势也正是统帅能够超行业业绩增长速度13倍的秘诀之一。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">行业业绩深陷个位数增长困局</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">逛遍AWE，年轻单品随处可见，年轻人却很少开口询问或体验，从兴趣上而言已经产生了“免疫力”。然而年轻化转型战况依旧激烈，截止2017年12月，行业整体业绩增长仅为3%，逆势中只有统帅成为黑马，率先推出年轻套系，业绩飚速至增长42%。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">首发轻时尚套系，统帅超速增长</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">统帅体验区人流不断，其高涨的人气在精品汇集的AWE也丝毫不曾减弱。由此可见，行业推出的众多年轻单品，都难以超越L.ONE轻时尚套系的人气优势，统帅实现了全品类正增长，并以整体增幅42%的显著业绩超行业13倍。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">在AWE统帅打开业界全品类格局</p><p style="font-size: 12px;padding: 0px">在AWE人气本身就是一份成绩单，而这份成绩也解释了统帅增长速度赶超行业增长速度14倍的原因。统帅推出业内首套轻时尚套系家电，发挥出了1+1＞2的效果，以组合体验的优势聚拢现场人气，打破了人们对年轻单品的“审美疲劳”，在业界开创了轻时尚全品类的格局。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">2018AWE的精彩也将延续到统帅品质节，3月8日-4月8日，精心献上品质家电，乐享“悠生活”。在“人单合一”模式的引领下，统帅将更多地关注年轻人的情感需求，不断创新，不断满足用户的个性化需求。</p><p style="font-size: 12px;padding: 0px"></p><p></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p></p>
                                            </span>

                                    </div>
                                </div>
                                <div class="news_tip_date mews_mid">
                                    <div class="news_date o_df-show o_md-hide o_sm-hide o_xs-hide">
                                        <div class="news_date_day">
                                            03-12
                                        </div>
                                        <div class="news_date_year">
                                            2018
                                        </div>
                                    </div>
                                    <div class="news_date o_df-hide o_md-show o_sm-show o_xs-show">
                                        <span class="news_date_year">2018-</span>
                                        <span class="news_date_day">03-12</span>
                                    </div>
                                </div>
                            </div>
                            <div class="news_tip_icon mews_mid o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                                <a class="news_icon" href="20180312_804.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180312_804.shtml" target="_blank">
                                    <i class="iconfont icon-arrow-jiantou-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="o_g news_list

							news_nopic


							">
                    <div class="o_u o_df_1-12">
                    </div>
                    <div class="o_u o_df_10-12">
                        <div class="news_list_tip">





                            <div class="news_txt mews_mid">
                                <div class="news_tip_text mews_mid">
                                    <div class="news_text">
                                        <a href="20180312_803.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180312_803.shtml" target="_blank">
                                            <p class="news_tip_title">
                                                家电业年轻转型遇挫 统帅业绩增幅42%超行业13倍
                                            </p>
                                        </a>
                                        <span class="news_tip_content js_cutWord">

                                            </span>

                                        <span class="js_none_text">
                                                <p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">随着互联网的飞速发展，80、90一代消费群体崛起，对传统制造业产生了巨大的冲击力，原有模式、经验难以生效、迫使企业考虑转型升级。3月8日上海召开的2018AWE现场，众多家电企业全线发力，搭建新品集中营。转型后的年轻化家电品牌统帅电器，展出了第二代轻时尚套系产品L.TWO系列，获得了全球关注的目光。统帅负责人告诉记者，“今年统帅的业绩实现了全品类正增长，并以整体增幅42%的显著业绩赶超行业13倍。”</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;最近几年，受原材料价格上涨和下游市场需求饱和等方面的影响，中国家电市场一直处于横盘阶段。据中怡康数据显示，2017年家电行业整体增幅3%，各产业业绩增幅不明显，缺乏新技术和新产品的品牌很难打开市场，这也推动企业开始探索转型的道路。在行业整体业绩低迷态势下，统帅业绩实现逆势上涨。据了解，2017年，统帅业绩整体为42%，远超行业13倍。其中，统帅空调增幅达114%，领跑行业，统帅冰箱、洗衣机、热水器等产业均实现了两位数增长。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp;&nbsp;年轻转型成趋势统帅实现全品类年轻化</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;在统帅展区中可以看到，套系新品前面挤满了年轻人，他们时而按下开关，感受产品的各项功能，时而拿出手机与产品合影。“简洁的外观非常符合我们90后的审美，而且操作起来也很方便。” &nbsp;&nbsp; &nbsp;90后女孩小胡在统帅展区参观后表示，统帅的操作看起来很简单，但其实科技含量并不低，非常符合当下年轻人的口味。在统帅展区，多种互动体验为用户诠释了时尚智慧生活。可以语音控制的空调，让你分分钟感受到，这就是未来家中应该拥有的空调；能够冻各种化妆品的统帅冰箱，也让大家对它的保鲜功能有了全新的认知。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;现如今，在充斥着各种模式、概念，挑战和机遇并存的家电行业，满足年轻消费群是许多品牌的共同选择。据统计，近5年间，超过15个家电品牌开始转战年轻市场。然而目前为止，无论从产品、设计，还是服务、体验方面，真正能落实到实处、切中消费痛点的并不多。很多年轻品牌大都停留在口号和宣传层面，行业亟需有突破性的产品和有实力的企业来引领年轻化转型之路。纵观国内的家电品牌，仅统帅真正实现了全品类的年轻化转型，并完成了全品类套系产品的迭代，为行业和用户带来了全新气象。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;“此次展出的轻时尚套系产品，也在细微之处体现着统帅产品的年轻特点。”在统帅工作人员的讲解下，记者对统帅新品做了进一步的了解。从外观来看，产品设计趋向“轻体量”、“界面干净”等风格变化，更加简约大方。独特的符号和印记，无形中为品牌增添了专属感。在功能上，通过人机的高度交互，用户可以用手机快速接入智慧模式。记者还在现场见到了统帅像可通过语音操控的空调，可以智能洗净污渍的洗衣机等智能化产品，都通过智能的体验，让产品更加有趣。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp;&nbsp;深入年轻社群交互扩充社群生态圈</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;在统帅看来，中国2.5亿年轻人已深刻影响了家电市场的走向，他们具备强烈的社群意识。只有真正走到他们的圈子中，才能真正了解他们的喜好，为家电创造出更多的附加价值。近几年，统帅深入不同领域的年轻社群中，通过社群交互“吃透”了年轻人的想法，并通过将自身打造成了一个自由开放的社群生态平台，推动品牌不断发展。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;从统帅在2018AWE现场设置的一个简单的美食分享会来说，时尚的装修风格，成套的统帅家电，还原了众多年轻人的家居生活梦想，吸引了美食、家装、时尚等不同圈层的年轻社群。喜欢美食的用户可以在这里通过现场制作美食，体验统帅的冰箱、厨电等时尚产品。“统帅的这款冰箱不仅可以智能调控温度，还可以保存不同种类的食材，真的很赞！”酷爱烹饪的90后白领苏女士在体验后，对统帅冰箱的超宽变温功能赞不绝口。由此可以看出，统帅在交互中，不仅吸取了用户的创新灵感，更在无形中提升了用户的好感度，实现了年轻生态圈的不断扩容。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;业内专家表示，中国传统消费结构正逐步向新兴消费结构升级转变。而在这一过程中，消费结构变化的核心仍是以消费者为中心。统帅自提出“轻时尚家电”理念至今，致力挖掘出年轻人对家电的真实需求，不断推出更加符合时代要求的颠覆性产品。据了解，3月8日统帅品质节也随即召开，统帅将把高品质的智能家电理念向更多用户普及，站在家电产业最前沿引领消费潮流并主导竞争新格局。</p><p></p><p></p><p></p>
                                            </span>

                                    </div>
                                </div>
                                <div class="news_tip_date mews_mid">
                                    <div class="news_date o_df-show o_md-hide o_sm-hide o_xs-hide">
                                        <div class="news_date_day">
                                            03-12
                                        </div>
                                        <div class="news_date_year">
                                            2018
                                        </div>
                                    </div>
                                    <div class="news_date o_df-hide o_md-show o_sm-show o_xs-show">
                                        <span class="news_date_year">2018-</span>
                                        <span class="news_date_day">03-12</span>
                                    </div>
                                </div>
                            </div>
                            <div class="news_tip_icon mews_mid o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                                <a class="news_icon" href="20180312_803.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180312_803.shtml" target="_blank">
                                    <i class="iconfont icon-arrow-jiantou-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="o_g news_list

							news_nopic


							">
                    <div class="o_u o_df_1-12">
                    </div>
                    <div class="o_u o_df_10-12">
                        <div class="news_list_tip">





                            <div class="news_txt mews_mid">
                                <div class="news_tip_text mews_mid">
                                    <div class="news_text">
                                        <a href="20180309_783.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_783.shtml" target="_blank">
                                            <p class="news_tip_title">
                                                AWE现场：统帅的“科技情报”被人窃听并破译
                                            </p>
                                        </a>
                                        <span class="news_tip_content js_cutWord">

                                            </span>

                                        <span class="js_none_text">
                                                <p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p><p style="font-size: 12px;padding: 0px">3月8日，家电界年度盛会2018AWE正式开幕，多数家电品牌还在展示产品和科技时，作为年轻家电市场的标杆，统帅电器便带来了多维度全新玩法，将展区模拟成真实的情报收集场景，以“窃听、侦查、破译”等手段把悠生活情报藏各大场景中。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center">统帅情报局现场被年轻人“破译”</p><p style="font-size: 12px;padding: 0px">步入AWE统帅展区现场，仿佛进入一条潮流街区，汇聚在这里的尽是些打扮时尚的小年轻，统帅在年轻用户群中的人气可见一斑。作为家电界最年轻、最会玩的品牌，统帅再次展示了自己的与众不同，将展区模拟成真实的情报收集场景，以“窃听、侦查、破译”等手段把悠生活情报藏在生活的各大场景中，形象地展示了统帅产品专业、多元的特点。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center">五大主题活动嗨翻全场</p><p style="font-size: 12px;padding: 0px">“你看到的不是一面镜子，而是统帅中字格局冰箱”在网红的引导下，统帅镜面冰箱化身为现场的化妆镜，观众们从冰箱中门抽屉取出化妆品，感受不一样的鲜味。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">一排空白的相框摆在统帅空调前，经空调风一吹，相框里很快就出现了Q版小帅。年轻人举着手牌，用标语亮出自己的生活态度，在闪光灯下变身统帅空调温度代言人。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">原本只是想看个洗衣机，结果在现场偶遇了各种各样鲜衣怒马的青年，不仅体验了统帅洗衣机特渍洗功能的极致洁净力，还了解了不同物料的洗护方式。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">最近大火的直播答题你还有印象吗？在统帅热水器展区就有1场！堆满海洋球的答题池边，围拢着众多兴奋的年轻人，争先恐后地挑战着热水器相关的常识问题。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">现场逛累了，自然就会想着吃了。在统帅厨电开设的时尚厨房前，早已排起了队伍，在这里观众不仅吃到了各种美食，还亲身感受了用统帅厨电制作创意美食的优哉游哉。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center">行业唯一套系新品抢先看</p><p style="font-size: 12px;padding: 0px">琳琅满目的前沿产品让人目不暇接，但其中最吸引人的，当属首次亮相的行业唯一年轻化套系新品统帅L.TWO系列。标志性的红色，纯粹的几何体，统帅L.TWO系列以扁平化视觉效果和核心功能的符号化为年轻人带来了一整套时尚家居。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px">在“人单合一”模式的引领下，统帅以年轻品牌的活力，为年轻人带来使用的乐趣，与用户共同成长。紧随2018AWE，3月8日至4月8日，统帅品质节全面开启，为你带来全新时尚国品！</p></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p></p><p></p>
                                            </span>

                                    </div>
                                </div>
                                <div class="news_tip_date mews_mid">
                                    <div class="news_date o_df-show o_md-hide o_sm-hide o_xs-hide">
                                        <div class="news_date_day">
                                            03-09
                                        </div>
                                        <div class="news_date_year">
                                            2018
                                        </div>
                                    </div>
                                    <div class="news_date o_df-hide o_md-show o_sm-show o_xs-show">
                                        <span class="news_date_year">2018-</span>
                                        <span class="news_date_day">03-09</span>
                                    </div>
                                </div>
                            </div>
                            <div class="news_tip_icon mews_mid o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                                <a class="news_icon" href="20180309_783.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_783.shtml" target="_blank">
                                    <i class="iconfont icon-arrow-jiantou-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="o_g news_list



							">
                    <div class="o_u o_df_1-12">
                    </div>
                    <div class="o_u o_df_10-12">
                        <div class="news_list_tip">



                            <div class="news_tip_pic mews_mid">
                                <div class="news_pic">
                                    <a href="20180309_782.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_782.shtml" target="_blank">
                                        <img src="../../../image.tongshuai.com/tongshuai/about/news/W020180309640785678376.jpg" tppabs="http://image.tongshuai.com/tongshuai/about/news/W020180309640785678376.jpg" />
                                    </a>
                                </div>
                            </div>


                            <div class="news_txt mews_mid">
                                <div class="news_tip_text mews_mid">
                                    <div class="news_text">
                                        <a href="20180309_782.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_782.shtml" target="_blank">
                                            <p class="news_tip_title">
                                                拒绝从众，统帅冰箱AWE亮相极简风格交互年轻“鲜”玩法！
                                            </p>
                                        </a>
                                        <span class="news_tip_content js_cutWord">

                                            </span>

                                        <span class="js_none_text">
                                                <p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p><p style="font-size: 12px;padding: 0px">大家都认为绿叶蔬菜是考验冰箱保鲜能力的标准题，就连行业也不例外，在AWE打开冰箱看时蔬的展演也是屡见不鲜。2018年，统帅拒绝从众换了新思路，冰箱变身“化妆箱”一举拿下保鲜加分题，迅速聚拢时尚一族的围观。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center">AWE统帅保鲜化妆品被万人围观</p><p style="font-size: 12px;padding: 0px">看冰箱总要开门试手感，可在统帅展区更多年轻人打开冰箱说的第1句话是“这里面是化妆品？”，这句惊叹迅速聚拢时尚一族的围观。有不少姑娘还细心的发现，化妆被分门别类放到了不同区域，经工作人员介绍才明白统帅每个区域的温度、湿度都不尽相同。</p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center">美妆博主做直播，找统帅冰箱做化妆镜</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">在年轻人讨论冰箱保鲜化妆品的功夫，一位女生穿过了围观人群，拿出手机开始直播上妆，而她的化妆镜正是统帅镜面中字冰箱。流畅动作，细微的步骤都被清晰的映在了统帅的镜面面板上，围观的年轻人这才觉得“镜面”冰箱果然是名副其实。</p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center">统帅冰箱变身香水储藏室，洁净不混味</p><p style="font-size: 12px;padding: 0px">被填满的可不止是镜面冰箱，完成妆容的美妆博主当众打开了简约格调中字冰箱，其中也放满了五颜六色的香水瓶，只是团团围观的人群中，竟然没有人从中闻到一丝香水混杂的味道。而被美妆博主随手选中的那支香水，只是喷了一下所有人却都闻到了香味。</p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center">统帅冰箱的小秘密，现场扫码一探究竟</p><p style="font-size: 12px;padding: 0px">无论是保鲜化妆品、友情出演化妆镜，还是储存香水不串味，都让现场“不信邪”的年轻人纷纷扫描二维码一探究竟。当他们依次输入产品数字编码，就打开了超宽变温抽屉、镀膜镜面外表、杀菌净味功能的“百科全书”。</p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px">作为轻时尚家电的开创者，统帅直击年轻人的喜好和需求，用安全保鲜愉悦品质生活。3月8-4月8日，统帅开启品质节延续AWE2018的全线精彩，巨献品质家电，畅享舒适“悠生活”。</p><p style="font-size: 12px;padding: 0px"></p><p style="font-size: 12px;padding: 0px;text-align: center"></p></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p></p><p></p>
                                            </span>

                                    </div>
                                </div>
                                <div class="news_tip_date mews_mid">
                                    <div class="news_date o_df-show o_md-hide o_sm-hide o_xs-hide">
                                        <div class="news_date_day">
                                            03-09
                                        </div>
                                        <div class="news_date_year">
                                            2018
                                        </div>
                                    </div>
                                    <div class="news_date o_df-hide o_md-show o_sm-show o_xs-show">
                                        <span class="news_date_year">2018-</span>
                                        <span class="news_date_day">03-09</span>
                                    </div>
                                </div>
                            </div>
                            <div class="news_tip_icon mews_mid o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                                <a class="news_icon" href="20180309_782.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_782.shtml" target="_blank">
                                    <i class="iconfont icon-arrow-jiantou-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="o_g news_list

							news_nopic


							">
                    <div class="o_u o_df_1-12">
                    </div>
                    <div class="o_u o_df_10-12">
                        <div class="news_list_tip">





                            <div class="news_txt mews_mid">
                                <div class="news_tip_text mews_mid">
                                    <div class="news_text">
                                        <a href="20180309_781.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_781.shtml" target="_blank">
                                            <p class="news_tip_title">
                                                空调制热普遍慢，2018AWE统帅10秒10度稳居NO.1
                                            </p>
                                        </a>
                                        <span class="news_tip_content js_cutWord">

                                            </span>

                                        <span class="js_none_text">
                                                <p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p><p style="font-size: 12px;padding: 0px">走进2018年中国家电及消费电子博览会（简称AWE）的现场，琳琅满目的空调产品让人目不暇接，但在消费者的洞察下，不论任何空调都面临一个问题：出风温度是否给力？统帅L.ONE空调在现场则给出了最强势的答案：启动正常出风后，温度变化速率超过10秒10度，稳居第一！</p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center">2018AWE空调新品亮相</p><p style="font-size: 12px;padding: 0px">流畅的线条，圆润的剖面，在统帅展区现场，一眼就能注意到统帅空调。除了简约优雅的设计，统帅空调强冷劲热的特点也为观众留下了深刻印象。现场体验者90后小雅表示，“刚打开几秒，就能明显感觉到热量。”这种极致体验超出了许多人的认知。</p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center">10秒10度刷新行业记录</p><p style="font-size: 12px;padding: 0px">伫立在统帅空调面前，感受风口带来的温度，让很多人觉得很享受。经国家日用电器质量监督检测中心检测，统帅L.ONE空调启动正常出风后，温度变化速率最高可超过十秒十度，在2018AWE中再次刷新了行业记录。</p><p style="font-size: 12px;padding: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;text-align: center">统帅科技创造极致体验</p><p style="font-size: 12px;padding: 0px">针对年轻人对生活品质的追求，统帅科技力求为用户创造最极致的体验。统帅空调原创的“跃频技术”，业内首次将恒力矩补偿控制应用在高频域，突破原有的升频极限，从而实现速冷速热的最佳体验，为用户带来回归品质生活需求的极致享受。</p><p style="font-size: 12px;padding: 0px;text-align: center"></p></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">不止AWE，接下来统帅空调还有更多精彩内容，期待年轻人的加入。同时，3月8日-4月8日，统帅延续AWE的精彩开启品质节，巨献品质家电，畅享舒适“悠生活”。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p></p>
                                            </span>

                                    </div>
                                </div>
                                <div class="news_tip_date mews_mid">
                                    <div class="news_date o_df-show o_md-hide o_sm-hide o_xs-hide">
                                        <div class="news_date_day">
                                            03-09
                                        </div>
                                        <div class="news_date_year">
                                            2018
                                        </div>
                                    </div>
                                    <div class="news_date o_df-hide o_md-show o_sm-show o_xs-show">
                                        <span class="news_date_year">2018-</span>
                                        <span class="news_date_day">03-09</span>
                                    </div>
                                </div>
                            </div>
                            <div class="news_tip_icon mews_mid o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                                <a class="news_icon" href="20180309_781.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_781.shtml" target="_blank">
                                    <i class="iconfont icon-arrow-jiantou-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="o_g news_list

							news_nopic


							">
                    <div class="o_u o_df_1-12">
                    </div>
                    <div class="o_u o_df_10-12">
                        <div class="news_list_tip">





                            <div class="news_txt mews_mid">
                                <div class="news_tip_text mews_mid">
                                    <div class="news_text">
                                        <a href="20180309_780.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_780.shtml" target="_blank">
                                            <p class="news_tip_title">
                                                冬季用空调就怕热得慢 统帅空调行业首个实现10秒10度
                                            </p>
                                        </a>
                                        <span class="news_tip_content js_cutWord">

                                            </span>

                                        <span class="js_none_text">
                                                <p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp;3月8日，2018年中国家电及消费电子博览会（简称2018AWE）在上海召开，这场家电界的盛宴汇集了国内外众多家电品牌。现场，品牌们纷纷开展各种各样的互动游戏，与消费者们打成一片。其中，统帅冰箱展区的互动游戏却显得别树一帜，知名美妆博主被邀请到了现场，在统帅镜面中字智能冰箱的超大镜面外观的帮助下大秀化妆技术。“真是不可思议，冰箱面板竟然可以当做化妆镜！”来自上海的赵小姐流露出了对统帅冰箱的称赞。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp;&nbsp;AWE现场引发交互热潮</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; AWE现场，统帅冰箱旗下的明星产品镜面中字智能冰箱、新生代冰箱、L.ONE简约格调中字冰箱3款产品化身百宝箱，将自己的72般武艺向观众们“娓娓道来”。其中，统帅镜面中字智能冰箱为了展示自身-20℃到5℃的超宽变温技术，利用自身的“第五空间”帮助知名博主存储美妆产品，展示了自身超强的性能以及品质，也拉开了统帅品质节的序幕。不仅如此，其超大的镜面智慧屏幕还被当做了化妆镜，展示了别样的用途。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 此外，高颜值的统帅L.ONE简约格调中字冰箱的分区功能成为香水存储的重要场所，在现场的互动游戏中，统帅还邀请到了专业调香师为现场用户定制香水，打造专属的独特气味。而统帅L.ONE简约格调中字冰箱则邀请现场观众亲手触摸感知0接缝的圆润造型。“感觉今天来的真的很值得，不仅看到了这么多最新款高颜值的产品，而且还参与了游戏，了解了很多的美妆小知识。”观众小程告诉记者。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp;&nbsp;深植年轻社群，驱动产品创新</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 据了解，中国有接近2.5亿年轻人，这部分新崛起的85后、90后年轻社群已然成为了我国家电市场的主力军，具有十分巨大的消费潜力。在市场竞争加剧、行业洗牌加速的情况下，众多的家电企业纷纷转战年轻市场，来寻求新的发展。也正是源于对该种趋势的深入洞察，统帅电器2016年11月便宣布进行战略转型，成为了年轻市场的排头兵。承接着年轻化战略，统帅冰箱一直致力于科技创新，力求为消费者创造最佳使用体验。其旗下的冰箱产线也推出了一系列设计佳、功能简的高颜值产品，从更高程度上满足用户需求。例如此次亮相发布会的统帅L.ONE简约格调中字冰箱便解决了行业接缝难题，创新性采用的iPhone装配工艺真正实现了0接缝。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 为了最大程度上获取市场信息、满足用户需求，统帅冰箱不断地开展各种各样的交互活动。例如在薛之谦2017全国巡回演唱会上，统帅冰箱新生代系列便化身移动KTV，在互动当中聚拢了大量年轻社群，提升了品牌声量。统帅L.ONE简约格调中字冰箱与晁然拍摄的户外时尚街拍则向用户展现了时尚生活场景，从而提升了影响力。在一次次与年轻社群交互的过程中，统帅冰箱掌握了第一手市场需求，从而推动了产品革新。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 专家指出，消费升级时代，如何最大程度上满足消费者需求、赢得用户信任是企业应该思考的问题。品牌应该采取主动的姿态走进年轻社群，创新交互形式聚拢年轻社群，这样才能提升品牌声量，扩大品牌影响力。此次，统帅冰箱AWE的花样交互活动，不仅在游戏当中让消费者感受产品质量、了解产品功能，同时也为家电企业创新交互形式打开了新的思路。</p><p></p>
                                            </span>

                                    </div>
                                </div>
                                <div class="news_tip_date mews_mid">
                                    <div class="news_date o_df-show o_md-hide o_sm-hide o_xs-hide">
                                        <div class="news_date_day">
                                            03-09
                                        </div>
                                        <div class="news_date_year">
                                            2018
                                        </div>
                                    </div>
                                    <div class="news_date o_df-hide o_md-show o_sm-show o_xs-show">
                                        <span class="news_date_year">2018-</span>
                                        <span class="news_date_day">03-09</span>
                                    </div>
                                </div>
                            </div>
                            <div class="news_tip_icon mews_mid o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                                <a class="news_icon" href="20180309_780.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_780.shtml" target="_blank">
                                    <i class="iconfont icon-arrow-jiantou-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="o_g news_list

							news_nopic


							">
                    <div class="o_u o_df_1-12">
                    </div>
                    <div class="o_u o_df_10-12">
                        <div class="news_list_tip">





                            <div class="news_txt mews_mid">
                                <div class="news_tip_text mews_mid">
                                    <div class="news_text">
                                        <a href="20180309_779.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_779.shtml" target="_blank">
                                            <p class="news_tip_title">
                                                拒绝平庸 统帅冰箱AWE玩出别样“鲜”生活
                                            </p>
                                        </a>
                                        <span class="news_tip_content js_cutWord">

                                            </span>

                                        <span class="js_none_text">
                                                <p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp;3月8日，2018年中国家电及消费电子博览会（简称2018AWE）在上海召开，这场家电界的盛宴汇集了国内外众多家电品牌。现场，品牌们纷纷开展各种各样的互动游戏，与消费者们打成一片。其中，统帅冰箱展区的互动游戏却显得别树一帜，知名美妆博主被邀请到了现场，在统帅镜面中字智能冰箱的超大镜面外观的帮助下大秀化妆技术。“真是不可思议，冰箱面板竟然可以当做化妆镜！”来自上海的赵小姐流露出了对统帅冰箱的称赞。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp;&nbsp;AWE现场引发交互热潮</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; AWE现场，统帅冰箱旗下的明星产品镜面中字智能冰箱、新生代冰箱、L.ONE简约格调中字冰箱3款产品化身百宝箱，将自己的72般武艺向观众们“娓娓道来”。其中，统帅镜面中字智能冰箱为了展示自身-20℃到5℃的超宽变温技术，利用自身的“第五空间”帮助知名博主存储美妆产品，展示了自身超强的性能以及品质，也拉开了统帅品质节的序幕。不仅如此，其超大的镜面智慧屏幕还被当做了化妆镜，展示了别样的用途。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 此外，高颜值的统帅L.ONE简约格调中字冰箱的分区功能成为香水存储的重要场所，在现场的互动游戏中，统帅还邀请到了专业调香师为现场用户定制香水，打造专属的独特气味。而统帅L.ONE简约格调中字冰箱则邀请现场观众亲手触摸感知0接缝的圆润造型。“感觉今天来的真的很值得，不仅看到了这么多最新款高颜值的产品，而且还参与了游戏，了解了很多的美妆小知识。”观众小程告诉记者。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp;&nbsp;深植年轻社群，驱动产品创新</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 据了解，中国有接近2.5亿年轻人，这部分新崛起的85后、90后年轻社群已然成为了我国家电市场的主力军，具有十分巨大的消费潜力。在市场竞争加剧、行业洗牌加速的情况下，众多的家电企业纷纷转战年轻市场，来寻求新的发展。也正是源于对该种趋势的深入洞察，统帅电器2016年11月便宣布进行战略转型，成为了年轻市场的排头兵。承接着年轻化战略，统帅冰箱一直致力于科技创新，力求为消费者创造最佳使用体验。其旗下的冰箱产线也推出了一系列设计佳、功能简的高颜值产品，从更高程度上满足用户需求。例如此次亮相发布会的统帅L.ONE简约格调中字冰箱便解决了行业接缝难题，创新性采用的iPhone装配工艺真正实现了0接缝。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 为了最大程度上获取市场信息、满足用户需求，统帅冰箱不断地开展各种各样的交互活动。例如在薛之谦2017全国巡回演唱会上，统帅冰箱新生代系列便化身移动KTV，在互动当中聚拢了大量年轻社群，提升了品牌声量。统帅L.ONE简约格调中字冰箱与晁然拍摄的户外时尚街拍则向用户展现了时尚生活场景，从而提升了影响力。在一次次与年轻社群交互的过程中，统帅冰箱掌握了第一手市场需求，从而推动了产品革新。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 专家指出，消费升级时代，如何最大程度上满足消费者需求、赢得用户信任是企业应该思考的问题。品牌应该采取主动的姿态走进年轻社群，创新交互形式聚拢年轻社群，这样才能提升品牌声量，扩大品牌影响力。此次，统帅冰箱AWE的花样交互活动，不仅在游戏当中让消费者感受产品质量、了解产品功能，同时也为家电企业创新交互形式打开了新的思路。</p><p></p>
                                            </span>

                                    </div>
                                </div>
                                <div class="news_tip_date mews_mid">
                                    <div class="news_date o_df-show o_md-hide o_sm-hide o_xs-hide">
                                        <div class="news_date_day">
                                            03-09
                                        </div>
                                        <div class="news_date_year">
                                            2018
                                        </div>
                                    </div>
                                    <div class="news_date o_df-hide o_md-show o_sm-show o_xs-show">
                                        <span class="news_date_year">2018-</span>
                                        <span class="news_date_day">03-09</span>
                                    </div>
                                </div>
                            </div>
                            <div class="news_tip_icon mews_mid o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                                <a class="news_icon" href="20180309_779.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_779.shtml" target="_blank">
                                    <i class="iconfont icon-arrow-jiantou-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="o_g news_list

							news_nopic


							">
                    <div class="o_u o_df_1-12">
                    </div>
                    <div class="o_u o_df_10-12">
                        <div class="news_list_tip">





                            <div class="news_txt mews_mid">
                                <div class="news_tip_text mews_mid">
                                    <div class="news_text">
                                        <a href="20180309_778.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_778.shtml" target="_blank">
                                            <p class="news_tip_title">
                                                年轻家电难逃单品局限 统帅独家全品类年轻化
                                            </p>
                                        </a>
                                        <span class="news_tip_content js_cutWord">

                                            </span>

                                        <span class="js_none_text">
                                                <p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp;3月8日，2018年中国家电及消费电子博览会（简称2018AWE）在上海召开，这场家电界的盛宴汇集了国内外众多家电品牌。现场，品牌们纷纷开展各种各样的互动游戏，与消费者们打成一片。其中，统帅冰箱展区的互动游戏却显得别树一帜，知名美妆博主被邀请到了现场，在统帅镜面中字智能冰箱的超大镜面外观的帮助下大秀化妆技术。“真是不可思议，冰箱面板竟然可以当做化妆镜！”来自上海的赵小姐流露出了对统帅冰箱的称赞。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp;&nbsp;AWE现场引发交互热潮</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; AWE现场，统帅冰箱旗下的明星产品镜面中字智能冰箱、新生代冰箱、L.ONE简约格调中字冰箱3款产品化身百宝箱，将自己的72般武艺向观众们“娓娓道来”。其中，统帅镜面中字智能冰箱为了展示自身-20℃到5℃的超宽变温技术，利用自身的“第五空间”帮助知名博主存储美妆产品，展示了自身超强的性能以及品质，也拉开了统帅品质节的序幕。不仅如此，其超大的镜面智慧屏幕还被当做了化妆镜，展示了别样的用途。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 此外，高颜值的统帅L.ONE简约格调中字冰箱的分区功能成为香水存储的重要场所，在现场的互动游戏中，统帅还邀请到了专业调香师为现场用户定制香水，打造专属的独特气味。而统帅L.ONE简约格调中字冰箱则邀请现场观众亲手触摸感知0接缝的圆润造型。“感觉今天来的真的很值得，不仅看到了这么多最新款高颜值的产品，而且还参与了游戏，了解了很多的美妆小知识。”观众小程告诉记者。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp;&nbsp;深植年轻社群，驱动产品创新</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 据了解，中国有接近2.5亿年轻人，这部分新崛起的85后、90后年轻社群已然成为了我国家电市场的主力军，具有十分巨大的消费潜力。在市场竞争加剧、行业洗牌加速的情况下，众多的家电企业纷纷转战年轻市场，来寻求新的发展。也正是源于对该种趋势的深入洞察，统帅电器2016年11月便宣布进行战略转型，成为了年轻市场的排头兵。承接着年轻化战略，统帅冰箱一直致力于科技创新，力求为消费者创造最佳使用体验。其旗下的冰箱产线也推出了一系列设计佳、功能简的高颜值产品，从更高程度上满足用户需求。例如此次亮相发布会的统帅L.ONE简约格调中字冰箱便解决了行业接缝难题，创新性采用的iPhone装配工艺真正实现了0接缝。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px;text-align: center"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 为了最大程度上获取市场信息、满足用户需求，统帅冰箱不断地开展各种各样的交互活动。例如在薛之谦2017全国巡回演唱会上，统帅冰箱新生代系列便化身移动KTV，在互动当中聚拢了大量年轻社群，提升了品牌声量。统帅L.ONE简约格调中字冰箱与晁然拍摄的户外时尚街拍则向用户展现了时尚生活场景，从而提升了影响力。在一次次与年轻社群交互的过程中，统帅冰箱掌握了第一手市场需求，从而推动了产品革新。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: normal;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0px;white-space: normal;widows: 2;word-spacing: 0px;-webkit-text-stroke-width: 0px">&nbsp; &nbsp; &nbsp; 专家指出，消费升级时代，如何最大程度上满足消费者需求、赢得用户信任是企业应该思考的问题。品牌应该采取主动的姿态走进年轻社群，创新交互形式聚拢年轻社群，这样才能提升品牌声量，扩大品牌影响力。此次，统帅冰箱AWE的花样交互活动，不仅在游戏当中让消费者感受产品质量、了解产品功能，同时也为家电企业创新交互形式打开了新的思路。</p><p></p>
                                            </span>

                                    </div>
                                </div>
                                <div class="news_tip_date mews_mid">
                                    <div class="news_date o_df-show o_md-hide o_sm-hide o_xs-hide">
                                        <div class="news_date_day">
                                            03-09
                                        </div>
                                        <div class="news_date_year">
                                            2018
                                        </div>
                                    </div>
                                    <div class="news_date o_df-hide o_md-show o_sm-show o_xs-show">
                                        <span class="news_date_year">2018-</span>
                                        <span class="news_date_day">03-09</span>
                                    </div>
                                </div>
                            </div>
                            <div class="news_tip_icon mews_mid o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                                <a class="news_icon" href="20180309_778.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_778.shtml" target="_blank">
                                    <i class="iconfont icon-arrow-jiantou-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="o_g news_list

							news_nopic


							">
                    <div class="o_u o_df_1-12">
                    </div>
                    <div class="o_u o_df_10-12">
                        <div class="news_list_tip">





                            <div class="news_txt mews_mid">
                                <div class="news_tip_text mews_mid">
                                    <div class="news_text">
                                        <a href="20180309_777.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_777.shtml" target="_blank">
                                            <p class="news_tip_title">
                                                行业控制空调靠手，AWE现场统帅只动口不动手！
                                            </p>
                                        </a>
                                        <span class="news_tip_content js_cutWord">

                                            </span>

                                        <span class="js_none_text">
                                                <p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;white-space: normal">2018AWE在上海拉开序幕，统帅空调和年轻人也在现场玩起了的“理想温度”。掷骰子抽任务，做最美温度代言人、玩转语音黑科技、速热相框大变身，统帅展区成了年轻人的“轰趴馆”，空调也成了人气收割机。</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;white-space: normal"></p><p><p style="padding: 0px">亮出态度，做统帅温度代言人</p><p style="padding: 0px">在统帅空调展区内，年轻人举着异形手牌，用标语亮出自己的生活态度，在闪光灯下变身最美温度代言人。统帅空调百搭各种逗趣Pose，无论照片还是视频，高颜值的它也是通通Hold的住，看样子想要融入年轻人的家居风格也是妥妥的了。</p><p style="padding: 0px"></p><p style="padding: 0px">统帅说，空调也可以很“听话”</p><p style="padding: 0px">在没有遥控器的L.ONE卧室展厅也能随意调节空调？开关机、温度、送风方向，出风速度，全靠大家用说的。无论站在房间的哪个角落，统帅空调都能第1时间根据要求完成动作，年轻人都啧啧称奇，原来空调也可以这么“听话”。</p><p style="padding: 0px;text-align: center"></p></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;white-space: normal"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;white-space: normal"></p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;white-space: normal">造型百变的不止照片，更有相框</p><p style="font-size: 12px;padding: 0px;color: rgb(96, 96, 96);font-family: tahoma, arial, 宋体, sans-serif;white-space: normal"></p><p><p style="padding: 0px">一排相框摆在统帅空调前，都只是白纸，但一开空调相框里很快就出现了漫画小帅。参与者接受挑战为小帅配音，一会儿瑟瑟发抖，一会儿滋滋冒汗，一会儿干爽舒服，现场上演统帅版配音秀，年轻人也过了一把配音达人的瘾。</p><p style="padding: 0px;text-align: center"></p><p style="padding: 0px">直击AWE，统帅空调还有更多精彩不容错过，期待更多年轻人的加入。同时，3月8日-4月8日，统帅延续AWE的精彩开启品质节，巨献品质家电，畅享舒适“悠生活”。</p><p style="padding: 0px;text-align: center"></p></p><p></p>
                                            </span>

                                    </div>
                                </div>
                                <div class="news_tip_date mews_mid">
                                    <div class="news_date o_df-show o_md-hide o_sm-hide o_xs-hide">
                                        <div class="news_date_day">
                                            03-09
                                        </div>
                                        <div class="news_date_year">
                                            2018
                                        </div>
                                    </div>
                                    <div class="news_date o_df-hide o_md-show o_sm-show o_xs-show">
                                        <span class="news_date_year">2018-</span>
                                        <span class="news_date_day">03-09</span>
                                    </div>
                                </div>
                            </div>
                            <div class="news_tip_icon mews_mid o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                                <a class="news_icon" href="20180309_777.shtml.htm" tppabs="http://www.tongshuai.com/about/news/20180309_777.shtml" target="_blank">
                                    <i class="iconfont icon-arrow-jiantou-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--新闻中心列表END-->
        <!--分页-->
        <div id="sub" class="news_list_pagination">
            <div class="o_df-show o_sm-hide o_xs-hide pageMax">

            </div>
            <div class="o_df-hide o_sm-show o_xs-hide pageMiddle">

            </div>
            <div class="o_df-hide o_sm-hide o_xs-show pageMobile">

            </div>

        </div>
        <!--分页END-->


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
                            <a class="foot_link" href="../../life/index.jsp" tppabs="http://www.tongshuai.com/life/">悠生活</a>
                            <a class="foot_link" href="../brand/index.jsp" tppabs="http://www.tongshuai.com/about/brand/">关于统帅</a>
                            <a class="foot_link" href="index.jsp" tppabs="http://www.tongshuai.com/about/news/">新闻资讯</a>
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

                            <a class="foot_link" href="../../televisions/index.jsp" tppabs="http://www.tongshuai.com/televisions/">电视</a>

                            <a class="foot_link" href="../../laundry/index.jsp" tppabs="http://www.tongshuai.com/laundry/">洗衣机</a>

                            <a class="foot_link" href="../../air_conditioners/index.jsp" tppabs="http://www.tongshuai.com/air_conditioners/">空调</a>

                            <a class="foot_link" href="../../cooling/index.jsp" tppabs="http://www.tongshuai.com/cooling/">冰箱</a>

                            <a class="foot_link" href="../../freezer/index.jsp" tppabs="http://www.tongshuai.com/freezer/">冷柜</a>

                            <a class="foot_link" href="../../water_heater/index.jsp" tppabs="http://www.tongshuai.com/water_heater/">热水器</a>

                            <a class="foot_link" href="../../cooking_appliances/index.jsp" tppabs="http://www.tongshuai.com/cooking_appliances/">厨电</a>

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
                            <a href="../../contact/index.jsp" tppabs="http://www.tongshuai.com/contact/">联系我们</a>
                        </li>
                        <li>
                            <a href="../../service/help/index.jsp" tppabs="http://www.tongshuai.com/service/help/">帮助中心</a>
                        </li>
                        <li>
                            <a href="../../terms/index.jsp" tppabs="http://www.tongshuai.com/terms/">服务条款</a>
                        </li>
                        <li>
                            <a href="../../terms_conditions/index.jsp" tppabs="http://www.tongshuai.com/terms_conditions/">法律声明</a>
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
<script>
    $(function () {

        var bannerpic=$(".news_list_banner").attr("pic");
        var result=bannerpic.split(",");
        var bannerpic1=result[0];
        var bannerpic2=result[1];
        var bannerpic3=result[2];
        $(".js_recPic").attr("df",bannerpic1);
        $(".js_recPic").attr("lg",bannerpic2);
        $(".js_recPic").attr("md",bannerpic2);
        $(".js_recPic").attr("sm",bannerpic3);
        $(".js_recPic").attr("xs",bannerpic3);

        //PC端分页
        var pager = new pagination("#sub div.pageMax");
        pager.currPage = 0+1;
        pager.totalPage = 3;
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
        var pager = new pagination("#sub div.pageMiddle");
        pager.currPage = 0+1;
        pager.totalPage = 3;
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
        var pager = new pagination("#sub div.pageMobile");
        pager.currPage = 0+1;
        pager.totalPage = 3;
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



    })

</script>
<script type="text/javascript" src="../../../image.tongshuai.com/tongshuai/images/validform_v5.3.2_min.js" tppabs="http://image.tongshuai.com/tongshuai/images/validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="../../../image.tongshuai.com/tongshuai/images/news_list.js" tppabs="http://image.tongshuai.com/tongshuai/images/news_list.js"></script>
<script type="text/javascript" src="../../../image.tongshuai.com/tongshuai/images/templet_pagination.js" tppabs="http://image.tongshuai.com/tongshuai/images/templet_pagination.js"></script>
</body>

</html>
