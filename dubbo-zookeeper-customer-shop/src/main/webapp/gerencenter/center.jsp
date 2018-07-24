<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>我的订单</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=10;IE=9; IE=8; IE=7; IE=EDGE">
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/images/iconfont.css">
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/images/l_base.css">
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/images/l_module.css">

   <%-- <script type="text/javascript">
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
    </script>--%>
    <!--<link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/tongshuai/images/swiper-3.4.2.min.css">-->
    <link rel="stylesheet" href="http://image.tongshuai.com/tongshuai/images/jquery.Jcrop.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/tongshuai/images/member_nav.css">
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/tongshuai/images/member_order.css">

</head>

<body>
<div id="js-leftredlight" style="display: none;">我的订单</div>
<div class="o_body">
    <div class="o_main">
        <div class="o_g " >
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
                            <a href="/info/?to=header"> <img src="" alt="" class="js-imghead" /></a>
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
            <div class="o_u   o_md_4-12 o_sm_5-12 o_xs_1-2  memeber-nav-middle js_memberNavMiddle fixed">
                <!--<div class="o_u o_df_2-12 o_lg_3-12 o_md_4-12 o_sm_5-12 o_xs_1-2  memeber-nav-middle js_memberNavMiddle">-->
                <div class="o_u o_df_6-10 o_xs_2-3 memeber-nav-middle-listbox">
                    <ul id="js-navul">
                        <li class="memeber-nav-middle-title">个人信息</li>
                        <li><a href="/user" class=" cur o_u">个人中心</a></li>
                        <!--<li><a href="javascript:;" class="o_u ">我的优惠券</a></li>-->
                        <!--<li><a href="javascript:;" class="o_u ">我的礼品卡</a></li>-->
                        <li><a href="/message" class="o_u ">我的消息</a><i class="js-messageNav"></i></li>
                        <li class="memeber-nav-middle-title">订单与产品</li>
                        <li><a href="/order" class="o_u ">我的订单</a></li>
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
            </div>

            <!-- 左侧导航 End-->
            <!-- 右侧内容 START-->
            <div class="o_u o_df_8-12  o_xs_2-2 js-membercontboxs" style="position: relative;z-index: 14">
                <div class="o_u o_df_12-12 member-security js-membercontbox">
                    <div class="land-shade js_navshade"></div>

                    <div class="member_order_title_box js-securityheight o_g">
                        <h2>我的订单</h2>
                        <div class="member_order_title">
                            <ul class="o_u o_df_11-12 member_order_title_cont js_orderList">
                                <li class="o_u cur"><a href="javascript:;">全部订单</a></li>
                                <li class="o_u"><a href="javascript:;">待付款<i class="js-notPay"></i></a></li>
                                <li class="o_u"><a href="javascript:;">待收货<i class="js-notReceived"></i></a></li>
                                <li class="o_u"><a href="javascript:;">待评价<i class="js-evaluate"></i></a></li>
                            </ul>
                            <div class="o_u o_df_2-2 oder_shelter_scroll">
                            </div>
                        </div>

                    </div>
                    <!-- 内容区域 START-->
                    <div class="member_cont o_g js-orderAllList">
                        <!--<div class="member_contborder_box  o_u  o_df_11-12">-->
                        <!--<div class="o_g">-->
                        <!--<div class="  order_cont_title_box">-->
                        <!--<div class="o_u o_df_11-12">-->
                        <!--<div class=" order_cont_title o_u o_df_9-12 o_sm_7-12 o_xs_7-12">-->
                        <!--<h3>待付款</h3>-->
                        <!--<div class="o_u">-->
                        <!--<p class="o_u o_md_2-2  o_sm_2-2 o_xs_2-2 order_cont_title_time"><span>2017-06-14 08:23:42</span></p>-->
                        <!--<p class="o_u o_md_1-2 o_sm_2-2 o_xs_2-2"><span>订单号：</span><i>2017061428818</i></p>-->
                        <!--<p class="o_u o_md_1-2  o_sm_2-2 o_xs_2-2"><span>订单总额：</span><i class="order_cont_title_price">￥5699</i></p>-->
                        <!--</div>-->
                        <!--<a href="javascript:;">订单详情 <span class=" iconfont icon-arrow-line-right"></span></a>-->
                        <!--</div>-->
                        <!--<div class=" order_cont_title_btn o_u o_df_3-12 o_sm_5-12 o_xs_5-12">-->
                        <!--<a href="javascript:;" class="l-btn-sm l-btn-red">付款</a><br><a href="javascript:;" class="l-btn-sm l-btn-line2" onclick=cancelOrder("待付款","123456")>取消订单</a>-->
                        <!--</div>-->
                        <!--</div>-->
                        <!--</div>-->
                        <!--<div class="o_u o_df_11-12 order_content_box"  style="padding-top: 30px">-->
                        <!--<div class="order-title-in-orange">-->
                        <!--&lt;!&ndash;<h3 >待付款</h3>&ndash;&gt;-->
                        <!--</div>-->
                        <!--<div class="o_u o_df_2-12 order_content_img">-->
                        <!--<img src="http://image.tongshuai.com/tongshuai/images/compare_goods.PNG" alt="" width="80px" height="80px;" />-->
                        <!--</div>-->
                        <!--<div class="o_u o_df_8-12 o_xs_10-12 order_content_name">-->
                        <!--<h4>统帅323L大容量无霜冰箱</h4>-->
                        <!--<span>BCD-323WLDPN</span>-->
                        <!--</div>-->
                        <!--<div class="o_u o_df_2-12 order_content_nub">-->
                        <!--x1-->
                        <!--</div>-->
                        <!--</div>-->
                        <!--<div class="o_g order_content2_box">-->
                        <!--<div class="o_u  o_df_11-12">-->
                        <!--<div class="o_u o_df_2-12 order_content2_img">-->
                        <!--<i class=" o_u iconfont icon-giftbox-solid"></i>-->
                        <!--</div>-->
                        <!--<div class="o_u o_df_8-12 o_md_9-12 o_sm_10-12 o_xs_10-12 order_content2_name">-->
                        <!--<h4>金岁月扫地机器人<span>&nbsp;x1</span></h4>-->
                        <!--<p>赠品将在您确认收货，并上传相关资料后发出 <a href="javascript:;">了解详细规则</a></p>-->
                        <!--</div>-->
                        <!--<div class="o_u o_df_2-12 o_md_1-12 order_content_nub">-->
                        <!--x1-->
                        <!--</div>-->
                        <!--</div>-->
                        <!--</div>-->
                        <!--</div>-->

                        <!--</div>-->
                        <!-- 内容区域 End-->

                    </div>
                </div>
            </div>
            <!-- 右侧内容 End-->
        </div>
        <div class="o_g footer member_footer">

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
                        <!--<div class="footer_copy_img_box">
                            <span class="footer_copy_img1"></span>
                            <span class="footer_copy_img2"></span>
                            <a href="http://www.miitbeian.gov.cn/" class="footer_copy_img3" target="_blank"></a>
                        </div>-->
                    </div>
                    <!--<span class="copy_service">服务条款33333</span>-->
                </div>
            </div>
            <div class="o_u o_df_1-12"></div>
        </div>
        <!--网脉start-->
        <script id="_trs_ta_js" src="//net.haier.com/c/js/ta.js?mpid=1112&cPrefix=ta.trs.cn/c" async="async" defer="defer"></script>
        <!--网脉end-->
        <!--全局cookie start-->
        <script src="//c.haier.com/trscookie/images/trs_cookie.js" data-mpId="37" defer="defer" id="_trs_glc_js_"></script>
        <!--全局cookie end-->

    </div>
