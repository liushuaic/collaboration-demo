<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/20
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="zh_cn">

<head>
    <meta charset=utf-8"UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no, email=no" />

    <title>我的购物车 - 统帅官网</title>
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="../../image.tongshuai.com/tongshuai/images/product_trolley.css" tppabs="http://image.tongshuai.com/tongshuai/images/product_trolley.css">
    <link rel="preconnect" href="http://www.tongshuai.com/">
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
        <!-- 首屏动画 -->

        <!-- 头部 -->
        <div class="o_g trolley-head">
            <div class="o_u o_df_1-12"></div>
            <div class="o_u o_df_10-12">
                <div class="trolley-logo">
                    <a href="../index.jsp" tppabs="http://www.tongshuai.com/"><img src="../../image.tongshuai.com/tongshuai/images/l_logo.png" tppabs="http://image.tongshuai.com/tongshuai/images/l_logo.png" /></a>
                </div>
                <div class="trolley-title">
                    购物车
                </div>
                <span class="trolley-username js_userName">
                        <i><a href="<%=request.getContextPath()%>/tongshuai/www.tongshuai.com/life/index.jsp"><font color="#d3d3d3" >《 返回首页 </font></a>  </i>
                    </span>
            </div>
        </div>
        <!-- 头部 END -->

        <!-- 配送 -->
        <div class="o_g trolley-distribution">
            <div class="o_u o_df_1-12"></div>
            <div class="o_u o_df_10-12">
                <div class="distribution-icon">
                    <i class="iconfont icon-location-solid"></i>
                </div>
                <div class="distribution-address">
                    配送至：
                    <span class="js_ipAddress" id="address"></span><i class="iconfont icon-arrow-sanjiao-down-s"></i><br>
                    收货人：
                    <span class="js_ipAddress" id="addname"></span>
                    <input type="hidden" id="phone">

                </div>
            </div>
        </div>
        <!-- 配送 END -->

        <!-- 商品列表-表头 -->
        <div class="o_g trolley-tablehead">
            <div class="o_u o_df_1-12"></div>
            <div class="o_u o_df_10-12">
                <div class="head-name">
                    <div class="head-line-select l-checkbox">
                        <input class="js_checkbox" type="checkbox" data-notnull="true" value="全选" />
                        <!-- <input class="js_checkbox" type="checkbox" checked="true" data-notnull="true" value="复选框" /> -->
                    </div>
                    <div class="head-line-product">
                        商品
                    </div>
                    <div class="head-line-other">
                        单价
                    </div>
                    <div class="head-line-other">
                        数量
                    </div>
                    <div class="head-line-other">
                        小计
                    </div>
                    <div class="head-line-other">
                        操作
                    </div>
                </div>
            </div>
        </div>
        <!-- 商品列表-表头 END -->

        <!-- 购物车无商品 -->
    <div class="o_g empty-trolley-pro-list" id="nopro">
            <img src="../../image.tongshuai.com/tongshuai/images/share_nothing.png" tppabs="http://image.tongshuai.com/tongshuai/images/share_nothing.png" alt="" />
            <p>还没有任何商品，快去<a href="<%=request.getContextPath()%>/tongshuai/www.tongshuai.com/life/index.jsp">挑选</a>吧</p>
            <div>
            </div>
        </div>

        <!-- 商品列表 -->
        <div class="o_g" >
            <div class="o_u o_df_1-12"></div>
            <div class="o_u o_df_10-12" id="mn">

                <!-- 购物车商品列表： 数据循环 END -->

                <!-- 单个商品-有货 -->
               <%--<div class="trolley-prolist">
                    <div class="o_g trolley-product">
                        <div class="o_u o_df_3-5 o_md_1-2 o_xs_2-2">
                            <div class="l-checkbox trolley-product-check">
                              <input class="js_checkbox js_checkSolo" type="checkbox" data-notnull="true" value="" name="ck"/>
                            </div>
                            <div class="trolley-product-img">
                                <img src="http://image.tongshuai.com/tongshuai/images/compare_goods.PNG" />
                            </div>
                            <div class="trolley-product-font">
                                <div class="trolley-middle-box">
                                    <div class="trolley-middle-inner js_trolleyFont">
                                        <p class="trolley-product-zh">统帅天然气统帅天然气统帅天然气统</p>
                                        <p class="trolley-product-en">JIGEJOJ-1</p>
                                    </div>
                                    <p class="trolley-product-xs">
                                        <span class=" js_trolleyPrice">￥3433</span>
                                        <a href="javascript:;" class="opacity-0 trolley-xs-delete js_deleteXs">删除</a>
                                        <a href="javascript:;" class="js_edit" data-oppo='edit'>编辑</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="o_u o_df_1-10 o_md_1-5 o_sm_1-5 o_xs-hide">
                            <div class="trolley-price-now js_trolleyPrice">￥89034</div>
                            <div class="trolley-price-old">￥890.34</div>
                        </div>
                        <div class="o_u o_df_1-10 o_lg_1-5 o_md_1-5 o_df-center trolley-number-xs">
                            <div class="trolley-number opacity-0 js_trolleyNumber">
                                <i class="iconfont icon-minus"></i>
                                <input type="text" onkeyup="value=value.replace(/[^\d]/g,'')" ng-pattern="/[^a-zA-Z]/" value="1" />
                                <i class="iconfont icon-plus"></i>
                                <a href="javascript:;" class="trolley-price-delete">删除</a>
                            </div>
                        </div>
                        <div class="o_u o_df_1-10 o_lg-hide o_md-hide o_sm-hide o_xs-hide">
                            <div class="trolley-price-total">￥89034</div>
                        </div>
                        <div class="o_u o_df_1-10 o_xs-hide">
                            <a href="javascript:;" class="trolley-price-delete">删除</a>
                            <a href="javascript:;" class="trolley-price-edit js_edit" data-oppo='edit'>编辑</a>
                        </div>
                    </div>
                </div>--%>



            </div>
        </div>
        <!-- 商品列表 END -->


            <!-- 购物车底部 -->
            <div style="margin-left: 800px" >
                <div class="o_u o_df_1-12"></div>

                <div class="o_u o_df_3-12 o_lg_1-2 o_md_1-2 o_sm_5-12 o_xs_5-12">
                    <div class="trolley-footer-total">
                        <div class="footer-total-num o_sm-hide o_xs-hide">
                            共<span id="totals">  </span>件商品，已选择<span id="xuan">0</span>件
                        </div>
                        <div >
                           <font color="red" size="6">￥</font> <font color="red" size="5"> <span id="totalprice"> 0</span></font>
                        </div>
                        <i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#d3d3d3" size="2">免运费</font></i>
                    </div>
                </div>
                <div class="o_u o_df_2-12 o_lg_3-12 o_md_3-12 o_sm_1-4 o_xs_1-4">
                    <div class="trolley-footer-btn">
                        <a href="javascript:getOrder();" class="l-btn-lg l-btn-red">下&nbsp;&nbsp;&nbsp;单</a>
                    </div>
                </div>
            </div>


            <!-- 购物车底部 END -->
        <div class="trolley-footer-position">
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

            <!--网脉start-->
            <script id="_trs_ta_js" src="../../net.haier.com/c/js/ta.js-mpid=1112&cPrefix=ta.trs.cn-c" tppabs="http://net.haier.com/c/js/ta.js?mpid=1112&cPrefix=ta.trs.cn/c" async="async" defer="defer"></script>
            <!--网脉end-->
            <!--全局cookie start-->
            <script src="../../c.haier.com/trscookie/images/trs_cookie.js" tppabs="http://c.haier.com/trscookie/images/trs_cookie.js" data-mpId="36" defer="defer" id="_trs_glc_js_"></script>
            <!--全局cookie end-->
        </div>
    </div>
