
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset=utf-8"UTF-8">
    <title>悠生活-统帅官网</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui"/>
    <meta name="format-detection" content="telephone=no, email=no"/>

    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=10;IE=9; IE=8; IE=7; IE=EDGE">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/images/iconfont.css" tppabs="http://image.tongshuai.com/images/iconfont.css">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/images/l_base.css" tppabs="http://image.tongshuai.com/images/l_base.css">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/images/l_module.css" tppabs="http://image.tongshuai.com/images/l_module.css">
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
    <link rel="stylesheet" href="../images/mediaelementplayer.css" tppabs="http://www.tongshuai.com/images/mediaelementplayer.css">
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/tongshuai/images/life_style.css" tppabs="http://image.tongshuai.com/tongshuai/images/life_style.css">

</head>

<body class="">
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

        <!-- 首屏动画 END -->
        <!-- 导航 -->
        <div class="o_g l-nav">
            <!-- 一级导航 -->

            <!-- logo -->
            <div class="o_u o_df_2-12 o_xs_3-12">
                <a class="nav-logo" href="../index.jsp" tppabs="http://www.tongshuai.com/">
                    <img src="<%=request.getContextPath()%>/tongshuai/image.tongshuai.com/tongshuai/images/logo.png" tppabs="http://image.tongshuai.com/tongshuai/images/logo.png" />
                </a>
            </div>
            <!-- logo END -->
            <!-- 导航栏目 轻产品/悠生活、服务、会员-->
            <ul class="o_u o_df_7-12 o_df-center o_md-hide o_sm-hide o_xs-hide js_navSearchLgHide">
                <li class="nav-column js_column" column='0'>
                    <a href="javascript:;">
                        <div class="nav-column-box1"></div>
                        <img src="<%=request.getContextPath()%>/tongshuai/image.tongshuai.com/tongshuai/images/nav-pro.gif" tppabs="http://image.tongshuai.com/tongshuai/images/nav-pro.gif" class="o_lg-hide" />
                    </a>
                </li>
                <li class="nav-column js_column" column='1'>

                    <a href="index.jsp" tppabs="http://www.tongshuai.com/life/">
                        <div class="nav-column-box2"></div>
                        <img src="<%=request.getContextPath()%>/tongshuai/image.tongshuai.com/tongshuai/images/nav-life.gif" tppabs="http://image.tongshuai.com/tongshuai/images/nav-life.gif" class="o_lg-hide" />
                    </a>
                </li>
                <li class="nav-column js_column" column='2'>
                    <a href="<%=request.getContextPath()%>/tongshuai/www.tongshuai.com/member/index.jsp" tppabs="http://www.tongshuai.com/member/">
                        <div class="nav-column-box3"></div>
                    </a>
                </li>
                <li class="nav-column js_column" column='3'>
                    <a href="<%=request.getContextPath()%>/tongshuai/www.tongshuai.com/service/index.jsp" tppabs="http://www.tongshuai.com/service/">
                        <div class="nav-column-box4"></div>
                    </a>
                </li>
            </ul>
            <!-- 导航栏目 END-->
            <!-- 用户信息栏 sf/xl分辨率 -->
            <div class="o_u o_df_2-12 o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                <div class="nav-search js_hoverLine">
                    <input id="searchid"  class="easyui-textbox" />
                    <i class="iconfont icon-search js_jumpto_product_search" id="butSearch"></i>
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

                    <a class="login" href="<%=request.getContextPath()%>/tongshuai/user.tongshuai.com/reg.jsp">注册</a>
                    <a class="nav-chart" href="../tongshuai/user.tongshuai.com/reg.jsp" tppabs="http://www.tongshuai.com/cart/"><i class="iconfont icon-shoppingcart"></i>&nbsp;&nbsp;我的购物车</a>
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
                                <a href="../televisions/index.jsp">
                                    <div class="nav-mdbox-icon">
                                        <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" alt="" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                                    </div>
                                    <div class="nav-mdbox-name">电视</div>
                                </a>
                            </li>

                            <li>
                                <a href="../laundry/index.jsp">
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
                    <li><a href="index.jsp" tppabs="http://www.tongshuai.com/life/">悠生活<i class="iconfont icon-arrow-line-right"></i></a></li>
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
                    <a href="../televisions/index.jsp">
                        <div class="nav-mdbox-icon">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675979764712.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">电视</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../laundry/index.jsp">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674326261761.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">洗衣机</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../air_conditioners/index.jsp">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675048942901.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">空调</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../cooling/index.jsp">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223673848410014.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">冰箱</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../freezer/index.jsp">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223674715102970.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">冷柜</div>
                    </a>
                </li>

                <li class="second-column o_df-center">
                    <a href="../water_heater/index.jsp">
                        <div class="second-column-i">
                            <img lazy-src="../../image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" tppabs="http://image.tongshuai.com/tongshuai/navigate/headnav/qcp/W020171223675374488067.png" src="../../image.tongshuai.com/tongshuai/images/img1-1.png" tppabs="http://image.tongshuai.com/tongshuai/images/img1-1.png" />
                        </div>
                        <div class="second-column-name">热水器</div>
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
                <div class="btn_wrap_life">
                    <div class="btn_pup">
                        <a href="../about/brand/index.jsp" tppabs="http://www.tongshuai.com/about/brand/">
                            了解更多
                        </a>
                    </div>
                    <div class="btn_pup">
                        <a href="../about/news/index.jsp" tppabs="http://www.tongshuai.com/about/news/">
                            新闻动态
                        </a>
                    </div>
                </div>
            </div>
            <div class="o_u o_df_1-12 o_md_1-12 o_sm_1-12"></div>
            <div class="o_u o_df_7-12 o_md_6-12 o_sm_5-12 o_xs_2-2 aboutus_head_banner">
<%--
                <img  src="<%=request.getContextPath()%>/images/aboutus_banner_df.png" df="/images/aboutus_banner_df.png" lg="/images/aboutus_banner_lg.png" md="/images/aboutus_banner_md.png" sm="/images/aboutus_banner_md.png" xs="/images/aboutus_banner_xs.png" />