</div>


<div class="o_g land-shade  land-shade-top js_addShadeTop"  >
    <div class="land-box  js_logisticsContBox" >
        <div class="land-cont-title  o_u">
            <div class="o_u o_df_11-12">
                <i>物流跟踪（2017061428818）</i>
                <a href="" class="o_u iconfont icon-close js_addClose"></a>
            </div>
        </div>
        <div class=" logistics_cont">
            <div class="js_logisticsCont">
                <div class="o_u o_df_11-12 logistics-title">
                    <p>对开双门静音节能冰箱  BCD-400WLD</p>
                    <span>物流跟踪仅限商品出库到抵达当地服务中心</span>
                </div>
                <ul class="logistics-list">
                    <li class="o_u o_df_11-12 over">
                        <span class="iconfont icon-bg-solid"></span>
                        <i class="o_u">2016-07-22  15:21</i>
                        <p  class="o_u"><span class="o_u o_xs_11-12">快件已到达【上海中部公司】</span><span class="o_u o_xs_11-12">扫描员是【零点班扫描4】</span></p>

                    </li>
                    <li class="o_u o_df_11-12">
                        <span class="iconfont icon-bg-solid"></span>
                        <i>2016-07-22  15:21</i>
                        <p  class="o_u"><span class="o_u o_xs_11-12">快件已到达【上海中部公司】</span><span class="o_u o_xs_11-12">扫描员是【零点班扫描4】</span></p>

                    </li>
                    <li class="o_u o_df_11-12">
                        <span class="iconfont icon-bg-solid"></span>
                        <i>2016-07-22  15:21</i>
                        <p  class="o_u"><span class="o_u o_xs_11-12">快件已到达【上海中部公司】</span><span class="o_u o_xs_11-12">扫描员是【零点班扫描4】</span></p>
                    </li>
                    <li class="o_u o_df_11-12">
                        <span class="iconfont icon-bg-solid"></span>
                        <i>2016-07-22  15:21</i>
                        <p  class="o_u"><span class="o_u o_xs_11-12">快件已到达【上海中部公司】</span><span class="o_u o_xs_11-12">扫描员是【零点班扫描4】</span></p>
                    </li>
                    <li class="o_u o_df_11-12">
                        <span class="iconfont icon-bg-solid"></span>
                        <i>2016-07-22  15:21</i>
                        <p  class="o_u"><span class="o_u o_xs_11-12">快件已到达【上海中部公司】</span><span class="o_u o_xs_11-12">扫描员是【零点班扫描4】</span></p>

                    </li>
                    <li class="o_u o_df_11-12">
                        <span class="iconfont icon-bg-solid"></span>
                        <i>2016-07-22  15:21</i>
                        <p  class="o_u"><span class="o_u o_xs_11-12">快件已到达【上海中部公司】</span><span class="o_u o_xs_11-12">扫描员是【零点班扫描4】</span></p>

                    </li>
                    <li class="o_u o_df_11-12">
                        <span class="iconfont icon-bg-solid"></span>
                        <i>2016-07-22  15:21</i>
                        <p  class="o_u"><span class="o_u o_xs_11-12">快件已到达【上海中部公司】</span><span class="o_u o_xs_11-12">扫描员是【零点班扫描4】</span></p>

                    </li>
                    <li class="o_u o_df_11-12">
                        <span class="iconfont icon-bg-solid"></span>
                        <i>2016-07-22  15:21</i>
                        <p  class="o_u"><span class="o_u o_xs_11-12">快件已到达【上海中部公司】</span><span class="o_u o_xs_11-12">扫描员是【零点班扫描4】</span></p>

                    </li>
                </ul>
            </div>
        </div>

    </div>