</div>

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
<%--<div class="o_g footer_cookie js_footer_cookie o_df-hide">
    <div class="bottom_cookie_text">
        <img src="../../image.tongshuai.com/tongshuai/images/cookies_pic.png" tppabs="http://image.tongshuai.com/tongshuai/images/cookies_pic.png" />
        <div class="bottom_box">
            本网站会使用Cookies以提升您的访问体验。如继续浏览本网站，则表示您同意我们使用Cookies。更多Cookies政策请见本网站的<a href="javascript:if(confirm('http://account.haier.com/html/privacypolicy.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://account.haier.com/html/privacypolicy.html'" tppabs="http://account.haier.com/html/privacypolicy.html" target="_blank" class="go_open">隐私权政策</a>。
            <div class="bottom_cookie_button">
                <a href="javascript:;" class="l-btn-sm l-btn-line2 js_cookies_confirm">确定</a>
            </div>
        </div>
    </div>
</div>--%>
<script>
    function getOrder(){
       var  address =  $("#address").html();   // 收货地址
       var  consignee = $("#addname").html();//  收货人
       var  amountpaid = $("#totalprice").html();//   订单金额
        var paymentmethodname="支付宝";
        var shippingmethodid="顺丰快递";
        var operatorid='${loginAdmin.aid}';
       var phone= $("#phone").val();
        alert(phone);
         var ids="";
        var cid="";
        var count=0;
        $("input[name='ck']:checked").each(function(){
            ids+=","+$(this).val();
            cid+=","+$(this).next().val();
        });

        var productid =ids.substring(1);
        var cartid =cid.substring(1);
        $.messager.confirm('信息', '信息是否确认无误？', function(r){
            if (r){
                $.ajax({
                    url:"<%=request.getContextPath()%>/television/insertOrder.jhtml",
                    data:{address:address,consignee:consignee,amountpaid:amountpaid,paymentmethodname:paymentmethodname,shippingmethodname:shippingmethodid,productid:productid,operatorid:operatorid,cartid:cartid,phone:phone},
                    type:"post",
                    success:function(data){
                        $.messager.show({
                            title:'消息',
                            msg:'下单成功，请耐心等待商家发货~~~',
                            timeout:1000,
                            showType:'show',
                            style:{
                                top:300,
                            }
                        });
                        location.href="";
                    }
                })


            }
        });


    }


   function plus(id){
       $.ajax({
           url:"<%=request.getContextPath()%>/television/plusQuantity.jhtml",
           data:{cartid:id},
           type:"post",
           success:function(data){
               if(data==1){
                   queryCart();
               }
           }

       })
   }

   function minus(id,quantity){
       if(quantity>1){
           $.ajax({
               url:"<%=request.getContextPath()%>/television/minusQuantity.jhtml",
               data:{cartid:id},
               type:"post",
               success:function(data){
                   if(data==1){
                       queryCart();
                   }
               }

           })
       }else{
           $.messager.show({

               title:'我的消息',
               msg:'该宝贝不能减少了哟~',
               timeout:1000,
               showType:'show',
               style:{
                   top:300,
               }

           })
       }

   }

   function deleteCart(id){
       $.messager.confirm('信息', '确定删除该数据么', function(r){
           if (r){
               $.ajax({
                   url : '<%=request.getContextPath()%>/television/delCart.jhtml',
                   type : "post",
                   data:{"cartid":id},
                   success : function(text){
                       $.messager.show({
                           title:'消息',
                           msg:'删除成功',
                           timeout:1000,
                           showType:'show',
                           style:{
                               top:300,
                           }
                       });
                       queryCart();
                   }
               })
           }
       });
   }

    $(function() {

        queryCart();
        queryAddress();
    });

    function queryAddress(){
        $.ajax({
            url:"<%=request.getContextPath()%>/television/queeryAddress.jhtml",
            type:'post',
            success:function(data){
                console.info(data);
                $("#address").html(" " + data.addprovince+ " " +data.addcity+" " + data.addcounty +" "+data.introduction);
                $("#addname").html(data.addname)
                $("#phone").val(data.addphone);
            }
        })
    }
    function queryCart(){
        var userid='${loginAdmin.aid}';
        $.ajax({
            url:"<%=request.getContextPath()%>/television/queryCartAll.jhtml",
            type:"post",
            data:{userid:userid},
            success:function(data) {
                console.info(data);

                var content="";
                if(data.length<1){
                    $("#nopro").show();
                }else {
                    $("#nopro").hide();
                    for(var i=0;i<data.length;i++){
                        var sn="'"+data[i].cartid+"'";
                        content+=' <div class="trolley-prolist">';
                        content +='<div class="o_g trolley-product">  <div class="o_u o_df_3-5 o_md_1-2 o_xs_2-2">  <div class="l-checkbox trolley-product-check">';
                        /*   content+='<input class="js_checkbox js_checkSolo" type="checkbox" data-notnull="true"  />';*/
                        content += '<input class="js_checkbox js_checkSolo" type="checkbox" onclick="countall(' + data[i].marketprice * data[i].quantity + ')" data-notnull="true" value="' + data[i].productid + '" name="ck"/> <input type="hidden"  value="' + data[i].cartid + '"/>';
                        content+=' </div> <div class="trolley-product-img">';
                        content+='<img src="http://image.tongshuai.com/tongshuai/images/compare_goods.PNG" />';
                        content+='   </div> <div class="trolley-product-font">  <div class="trolley-middle-box"> <div class="trolley-middle-inner js_trolleyFont">';
                        content+=' <p class="trolley-product-zh">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+data[i].name +'</p>';
                        content+=' </div><p class="trolley-product-xs">';
                        content+='<span class=" js_trolleyPrice">'+data[i].marketprice+'</span>';
                        /*         content+='<a href="javascript:;" class="opacity-0 trolley-xs-delete js_deleteXs">删除</a>';
                         content +='<a href="javascript:;" class="js_edit" data-oppo="edit">编辑</a>';*/
                        content+='   </p> </div> </div> </div>';
                        content+='<div class="o_u o_df_1-10 o_md_1-5 o_sm_1-5 o_xs-hide">';
                        content+='<div class="trolley-price-now js_trolleyPrice">￥'+data[i].marketprice+'</div>';
                        content+='<div class="trolley-price-old">￥6690.34</div>';
                        content+=' </div> <div class="o_u o_df_1-10 o_lg_1-5 o_md_1-5 o_df-center trolley-number-xs"> <div class="trolley-number opacity-0 js_trolleyNumber"><i class="iconfont icon-minus" id="minus" onclick="minus('+sn+','+data[i].quantity+')"></i>';
                        content+='<input type="text" onkeyup="value=value.replace(/[^\d]/g,"")" ng-pattern="/[^a-zA-Z]/" value="'+data[i].quantity+'" />';
                        content+='<i class="iconfont icon-plus" onclick="plus('+sn+')"></i>';
                        /* content+='<a href="javascript:;" class="trolley-price-delete">删除</a>';*/
                        content+='</div>  </div> <div class="o_u o_df_1-10 o_lg-hide o_md-hide o_sm-hide o_xs-hide">';
                        content+='<div class="trolley-price-total">￥'+data[i].marketprice*data[i].quantity+'</div>';
                        content+='</div><div class="o_u o_df_1-10 o_xs-hide">';

                        content+=' <a href="javascript:deleteCart('+sn+');" class="trolley-price-delete">删除</a>';
                        content+='<a href="javascript:;" class="trolley-price-edit js_edit" data-oppo="edit">编辑</a>';

                        content+='  </div> </div> </div>';


                    }
                    $("#mn").html(content);
                    $("#totals").html(data.length);
                }

            }

        })
    }


    function countall(price){
       var count=0;
       var ids="";
       $("input[name='ck']:checked").each(function(){
           ids+=","+$(this).val();
           count++;

       });
       var id=ids.substring(1);
        var prices=$("#totalprice").html();
        var tota=parseInt(price)+parseInt(prices);
        $("#totalprice").html(tota);
        $("#xuan").html(count);

   }