--%>             <img src="../images/aboutus_banner_df.png">
            </div>
        </div>
        <!-- 品牌简介banner END -->
        <div class="o_g life_wrap">

            <div class="life-style-player js_playerBox">
                <video id="player" class="o_df-hide js_jchg_video player" src="../../video.tongshuai.com/masvod/public/2017/12/24/20171224_160889162e4_r1_800k.mp4" tppabs="http://video.tongshuai.com/masvod/public/2017/12/24/20171224_160889162e4_r1_800k.mp4"
                       type="video/mp4"  controls="controls" preload="none" height="100%"></video>
                <a href="javascript:;" class="iconfont icon-close js_styleLifevideoClose"></a>
            </div>
            <div class="life-style-video-box js_styleVideoBox">
                <div class="life-style-video-cont js_styleVideoCont">
                    <a href="javascript:;" class="o_u o_df_3-12 o_lg_2-12 video-cont-left js_styleVideoContLeft"
                       data-alt="false">
                        <img class="js_recPic" src="../../image.tongshuai.com/tongshuai/images/img48-23.png" tppabs="http://image.tongshuai.com/tongshuai/images/img48-23.png" df="http://image.tongshuai.com/tongshuai/life/leisurelylife_banner/W020171223495607432867.png" alt="" />
                    </a>
                    <div class="video-cont-md js_videoMdShow o_g">
                        <div class="js_lifeStyleVideoSwipe o_u o_df_11-12" style="overflow: hidden;">
                            <ul class="o_u o_df_12-12 swiper-wrapper">
                                <li class="o_u o_df_12-12  video-cont-md-imgmax js_videoMdImgMaxL swiper-slide"
                                    data-index="1" data-gif="">
                                    <img class="js_recPic" src="../../image.tongshuai.com/tongshuai/images/img48-23.png" tppabs="http://image.tongshuai.com/tongshuai/images/img48-23.png" df="http://image.tongshuai.com/tongshuai/life/leisurelylife_banner/W020171223495607432867.png" width="100%" alt="" />
                                </li>
                                <li class=" o_u o_df_12-12  video-cont-md-imgmax js_videoMdImgMaxR swiper-slide"
                                    data-index="2" data-gif="">
                                    <img class="js_recPic" src="../../image.tongshuai.com/tongshuai/images/img48-23.png" tppabs="http://image.tongshuai.com/tongshuai/images/img48-23.png" df="http://image.tongshuai.com/tongshuai/life/leisurelylife_banner/W020171223495607083252.png" width="100%" alt="" />
                                </li>
                            </ul>
                        </div>
                        <div class=" video-cont-md-imgmin  o_u o_df_1-12 js_videoMdImgMin">
                            <img class="" src="../../image.tongshuai.com/tongshuai/images/img48-23.png" tppabs="http://image.tongshuai.com/tongshuai/images/img48-23.png" df="http://image.tongshuai.com/tongshuai/life/leisurelylife_banner/W020171223495607432867.png" alt="" />
                        </div>
                    </div>
                    <div class="o_u o_df_6-12 o_lg_8-12  o_md_12-12 o_sm_12-12 o_xs_12-12 video-cont-center">
                        <img src="../../image.tongshuai.com/tongshuai/images/style_life_title.png" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_title.png" alt="" />
                        <p>
                            我们崇尚时尚、简约、悠闲、舒适的生活方式<br/>将简约时尚的自然美学和返璞归真的生活哲学相融合，提出 “轻时尚 悠生活” 的主张<br/>希望所有人都可以从生活琐事的束缚中解放，享受生活的惬意
                        </p>
                        <div>
                            我们崇尚时尚、简约、悠闲、舒适的生活方式<br/>将简约时尚的自然美学和返璞归真的生活哲学相融合，提出 “轻时尚 悠生活” 的主张<br/>希望所有人都可以从生活琐事的束缚中解放，享受生活的惬意
                        </div>
                        <a href="javascript:;" class="js_lifeStylePlay"
                           data-src="../../video.tongshuai.com/masvod/public/2017/12/24/20171224_160889162e4_r1_800k.mp4" tppabs="http://video.tongshuai.com/masvod/public/2017/12/24/20171224_160889162e4_r1_800k.mp4"><img src="../../image.tongshuai.com/tongshuai/images/style_life_play.png" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_play.png" alt="" />
                        </a>
                    </div>
                    <a href="javascript:;" class="o_u o_df_3-12 o_lg_2-12 video-cont-right js_styleVideoContRight"
                       data-alt="false">
                        <img class="js_recPic" src="../../image.tongshuai.com/tongshuai/images/img48-23.png" tppabs="http://image.tongshuai.com/tongshuai/images/img48-23.png" df="http://image.tongshuai.com/tongshuai/life/leisurelylife_banner/W020171223495607083252.png" alt="" />
                    </a>
                </div>
                <div class=" o_g life-video-back-border js_lifeVideoBorder">
                    <div class="o_u o_df_2-12 o_xs_3-12 js_BannnerLeftClick" style="display: none"></div>
                    <div class="o_u o_df_2-12 o_xs_3-12 js_BannnerLeftClickSib "></div>
                    <div class="o_u o_df_2-12 sm-hide js_bannerRightHover"></div>
                    <div class="o_u o_df_1-12 o_xs_1-12 js_bannerRightHoverHide"></div>
                    <div class="o_u o_df_2-12  o_xs_4-12 back-gray js_bannerNoHover"></div>
                    <div class="o_u o_df_1-12 o_xs_1-12 js_bannerRightHoverHide"></div>
                    <div class="o_u o_df_2-12 js_bannerRightHoverShow" style="display: none"></div>
                    <div class="o_u o_df_2-12 sm-hide js_bannerLeftHover"></div>
                    <div class="o_u o_df_2-12 o_xs_3-12"></div>
                    <div class="o_u o_df_2-12 o_xs_3-12 js_BannnerRightClick" style="display: none"></div>
                </div>
            </div>



            <!-- 优生活 start-->
            <div class="life-style-photo-box js_lifeStylePhotoBox">
                <div class="o_u o_df_2-12 o_lg_1-12 o_md_1-12 o_sm_1-12 o_xs_1-12"></div>
                <div class="o_u o_df_8-12 o_lg_10-12 o_md_10-12 o_sm_10-12 o_xs_10-12">

                    <div class="life-style-photo-cur-text js_lifeStyelGoodLifeDown beauty_text">
                        <img src="../../image.tongshuai.com/tongshuai/images/style_photo_1_text.png" tppabs="http://image.tongshuai.com/tongshuai/images/style_photo_1_text.png" alt="" />
                        <p class="js_lifeStyelGoodLifeText">
                            我们将对生活的理解转化成产品语言，并注入每一件统帅产品的基因中<br/>希望家电这一长久陪伴于你的生活物品，可以与你完美契合，给你悠然惬意的生活
                        </p>
                    </div>

                    <div class="life-style-photo-cur-text js_lifeStyelGoodLifeDown beauty_text">
                        <img src="../../image.tongshuai.com/tongshuai/images/style_photo_1_text.png" tppabs="http://image.tongshuai.com/tongshuai/images/style_photo_1_text.png" alt="" />
                        <p class="js_lifeStyelGoodLifeText">
                            我们将对生活的理解转化成产品语言，并注入每一件统帅产品的基因中<br/>希望家电这一长久陪伴于你的生活物品，可以与你完美契合，给你悠然惬意的生活
                        </p>
                    </div>

                    <div class="life-style-photo-cur-text js_lifeStyelGoodLifeDown beauty_text">
                        <img src="../../image.tongshuai.com/tongshuai/images/style_photo_1_text.png" tppabs="http://image.tongshuai.com/tongshuai/images/style_photo_1_text.png" alt="" />
                        <p class="js_lifeStyelGoodLifeText">
                            我们将对生活的理解转化成产品语言，并注入每一件统帅产品的基因中<br/>希望家电这一长久陪伴于你的生活物品，可以与你完美契合，给你悠然惬意的生活
                        </p>
                    </div>


                </div>
                <div class="photo-back-border o_u o_df_2-2 ">
                    <div class=" o_u o_df_2-12">
                        <div class="photo-back-border-red"></div>
                    </div>
                    <div class=" o_u  o_df_8-12">
                        <div class="photo-back-border-red"></div>
                    </div>
                    <div class="  o_u o_df_2-12">
                        <div class=""></div>
                    </div>
                </div>
            </div>
            <!-- 优生活 END-->
            <!-- 核心优势 -->
            <div class="life-style-superiority js_superiorityBox " data-type="1">
                <div class="o_u o_df_4-12 superiority-imgblank-md ">
                    <div>
                    </div>
                </div>
                <ul class="o_u o_df_4-12 o_md_12-12 o_sm_12-12 o_xs_12-12 js_superiorityCenter " stat="1">
                    <li class="o_u o_df_12-12  ">
                        <p>享用海尔全球设计研发资源<br/>确保统帅独特的品牌个性</p>
                    </li>
                    <li class="o_u o_df_12-12 o_md_4-12 o_sm_4-12 o_xs_4-12">
                        <h4 class="data-num js-scroll-num" data-num="10">10</h4>
                        <!--<h4 class="xs-show">10</h4>-->
                        <span>大综合研发中心</span>
                    </li>
                    <li class="o_u o_df_12-12 o_md_4-12 o_sm_4-12 o_xs_4-12">
                        <h4 class="data-num js-scroll-num" data-num="6">6</h4>
                        <!--<h4 class="xs-show">6</h4>-->
                        <span>大设计分部</span>
                    </li>
                    <li class="o_u o_df_12-12 o_md_4-12 o_sm_4-12 o_xs_4-12">
                        <h4 class="data-num js-scroll-num" data-num="18">18</h4>
                        <!--<h4 class="xs-show">18</h4>-->
                        <span>大设计中心</span>
                    </li>
                    <li class="o_u o_df_12-12 o_md_4-12 o_sm_6-12 o_xs_6-12  superiority-xs-down-left">
                        <h4 class="data-num js-scroll-num" data-num="28">28</h4>
                        <!--<h4 class="xs-show">28</h4>-->

                        <span>个国际研发机构</span>
                    </li>
                    <li class="o_u o_df_12-12 o_md_4-12 o_sm_6-12 o_xs_6-12 superiority-xs-down-right">
                        <h4 class="data-num js-scroll-num js-scroll-more" data-num="300">300</h4>
                        <!--<h4 class="xs-show">300</h4>-->
                        <span>位国际设计师</span>
                    </li>
                </ul>
                <ul class="o_u o_df_4-12 o_md_12-12 o_sm_12-12 o_xs_12-12 js_superiorityCenter" style="display: none;">
                    <li class="o_u o_df_12-12  ">
                        <p>完全承接海尔售后服务体系<br/>保障统帅全方位服务体系</p>
                    </li>
                    <li class="o_u o_df_12-12 o_md_4-12 o_sm_4-12 o_xs_4-12">
                        <h4 class="data-num js-scroll-num" data-num="36">36</h4>
                        <span>个设备中心</span>
                    </li>
                    <li class="o_u o_df_12-12 o_md_4-12 o_sm_4-12 o_xs_4-12">
                        <h4 class="data-num js-scroll-num" data-num="83">83</h4>
                        <span>个物流配送中心</span>
                    </li>
                    <li class="o_u o_df_12-12 o_md_4-12 o_sm_4-12 o_xs_4-12">
                        <h4 class="data-num js-scroll-num js-scroll-more" data-num="300">300</h4>
                        <!--<h4  class="data-num js-scroll-num js-scroll-more"  data-num="300" ><sup>+</sup></h4>-->
                        <span>万㎡仓储资源</span>
                    </li>
                    <li class="o_u o_df_12-12 o_md_4-12 o_sm_6-12 o_xs_6-12">
                        <h4 class="data-num js-scroll-num js-scroll-more" data-num="6000">6000</h4>
                        <!--<h4 class="data-num js-scroll-num js-scroll-more"  data-num="6000" ><sup>+</sup></h4>-->
                        <span>家服务售后网点</span>
                    </li>
                    <li class="o_u o_df_12-12 o_md_4-12 o_sm_6-12 o_xs_6-12">
                        <!--<h4 class="data-num js-scroll-num js-scroll-more"  data-num="24" ><sup>+</sup></h4>-->
                        <h4 class="data-num js-scroll-num js-scroll-more" data-num="24">24</h4>
                        <span>小时响应</span>
                    </li>
                </ul>
                <div class="superiority-xs-modile">
                    <div class="superiority-left-text-xs o_u o_xs_12-12">
                        <div class="o_u o_df_4-12 xs-img-box">
                            <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_1min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_1min.jpg" height="100%" alt="" />
                        </div>
                        <div class="o_u o_df_1-12"></div>
                        <div class="superiority-left-down o_u o_df_10-12 o_xs_6-12">
                            <h3>简约是不会褪色的时尚</h3>
                            <p>来自国际顶级设计大咖倾心打造的产品，重新诠释时尚简约，干净简洁的设计摒除一切多余繁杂，与环境自然相融，用至简元素勾勒出时尚家居格调</p>
                        </div>
                        <div class="o_u o_df_1-12"></div>
                    </div>
                    <div class="superiority-right-text-xs o_u o_xs_12-12">
                        <div class="o_u o_df_4-12 xs-img-box">
                            <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_2min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_2min.jpg" height="100%" alt="" />
                        </div>
                        <div class="o_u o_df_1-12"></div>
                        <div class="superiority-left-down o_u o_df_10-12 o_xs_6-12">
                            <h3>完美的体验是恰到好处</h3>
                            <p>返璞归真，追求家电基础功能的精益求精，用心锻造高品质、不花哨的全系产品，为用户提供恰到好处的功能满足，让用户从生活琐事中解放</p>
                        </div>
                        <div class="o_u o_df_1-12"></div>
                    </div>
                    <ul class="o_u o_df_4-12 o_md_12-12 o_sm_12-12 o_xs_12-12 js_superiorityCenter">
                        <li class="o_u o_df_12-12  ">
                            <p>完全承接海尔售后服务体系<br/>保障统帅全方位服务体系</p>
                        </li>
                        <li class="o_u o_df_12-12 o_md_4-12 o_sm_4-12 o_xs_4-12">
                            <h4>36</h4>
                            <span>个设备中心</span>
                        </li>
                        <li class="o_u o_df_12-12 o_md_4-12 o_sm_4-12 o_xs_4-12">
                            <h4>83</h4>
                            <span>个物流配送中心</span>
                        </li>
                        <li class="o_u o_df_12-12 o_md_4-12 o_sm_4-12 o_xs_4-12">
                            <h4>300<sup>+</sup></h4>
                            <span>万㎡仓储资源</span>
                        </li>
                        <li class="o_u o_df_12-12 o_md_6-12 o_sm_6-12 o_xs_6-12 superiority-xs-down-left">
                            <h4>6000<sup>+</sup></h4>
                            <span>家服务售后网点</span>
                        </li>
                        <li class="o_u o_df_12-12 o_md_6-12 o_sm_6-12 o_xs_6-12 superiority-xs-down-right">
                            <h4>24<sup>+</sup></h4>
                            <span>小时响应</span>
                        </li>
                    </ul>
                    <div class="superiority-left-text-xs o_u o_xs_12-12">
                        <div class="o_u o_df_4-12 xs-img-box">
                            <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_3min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_3min.jpg" height="100%" alt="" />
                        </div>
                        <div class="o_u o_df_1-12"></div>
                        <div class="superiority-left-down o_u o_df_10-12 o_xs_6-12">
                            <h3>品质是亘古不变的追求</h3>
                            <p>完善流程制造体系，实现全流程的质量预防，同时建立管控体系、改善等体系，锻造产品卓越品质，只为给用户可陪伴一生的产品</p>
                        </div>
                        <div class="o_u o_df_1-12"></div>
                    </div>
                    <div class="superiority-right-text-xs o_u o_xs_12-12">
                        <div class="o_u o_df_4-12 xs-img-box">
                            <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_4min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_4min.jpg" height="100%" alt="" />
                        </div>
                        <div class="o_u o_df_1-12"></div>
                        <div class="superiority-left-down o_u o_df_10-12 o_xs_6-12">
                            <h3>服务是贴心的无形陪伴</h3>
                            <p>全国热线提供订单执行、渠道网络、促销活动等专业服务。完全承接海尔集团售后服务网点，实现24小时响应、按约送达、送装同步等服务</p>
                        </div>
                        <div class="o_u o_df_1-12"></div>
                    </div>
                </div>
                <div class="o_u o_df_4-12 superiority-imgblank-md"></div>
                <div class="superiority-imgbox js_superiorityImgBox ">

                    <div class="o_u o_df_4-12 o_md_5-12 o_sm_5-12 o_xs_12-12 superiority-left-box js_superioritySwiperLeft">
                        <div class="swiper-wrapper">
                            <div class="superiority-left js_lifeStyleSuperiorityL swiper-slide o_u o_df_12-12 o_xs_12-12">
                                <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_3min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_3min.jpg" alt="" />
                                <a href="javascript:;"
                                   class="superiority-img-btn 1111 iconfont icon-arrow-jiantou-left js_superiorityLeftBtn "></a>
                                <div class="superiority-left-cont ">
                                    <img src="../../image.tongshuai.com/tongshuai/images/superiority-left-cont3.png" tppabs="http://image.tongshuai.com/tongshuai/images/superiority-left-cont3.png" alt="" />
                                    <h3>是亘古不变的追求</h3>
                                    <p>完善流程制造体系，实现全流程的质量预防，同时建立管控体系、改善等体系，锻造产品卓越品质，只为给用户可陪伴一生的产品</p>
                                </div>
                            </div>
                            <div class="superiority-left superiority-left2 js_lifeStyleSuperiorityL swiper-slide o_u o_df_12-12 o_xs_12-12">
                                <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_1min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_1min.jpg" alt="" />
                                <a href="javascript:;"
                                   class=" js_superiorityLeftBtn superiority-img-btn iconfont icon-arrow-jiantou-left"></a>
                                <div class="superiority-left-cont ">
                                    <img src="../../image.tongshuai.com/tongshuai/images/superiority-left-cont1.png" tppabs="http://image.tongshuai.com/tongshuai/images/superiority-left-cont1.png" alt="" />
                                    <h3>是不会褪色的时尚</h3>
                                    <p>来自国际顶级设计大咖倾心打造的产品，重新诠释时尚简约，干净简洁的设计摒除一切多余繁杂，与环境自然相融，用至简元素勾勒出时尚家居格调</p>
                                </div>
                            </div>

                            <a href="javascript:;"
                               class="js_liftSuperiorityLeft superiority-left-btn iconfont icon-arrow-jiantou-left"></a>
                        </div>
                    </div>
                    <div class="o_u o_df_4-12 o_md_2-12  o_sm_2-12 o_xs_2-12 superiority-minbox js_superiorityJt"
                         style="display: none">
                        <div class="superiority-left-min js_superiorityLeftMin">
                            <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_3min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_3min.jpg" height="100%" alt="" />
                            <a href="javascript:;" class="iconfont js_superiorityRightBtn  icon-arrow-jiantou-right "></a>
                        </div>
                        <div class="superiority-right-min js_superiorityLeftMin">
                            <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_4min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_4min.jpg" height="100%" alt="" />
                            <a href="javascript:;" class="iconfont js_superiorityLeftBtn icon-arrow-jiantou-left"></a>
                        </div>
                    </div>
                    <div class="o_u o_df_4-12 o_md_2-12  o_sm_2-12 o_xs_2-12 superiority-minbox js_superiorityJt">
                        <div class="superiority-left-min js_superiorityLeftMin">
                            <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_1min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_1min.jpg" height="100%" alt="" />
                            <a href="javascript:;" class="iconfont js_superiorityRightBtn icon-arrow-jiantou-right"></a>
                        </div>
                        <div class="superiority-right-min js_superiorityLeftMin">
                            <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_2min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_2min.jpg" height="100%" alt="" />
                            <a href="javascript:;" class="iconfont  js_superiorityLeftBtn  icon-arrow-jiantou-left"></a>
                        </div>
                    </div>
                    <div class="o_u o_df_4-12  o_md_5-12  o_sm_5-12 o_xs_12-12 superiority-left-box js_superioritySwiperRight">
                        <div class="swiper-wrapper">
                            <a href="javascript:;"
                               class="superiority-right-btn js_liftSuperiorityRight iconfont icon-arrow-jiantou-right "></a>
                            <div class="superiority-right js_lifeStyleSuperiorityL swiper-slide o_u o_df_12-12 o_xs_4-12">
                                <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_4min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_4min.jpg" alt="" />
                                <a href="javascript:;"
                                   class="superiority-img-btn iconfont icon-arrow-jiantou-right js_superiorityRightBtn"></a>
                                <div class="superiority-left-cont ">
                                    <img src="../../image.tongshuai.com/tongshuai/images/superiority-left-cont4.png" tppabs="http://image.tongshuai.com/tongshuai/images/superiority-left-cont4.png" alt="" />
                                    <h3>是贴心的无形陪伴</h3>
                                    <p>全国热线提供订单执行、渠道网络、促销活动等专业服务。完全承接海尔集团售后服务网点，实现24小时响应、按约送达、送装同步等服务</p>
                                </div>
                            </div>
                            <div class="superiority-right superiority-right2 js_lifeStyleSuperiorityL swiper-slide o_u o_df_12-12 o_xs_4-12">
                                <img src="../../image.tongshuai.com/tongshuai/images/style_life_superiority_2min.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/style_life_superiority_2min.jpg" alt="" />
                                <a href="javascript:;"
                                   class="superiority-img-btn iconfont icon-arrow-jiantou-right js_superiorityRightBtn"></a>
                                <div class="superiority-left-cont ">
                                    <img src="../../image.tongshuai.com/tongshuai/images/superiority-left-cont2.png" tppabs="http://image.tongshuai.com/tongshuai/images/superiority-left-cont2.png" alt="" />
                                    <h3>的体验是恰到好处</h3>
                                    <p>返璞归真，追求家电基础功能的精益求精，用心锻造高品质、不花哨的全系产品，为用户提供恰到好处的功能满足，让用户从生活琐事中解放</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="js_superiorityDownText" >
                        <div class="superiority-left-down-lg o_u o_df_4-12 o_md_5-12 o_sm_5-12 o_xs_12-12">
                            <div class="o_u o_df_1-12"></div>
                            <div class="superiority-left-down o_u o_df_10-12 o_xs_4-12">
                                <h3>品质是亘古不变的追求</h3>
                                <p>完善流程制造体系，实现全流程的质量预防，同时建立管控体系、改善等体系，锻造产品卓越品质，只为给用户可陪伴一生的产品</p>
                            </div>
                            <div class="o_u o_df_1-12"></div>
                        </div>
                        <div class="o_u o_df_4-12 o_md_2-12 o_sm_2-12 "></div>
                        <div class="superiority-left-down-lg o_u o_df_4-12 o_md_5-12 o_sm_5-12 o_xs_12-12">
                            <div class="o_u o_df_1-12"></div>
                            <div class="superiority-right-down o_u o_df_10-12 o_xs_4-12">
                                <h3>服务是贴心的无形陪伴</h3>
                                <p>全国热线提供订单执行、渠道网络、促销活动等专业服务。完全承接海尔集团售后服务网点，实现24小时响应、按约送达、送装同步等服务</p>
                            </div>
                            <div class="o_u o_df_1-12"></div>
                        </div>
                    </div>
                    <div class="js_superiorityDownText" style="display: none;">
                        <div class="superiority-left-down-lg o_u o_df_4-12 o_md_5-12 o_sm_5-12 o_xs_12-12">
                            <div class="o_u o_df_1-12"></div>
                            <div class="superiority-left-down o_u o_df_10-12 o_xs_4-12">
                                <h3>简约是不会褪色的时尚</h3>
                                <p>来自国际顶级设计大咖倾心打造的产品，重新诠释时尚简约，干净简洁的设计摒除一切多余繁杂，与环境自然相融，用至简元素勾勒出时尚家居格调</p>
                            </div>
                            <div class="o_u o_df_1-12"></div>
                        </div>
                        <div class="o_u o_df_4-12 o_md_2-12 o_sm_2-12 "></div>
                        <div class="superiority-left-down-lg o_u o_df_4-12 o_md_5-12 o_sm_5-12 o_xs_12-12">
                            <div class="o_u o_df_1-12"></div>
                            <div class="superiority-right-down o_u o_df_10-12 o_xs_4-12">
                                <h3>完美的体验是恰到好处</h3>
                                <p>返璞归真，追求家电基础功能的精益求精，用心锻造高品质、不花哨的全系产品，为用户提供恰到好处的功能满足，让用户从生活琐事中解放</p>
                            </div>
                            <div class="o_u o_df_1-12"></div>
                        </div>
                    </div>



                </div>
            </div>

            <!-- 真实案例 -->
            <div class="life-style-case">
                <div class="o_u o_df_1-12 o_md_2-12 o_sm_2-12 o_xs_1-12 case-photo-left js_lifeStyleCaseLeft">
                    <a href="javascript:;" class=" iconfont icon-arrow-jiantou-left js_lifeStyleCaseLeftBtn"></a>
                </div>

                <div class="o_u o_df_4-12  o_md_8-12  o_sm_8-12 o_xs_10-12 life-style-case-photo ">
                    <div class="js_lifeStyleCasePhoto life-case-photo-swiper" style="overflow: hidden;">
                        <div class="swiper-wrapper" id="lifepic">

                            <div class="swiper-slide" data-index="">
                                <img src="../../image.tongshuai.com/tongshuai/life/leisurelylife_life/W020171225658445178067.jpg"  width="100%" alt="" />
                            </div>

                            <div class="swiper-slide" data-index="">
                                <img src="../../image.tongshuai.com/tongshuai/life/leisurelylife_life/W020171225658445178067.jpg"  width="100%" alt="" />
                            </div>

                            <div class="swiper-slide" data-index="">
                                <img src="../../image.tongshuai.com/tongshuai/life/leisurelylife_life/W020171225658445178067.jpg" width="100%" alt="" />
                            </div>

                        </div>
                    </div>


                    <div class="o_u o_df_9-12 life-style-case-photo-min js_casePhotoMinLeft">
                        <img src="" alt="" />
                    </div>
                    <div class="o_u o_df_9-12 case-photo-min-left  js_casePhotoMinRight ">
                        <img src="" alt="" />
                    </div>
                </div>

                <div class="o_u o_df_1-12 o_md_2-12 o_sm_2-12 o_xs_1-12 case-photo-right js_lifeStyleCaseRight">
                    <a href="javascript:;" class=" iconfont icon-arrow-jiantou-right js_lifeStyleCaseRightBtn"></a>
                    <ul class="case-photo-nub-btn js_casePhotoNub">
                        <li>03</li>
                        <li>02</li>
                        <li class="cur">01</li>
                    </ul>
                </div>
                <div class="o_u o_df_1-12 o_md_2-12  o_sm_2-12  o_xs_2-12"></div>
                <ul class="o_u o_df_4-12 o_md_8-12  o_sm_8-12  o_xs_8-12 life-case-text-box js_lifeStyleCaseText">

                    <li class="cur">
                        <img src="../../image.tongshuai.com/tongshuai/images/life_title.png" tppabs="http://image.tongshuai.com/tongshuai/images/life_title.png" alt="" class="life_title_pic" />
                        <div class="life-case-text"><img src="../../image.tongshuai.com/tongshuai/images/life-style-case-titleleft.png" tppabs="http://image.tongshuai.com/tongshuai/images/life-style-case-titleleft.png" class="left" alt="" />
                            结缘统帅是同事与目前的推荐，而我的理工男丈夫又对家电的科技情有独钟。人与家电通过网络的联系越来越紧密，选择家电，还是要有点科技含量。
                            <img src="../../image.tongshuai.com/tongshuai/images/life-style-case-titleright.png" tppabs="http://image.tongshuai.com/tongshuai/images/life-style-case-titleright.png" class="right" alt="" /></div>
                        <div class="life-case-text-down">
                            <p>
                                温暖幸福的郭女士夫妇
                            </p>
                            <span>统帅全套家电</span>
                        </div>
                    </li>

                    <li class="cur">
                        <img src="../../image.tongshuai.com/tongshuai/images/life_title.png" tppabs="http://image.tongshuai.com/tongshuai/images/life_title.png" alt="" class="life_title_pic" />
                        <div class="life-case-text"><img src="../../image.tongshuai.com/tongshuai/images/life-style-case-titleleft.png" tppabs="http://image.tongshuai.com/tongshuai/images/life-style-case-titleleft.png" class="left" alt="" />
                            我俩和孩子都特喜欢多啦A梦，因为他代表着梦想、勇敢、陪伴。收到这台空调时，儿子开心的不得了，还没用教就学会了使用，希望它能像多啦A梦一样陪伴着儿子
                            <img src="../../image.tongshuai.com/tongshuai/images/life-style-case-titleright.png" tppabs="http://image.tongshuai.com/tongshuai/images/life-style-case-titleright.png" class="right" alt="" /></div>
                        <div class="life-case-text-down">
                            <p>
                                时尚辣妈吴女士夫妇
                            </p>
                            <span>统帅多啦A梦定制冰箱</span>
                        </div>
                    </li>

                    <li class="cur">
                        <img src="../../image.tongshuai.com/tongshuai/images/life_title.png" tppabs="http://image.tongshuai.com/tongshuai/images/life_title.png" alt="" class="life_title_pic" />
                        <div class="life-case-text"><img src="../../image.tongshuai.com/tongshuai/images/life-style-case-titleleft.png" tppabs="http://image.tongshuai.com/tongshuai/images/life-style-case-titleleft.png" class="left" alt="" />
                            终于有了自己的家，选家电时觉得统帅简约的风格特别符合，一口气买了不少。明年夏天热的话，再装空调也要统帅的，这样一家子就齐全了。
                            <img src="../../image.tongshuai.com/tongshuai/images/life-style-case-titleright.png" tppabs="http://image.tongshuai.com/tongshuai/images/life-style-case-titleright.png" class="right" alt="" /></div>
                        <div class="life-case-text-down">
                            <p>
                                延边小城的幸福新人
                            </p>
                            <span>统帅全套家电</span>
                        </div>
                    </li>

                </ul>
                <div class="o_u o_df_1-12  o_md_2-12"></div>
                <div class="life-style-case-back-red">

                </div>
            </div>

            <!-- 创造优生活 -->

            <div class="life-style-create">
                <div class="life-style-create-cont-box">
                    <div class="o_u o_df_1-12 create-left-btn">
                        <a href="javascript:;"
                           class="iconfont  life-style-create-btn icon-arrow-jiantou-left  js_lifeStyleCreateLeftBtn"></a>
                    </div>
                    <div class="o_u life-style-create-cont js_lifeStyleCont o_sm_10-12 o_xs_10-12">
                        <div>
                            <div class="create-title-img ">
                                <img src="../../image.tongshuai.com/tongshuai/images/life-style-create-cont-title.png" tppabs="http://image.tongshuai.com/tongshuai/images/life-style-create-cont-title.png" width="100%" alt="" />
                            </div>

                            <div class="o_u product-list-title o_sm_10-12 o_xs_12-12">
                                <span class="o_u o_sm_12-12 o_xs_12-12">产品推荐：</span>
                                <div class="js_lifeStyleCreateTop product-list-title-box o_u o_sm_12-12 o_xs_12-12">
                                    <ul id="series_name" class="swiper-wrapper o_u o_sm_12-12 o_xs_12-12">
                                        <li class="o_u swiper-slide"></li>
                                        <li class="o_u swiper-slide"></li>
                                        <li class="o_u swiper-slide"></li>
                                    </ul>
                                </div>
                            </div>
                            <div id="series_txt" class="product-list-cont o_u o_sm_2-2 o_xs_2-2">

                                <p class="js_lifeStyleCreateTitle">
                                    简洁的外观设计、简单的操作，给你智慧、节能、舒适的美好生活体验
                                </p>

                                <!-- 产品推荐轮播 start -->
                                <div class="js_lifeStyleCreateSwipe lbindex">
                                    <ul class="swiper-wrapper">


                                        <li class="o_u o_df_6-12 swiper-slide">
                                            <div class="o_u o_df_2-2">
                                                <div class="o_u o_df_4-12 o_sm_11-12 o_xs_11-12  list-cont-photo">
                                                    <a href="../televisions/20171213_621.shtml.htm" tppabs="http://www.tongshuai.com/televisions/20171213_621.shtml">
                                                        <img src=""  alt="" />
                                                    </a>
                                                </div>
                                                <div class="o_u o_df_8-12 o_sm_11-12 o_xs_11-12 list-cont-text">
                                                    <a href="../televisions/20171213_621.shtml.htm" tppabs="http://www.tongshuai.com/televisions/20171213_621.shtml">
                                                        <p>
                                                            统帅人工智能电视
                                                        </p>
                                                    </a>
                                                    <span>T65FUA</span>
                                                    <i>¥
                                                        14999
                                                    </i>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="o_u o_df_6-12 swiper-slide">
                                            <div class="o_u o_df_2-2">
                                                <div class="o_u o_df_4-12 o_sm_11-12 o_xs_11-12  list-cont-photo">
                                                    <a href="../televisions/20171213_619.shtml.htm" tppabs="http://www.tongshuai.com/televisions/20171213_619.shtml">
                                                        <img src=""  alt="" />
                                                    </a>
                                                </div>
                                                <div class="o_u o_df_8-12 o_sm_11-12 o_xs_11-12 list-cont-text">
                                                    <a href="../televisions/20171213_619.shtml.htm" tppabs="http://www.tongshuai.com/televisions/20171213_619.shtml">
                                                        <p>
                                                            统帅人工智能电视
                                                        </p>
                                                    </a>
                                                    <span>T55FUA</span>
                                                    <i>¥
                                                        6999
                                                    </i>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="o_u o_df_6-12 swiper-slide">
                                            <div class="o_u o_df_2-2">
                                                <div class="o_u o_df_4-12 o_sm_11-12 o_xs_11-12  list-cont-photo">
                                                    <a href="../laundry/20171215_637.shtml.htm" tppabs="http://www.tongshuai.com/laundry/20171215_637.shtml">
                                                        <img src="../../image.tongshuai.com/tongshuai/laundry/W020171215702728858831.jpg" tppabs="http://image.tongshuai.com/tongshuai/laundry/W020171215702728858831.jpg" alt="" />
                                                    </a>
                                                </div>
                                                <div class="o_u o_df_8-12 o_sm_11-12 o_xs_11-12 list-cont-text">
                                                    <a href="../laundry/20171215_637.shtml.htm" tppabs="http://www.tongshuai.com/laundry/20171215_637.shtml">
                                                        <p>
                                                            10kg FPA直驱变频滚筒洗衣机
                                                        </p>
                                                    </a>
                                                    <span>TQG100-BX1281</span>
                                                    <i>¥
                                                        4699
                                                    </i>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="o_u o_df_6-12 swiper-slide">
                                            <div class="o_u o_df_2-2">
                                                <div class="o_u o_df_4-12 o_sm_11-12 o_xs_11-12  list-cont-photo">
                                                    <a href="../laundry/20171215_634.shtml.htm" tppabs="http://www.tongshuai.com/laundry/20171215_634.shtml">
                                                        <img src="../../image.tongshuai.com/tongshuai/laundry/W020171215481840749627.jpg" tppabs="http://image.tongshuai.com/tongshuai/laundry/W020171215481840749627.jpg" alt="" />
                                                    </a>
                                                </div>
                                                <div class="o_u o_df_8-12 o_sm_11-12 o_xs_11-12 list-cont-text">
                                                    <a href="../laundry/20171215_634.shtml.htm" tppabs="http://www.tongshuai.com/laundry/20171215_634.shtml">
                                                        <p>
                                                            10kg直驱变频洗烘一体滚筒洗衣机
                                                        </p>
                                                    </a>
                                                    <span>TQG100-HB1481U1</span>
                                                    <i>¥
                                                        6999
                                                    </i>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="o_u o_df_6-12 swiper-slide">
                                            <div class="o_u o_df_2-2">
                                                <div class="o_u o_df_4-12 o_sm_11-12 o_xs_11-12  list-cont-photo">
                                                    <a href="../air_conditioners/20171214_633.shtml.htm" tppabs="http://www.tongshuai.com/air_conditioners/20171214_633.shtml">
                                                        <img src="../../image.tongshuai.com/tongshuai/air_conditioners/W020171216393354350207.jpg" tppabs="http://image.tongshuai.com/tongshuai/air_conditioners/W020171216393354350207.jpg" alt="" />
                                                    </a>
                                                </div>
                                                <div class="o_u o_df_8-12 o_sm_11-12 o_xs_11-12 list-cont-text">
                                                    <a href="../air_conditioners/20171214_633.shtml.htm" tppabs="http://www.tongshuai.com/air_conditioners/20171214_633.shtml">
                                                        <p>
                                                            统帅至尚自清洁3匹变频空调
                                                        </p>
                                                    </a>
                                                    <span>KFR-72LW/09WAA21ATU1套机</span>
                                                    <i>¥
                                                        12999
                                                    </i>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="o_u o_df_6-12 swiper-slide">
                                            <div class="o_u o_df_2-2">
                                                <div class="o_u o_df_4-12 o_sm_11-12 o_xs_11-12  list-cont-photo">
                                                    <a href="../air_conditioners/20171215_636.shtml.htm" tppabs="http://www.tongshuai.com/air_conditioners/20171215_636.shtml">
                                                        <img src="../../image.tongshuai.com/tongshuai/air_conditioners/W020171216389357489393.jpg" tppabs="http://image.tongshuai.com/tongshuai/air_conditioners/W020171216389357489393.jpg" alt="" />
                                                    </a>
                                                </div>
                                                <div class="o_u o_df_8-12 o_sm_11-12 o_xs_11-12 list-cont-text">
                                                    <a href="../air_conditioners/20171215_636.shtml.htm" tppabs="http://www.tongshuai.com/air_conditioners/20171215_636.shtml">
                                                        <p>
                                                            统帅至美3匹变频自清洁柜式空调
                                                        </p>
                                                    </a>
                                                    <span>KFR-72LW/22WBA22ATU1套机</span>
                                                    <i>¥
                                                        9999
                                                    </i>
                                                </div>
                                            </div>
                                        </li>


                                    </ul>
                                </div>

                                <!-- 产品推荐轮播 end -->

                            </div>
                        </div>
                    </div>
                    <div class="o_u o_df_1-12 create-right-btn">
                        <a href="javascript:;"
                           class="iconfont js_lifeStyleCreateRightBtn icon-arrow-jiantou-right life-style-create-btn"></a>
                    </div>
                </div>
                <div class="o_u o_df_5-12 o_sm_12-12 o_xs_12-12 create-bottom-img">
                    <img src="../../image.tongshuai.com/tongshuai/images/create-bottom-img.jpg" tppabs="http://image.tongshuai.com/tongshuai/images/create-bottom-img.jpg" width="100%" alt="" />
                </div>

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
                                <a class="foot_link" href="index.jsp" tppabs="http://www.tongshuai.com/life/">悠生活</a>
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
        </div>
    </div>
