<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018\7\23 0023
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>我的消息</title>

    <base href='../'>

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
    <link rel="stylesheet" href="http://image.tongshuai.com/tongshuai/images/jquery.Jcrop.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/tongshuai/images/member_nav.css">
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/tongshuai/images/member_myinfo.css">
</head>

<body>
<div id="js-leftredlight" style="display: none;">我的消息</div>
<div class="o_body">
    <div class="o_main">
        <div class="o_g">
            <!-- 左侧导航 START-->

            <div class="o_u  o_lg_1-12  o_md_1-12 o_sm_2-12 o_xs_2-2 memeber-nav-left js_memberNavLeft  fixed">
                <div class="o_u o_df_9-12 o_lg_2-2 ">
                    <a href="http://www.tongshuai.com/"><div class="memeber-nav-logo o_u ">
                        <img src="http://image.tongshuai.com/tongshuai/images/l_logo.png" alt="" />
                    </div></a>
                    <div class=" o_u  memeber-nav-logo-text">
                        个人中心
                    </div>
                    <div class="o_u o_xs_1-12"></div>
                    <div class="o_u o_df_11-12 memeber-nav-xs-right">
                        <div class="memeber-nav-userinfo o_u ">
                            <a href="/info/?to=header"> <img src="http://user.tongshuai.com/info/?to=header" alt="" class="js-imghead" /></a>
                            <a href="/info/ "> <p class="js_navUserId"></p></a>
                            <!--<span class="l-tag-padding l-tag-orange">普通会员</span>-->
                        </div>
                        <ul class="memeber-nav-left-list o_u  ">
                            <li class="">
                                <a href="/security" class="iconfont icon-protect-solid"><span>账号安全</span></a><i class="js-securitysetting memeber-nav-safety-plain"></i>
                            </li>
                            <li class="js-cart">
                                <a href="http://www.tongshuai.com/cart/" class="iconfont icon-shoppingcart"><span>购物车</span></a>
                                <!--<i class="member-nub-round">9</i>-->
                            </li>
                            <!--<li class="">-->
                            <!--<a href="javascript:;" class="iconfont icon-price-tag-solid1"><span>优惠卷</span></a><i class="member-nub-round">9</i>-->
                            <!--</li>-->
                        </ul>
                        <div class="o_u  iconfont icon-menu memeber-nav-top-btn js_navxsbtn" data-alt="1"></div>
                    </div>
                </div>
            </div>

            <div class="o_u   o_md_4-12 o_sm_5-12 o_xs_1-2  memeber-nav-middle js_memberNavMiddle fixed" >

                <!--<div class="o_u o_df_2-12 o_lg_3-12 o_md_4-12 o_sm_5-12 o_xs_1-2  memeber-nav-middle js_memberNavMiddle">-->
                <div class="o_u o_df_6-10 o_xs_2-3 memeber-nav-middle-listbox">
                    <ul id="js-navul">
                        <li class="memeber-nav-middle-title">个人信息</li>
                        <li><a href="/user" class=" cur o_u">个人中心</a></li>
                        <!--<li><a href="javascript:;" class="o_u ">我的优惠券</a></li>-->
                        <!--<li><a href="javascript:;" class="o_u ">我的礼品卡</a></li>-->
                        <li><a href="/message" class="o_u ">我的消息</a><i class="js-messageNav"></i></li>
                        <li class="memeber-nav-middle-title">订单与产品</li>
                        <li><a href="<%=request.getContextPath()%>/wzw/dingdan.jsp" target="dingdan" class="o_u ">我的订单</a></li>
                        <li><a href="/collection" class="o_u ">关注的产品</a></li>
                        <!--<li><a href="javascript:;" class="o_u ">我的产品</a></li>-->
                        <li><a href="/service" class="o_u ">售后服务</a></li>
                        <li><a href="/product_share" class="o_u ">我的评价</a></li>
                        <li class="memeber-nav-middle-title">账户管理</li>
                        <li><a href="/security" class="o_u ">安全设置</a></li>
                        <li><a href="/address" class="o_u ">地址管理</a></li>
                        <li><a href="/info" class="o_u ">个人信息</a></li>
                        <!--<li><a href="/invoice" class="o_u ">增票资质</a></li>-->
                    </ul>
                    <div class="member-nav-list-right"></div>
                </div>
                <div class="o_u o_df_4-10 o_md_2-12  o_sm_2-12 memeber-nav-middle-btn js_memberNavMiddleBtn" data-alt="1">
                    <span class="iconfont icon-menu1"></span>
                </div>


            <!-- 左侧导航 End-->
            <!-- 右侧内容 START-->

        </div>
            <div style="float: right; width: 745px;height:590px;border: 1px solid red">
                <div class="memeber-homenav-top o_df-show o_md-hide o_xs-hide o_sm-hide" style="height: 100px;width:100%">
                    <img src="<%=request.getContextPath()%>/wzw/index.jpg" width="740px" height="100px"/>
                    <div class="txt">
                        <div class=o_table>
                            <div class="o_cell">
                                <p>MY ACCOUNT</p>
                                <h2>统帅用户中心</h2>
                            </div>
                        </div>
                        <div class="iconfont icon-icon ">

                        </div>
                    </div>
                </div>
                <iframe id="dingdan" name="dingdan" src="" frameborder="0" width="750px" scrolling="no" height="500px"></iframe>
                <iframe id="iframe" name="iframe" src="" frameborder="0" width="750px" scrolling="no" height="500px"></iframe>
               <%-- <div class="memeber-homenav-top o_df-show o_md-hide o_xs-hide o_sm-hide" style="float: right; width: 745px;height:490px;border: 1px solid blue">