</script>
<!--全局cookie end-->
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/jquery-jtemplates.js" tppabs="http://image.tongshuai.com/tongshuai/images/jquery-jtemplates.js"></script>
<script type="text/javascript" src="../../image.tongshuai.com/tongshuai/images/product_trolley.js" tppabs="http://image.tongshuai.com/tongshuai/images/product_trolley.js"></script>
<!-- <script type="text/javascript" src="http://image.tongshuai.com/tongshuai/images/test.js"></script> -->
<!-- Templates -->
<p style="display:none">
        <textarea id="template-items">
            {#foreach $T as item}
            <div class="trolley-prolist" cartId="{$T.item.skuShowVO.cartGoodId}" inSkuCode="{$T.item.skuShowVO.inSkuCode}">
                <div class="o_g trolley-product">
                    <div class="o_u o_df_3-5 o_md_1-2 o_xs_2-2">
                        <div class="l-checkbox trolley-product-check">
                          <input class="js_checkbox js_checkSolo" type="checkbox" data-notnull="true" value="" />
                        </div>
                        <a class="trolley-product-img" href="javascript:if(confirm('http://www.tongshuai.com/cart/{$T.item.productShowVO.proUrl || \'javascript:;\'}  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ������������ļ�δ�ҵ���  \n\n�����ڷ������ϴ���?'))window.location='http://www.tongshuai.com/cart/{$T.item.productShowVO.proUrl || \'javascript:;\'}'" tppabs="http://www.tongshuai.com/cart/{$T.item.productShowVO.proUrl || 'javascript:;'}" target="_blank" rel="noopener">
                            <img src="{$T.item.productShowVO.goodsPic}" tppabs="http://www.tongshuai.com/cart/{$T.item.productShowVO.goodsPic}" />
                        </a>
                        <div class="trolley-product-font">
                            <div class="trolley-middle-box">
                                <div class="trolley-middle-inner js_trolleyFont">
<p class="trolley-product-zh">{$T.item.productShowVO.goodsName || '暂无'}</p>
<p class="trolley-product-en">{$T.item.productShowVO.modelNo || ''}</p>
</div>
<p class="trolley-product-xs">
    <span class="js_trolleyPrice">￥{$T.item.skuShowVO.salePrice || '0'}</span>
    <a href="javascript:;" class="opacity-0 trolley-xs-delete js_deleteXs js_proDelete" data-cartGoodId="{$T.item.skuShowVO.cartGoodId}">删除</a>
    <a href="javascript:;" class="js_edit" data-oppo='edit'>编辑</a>
</p>
</div>
</div>
</div>
<div class="o_u o_df_1-10 o_md_1-5 o_sm_1-5 o_xs-hide">
    <div class="trolley-price-only js_trolleyPrice">￥{$T.item.skuShowVO.salePrice || '0'}</div>
</div>
<div class="o_u o_df_1-10 o_lg_1-5 o_md_1-5 o_df-center trolley-number-xs">
    <div class="trolley-number opacity-0 js_trolleyNumber" data-inskucode="{$T.item.skuShowVO.inSkuCode}">
        <i class="iconfont icon-minus"></i>
        <input type="text" onkeyup="value=value.replace(/[^\d]/g,'')" ng-pattern="/[^a-zA-Z]/" value="{$T.item.skuShowVO.quantity}" />
        <i class="iconfont icon-plus"></i>
        <a href="javascript:;" class="trolley-price-delete js_proDelete" data-cartGoodId="{$T.item.skuShowVO.cartGoodId}">删除</a>
    </div>
</div>
<div class="o_u o_df_1-10 o_lg-hide o_md-hide o_sm-hide o_xs-hide">
    <div class="trolley-price-total">￥{$T.item.skuShowVO.salePrice*$T.item.skuShowVO.quantity || '暂无'}</div>
</div>
<div class="o_u o_df_1-10 o_xs-hide">
    <a href="javascript:;" class="trolley-price-delete js_proDelete" data-cartGoodId="{$T.item.skuShowVO.cartGoodId}">删除</a>
    <a href="javascript:;" class="trolley-price-edit js_edit" data-oppo='edit'>编辑</a>
</div>
</div>
</div>
{#/for}
</textarea>
</p>
<!-- Templates END -->
</body>

</html>