</div>
<!-- Swiper -->

<!--弹框-->
<div class="o_g land-shade js_landShade">
    <div class="land-box js_landContBox">
        <div class="land-cont-title alert-cont-title o_u">
            <a href="" class="o_u iconfont icon-close js_landClose"></a>
        </div>
        <div class="js_landInputBox">
            <div class="land-cont-normal-input o_g">
                <div class="o_g member-bingmob-list">
                    <div class="o_u o_df_11-12  l-input member-bingmob-listipt ">
                        <p class="js-landText">确定要取消订单?</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="member-alert-btn o_g">
            <a href="javascript:;" class="o_u o_df_6-12   js-alertTrue cur">确定</a>
            <a href="javascript:;" class="o_u o_df_6-12   js-alertClose">取消</a>
        </div>
    </div>
</div>
<!--弹窗html代码 END-->

<script type="text/javascript" src="http://image.tongshuai.com/images/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/jquery.cookie.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_obox.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_module.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_base.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/templete_nav_search.js"></script>
<!--全局cookie start-->
<div class="o_g footer_cookie js_footer_cookie o_df-hide">
    <div class="bottom_cookie_text">
        <img src="http://image.tongshuai.com/tongshuai/images/cookies_pic.png" />
        <div class="bottom_box">
            本网站会使用Cookies以提升您的访问体验。如继续浏览本网站，则表示您同意我们使用Cookies。更多Cookies政策请见本网站的<a href="http://account.haier.com/html/privacypolicy.html" target="_blank" class="go_open">隐私权政策</a>。
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