</div>
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

<script type="text/javascript">
    $(function () {
        $("#lifepic div").eq(0).attr("data-index", "1");  //第一个div
        $("#lifepic div").eq(1).attr("data-index", "2");//第二个div
        $("#lifepic div").eq(2).attr("data-index", "3");  //第三个div

//        $("#series_name li").eq(0).addClass("cur");  //系列产品推荐中系列列表第一个li
        $("#series_txt>p").eq(1).css("display", "none");//系列产品推荐描述中第二个p标签
        $("#series_txt>p").eq(2).css("display", "none");  //系列产品推荐描述中第三个p标签
        $("#series_txt>p").eq(3).css("display", "none");  //系列产品推荐描述中第四个p标签
        $("#series_txt>p").eq(4).css("display", "none");  //系列产品推荐描述中第五个p标签

        $(".lbindex").eq(0).addClass("js_lifeStyleCreateSwipe_1");
        $(".lbindex").eq(1).addClass("js_lifeStyleCreateSwipe_2");
        $(".lbindex").eq(2).addClass("js_lifeStyleCreateSwipe_3");
    })
</script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/idangerous.swiper2.7.6.min.js" tppabs="http://image.tongshuai.com/tongshuai/images/idangerous.swiper2.7.6.min.js"></script>
<script type="text/javascript" src="../images/mediaelement-and-player.js" tppabs="http://www.tongshuai.com/images/mediaelement-and-player.js"></script>
<script type="text/javascript">
    $('audio,video').mediaelementplayer({
        iPadUseNativeControls: true,//强制iPad的原生控件
        iPhoneUseNativeControls: true,//强制iPhone的本机控件
        AndroidUseNativeControls: true,//强制Android的原生控件
    });


    $("#butSearch").click(function(){
        var arr = $("#searchid").val();
       location.href="<%=request.getContextPath()%>/tongshuai/www.tongshuai.com/televisions/query.jsp?searchValue="+arr;
    })



</script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/life_style.js" tppabs="http://image.tongshuai.com/tongshuai/images/life_style.js">

function chuce() {
    location.href="<%=request.getContextPath()%>/tongshuai/user.tongshuai.com/reg.jsp";
}
$("#header").click(function(){
    alert(22);
})
</script>
</body>

</html>