&lt;%&ndash;
                    <img src="http://image.tongshuai.com/tongshuai/index/sybanner/W020180326519864745340.jpg" width="740px" height="490px"/>
&ndash;%&gt;
                  <iframe id="iframe" name="iframe" src="http://image.tongshuai.com/tongshuai/index/sybanner/W020180326519864745340.jpg" frameborder="0" width="750px" scrolling="no" height="500px"></iframe>

                </div>--%>
               <%-- <div style="float: right; width: 745px;height:490px;border: 1px solid blue">
                   <img src="http://image.tongshuai.com/tongshuai/index/sybanner/W020180326519864745340.jpg" width="745px" height="490px" >
                </div>--%>
            </div>
        <!-- 右侧内容 End-->
    </div>

</div>
</div>
<script type="text/javascript" src="../image.tongshuai.com/images/jquery-1.8.3.min.js" tppabs="http://image.tongshuai.com/images/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../image.tongshuai.com/images/jquery.cookie.js" tppabs="http://image.tongshuai.com/images/jquery.cookie.js"></script>
<script type="text/javascript" src="../image.tongshuai.com/images/l_obox.js" tppabs="http://image.tongshuai.com/images/l_obox.js"></script>
<script type="text/javascript" src="../image.tongshuai.com/images/l_module.js" tppabs="http://image.tongshuai.com/images/l_module.js"></script>
<script type="text/javascript" src="../image.tongshuai.com/images/l_base.js" tppabs="http://image.tongshuai.com/images/l_base.js"></script>
<script type="text/javascript" src="../image.tongshuai.com/images/templete_nav_search.js" tppabs="http://image.tongshuai.com/images/templete_nav_search.js"></script>


<!--<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/swiper-3.4.2.jquery.min.js"></script>-->
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/idangerous.swiper2.7.6.min.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/jquery.jUploader-1.01.min.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/jquery.Jcrop.min.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/jquery.color.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/templet_member_message.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/templet_pagination.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/member_nav.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/templet_member_nav.js"></script>

<!--<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/swiper-3.4.2.jquery.min.js"></script>-->
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/jquery.jUploader-1.01.min.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/jquery.Jcrop.min.js"></script>

<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/swiper-3.4.2.jquery.min.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/templet_pagination.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/member_nav.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/member_order_new.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/templet_member_nav.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/member_order_new.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/templet_member_order_new.js"></script>
<script>
    var coolHtml="http://www.tongshuai.com/cooling/";
</script>
</body>
</html>
