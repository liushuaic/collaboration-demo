<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>管理中心 - Powered By Gome</title>
<meta name="author" content="Gome Team" />
<meta name="copyright" content="Gome" />
<link href="/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
<link href="/resources/admin/css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/admin/js/jquery.js"></script>
<style type="text/css">
*{
	font: 12px tahoma, Arial, Verdana, sans-serif;
}
html, body {
	width: 100%;
	height: 100%;
	overflow: hidden;
}
</style>
<script type="text/javascript">
$().ready(function() {

	var $nav = $("#nav a:not(:last)");
	var $menu = $("#menu dl");
	var $menuItem = $("#menu a");
	
	$nav.click(function() {
		var $this = $(this);
		$nav.removeClass("current");
		$this.addClass("current");
		var $currentMenu = $($this.attr("href"));
		$menu.hide();
		$currentMenu.show();
		return false;
	});
	
	$menuItem.click(function() {
		var $this = $(this);
		$menuItem.removeClass("current");
		$this.addClass("current");
	});

});
</script>

</head>
<body>
	<script type="text/javascript">
		if (self != top) {
			top.location = self.location;
		};
	</script>
	<table class="main">
		<tr>
			<th class="logo">
				<a href="main.jhtml">
				<img src="../images/timg.jpg" alt="Gome" width="150px" height="50px"/>
				</a>
			</th>
			<th>
				<div id="nav" class="nav">
					<ul>
								<li>
									<a href="#product">商品</a>
								</li>
								<li>
									<a href="#order">订单</a>
								</li>
								<li>
									<a href="#member">会员</a>
								</li>
								<li>
									<a href="#content">内容</a>
								</li>
								<li>
									<a href="#marketing">营销</a>
								</li>
								<li>
									<a href="#statistics">统计</a>
								</li>
								<li>
									<a href="#system">系统</a>
								</li>
						<li>
							<a href="/" target="_blank">首页</a>
						</li>
					</ul>
				</div>
				<div class="link">
					<a href="http://www.shopxx.net" target="_blank">官方网站</a>|
					<a href="http://bbs.shopxx.net" target="_blank">交流论坛</a>|
					<a href="http://www.shopxx.net/about.html" target="_blank">关于我们</a>
				</div>
				<div class="link">
					<strong>admin</strong>
					您好!
					<a href="../profile/edit.jhtml" target="iframe">[账号设置]</a>
					<a href="../logout.jsp" target="_top">[注销]</a>
				</div>
			</th>
		</tr>
		<tr>
			<td id="menu" class="menu">
				<dl id="product" class="default">
					<dt>商品管理</dt>
					<dd>
						<a href="../zhjController/queryProduct.jhtml" target="iframe">商品管理</a>
					</dd>
					<dd>
						<a href="../zhjController/toCategoryPage.jhtml" target="iframe">商品分类</a>
					</dd>
					<dd>
						<a href="../product/showParameter.jsp" target="iframe">商品参数</a>
					</dd>
					<dd>
						<a href="../product/showAttribute.jsp" target="iframe">商品属性</a>
					</dd>
					<dd>
						<a href="../product/showSpecification.jsp" target="iframe">规格管理</a>
					</dd>
					<dd>
						<a href="../product/showBrand.jsp" target="iframe">品牌管理</a>
					</dd>
					<dd>
						<a href="../product/showProductNotify.jsp" target="iframe">到货通知</a>
					</dd>
				</dl>
				<dl id="order">
					<dt>订单管理</dt>
						<dd>
							<a href="<%=request.getContextPath()%>/lsController/orderList.jhtml" target="iframe">订单管理</a>
						</dd>
						<dd>
							<a href="<%=request.getContextPath()%>/lsController/queryPayment.jhtml" target="iframe">收款管理</a>
						</dd>
						<dd>
							<a href="<%=request.getContextPath()%>/lsController/queryRefunds.jhtml" target="iframe">退款管理</a>
						</dd>
						<dd>
							<a href="<%=request.getContextPath()%>/lsController/queryShipping.jhtml" target="iframe">发货管理</a>
						</dd>
						<dd>
							<a href="<%=request.getContextPath()%>/lsController/queryReturns.jhtml" target="iframe">退货管理</a>
						</dd>
						<dd>
							<a href="../delivery_center/list.jhtml" target="iframe">发货点管理</a>
						</dd>
						<dd>
							<a href="../delivery_template/list.jhtml" target="iframe">快递单模板</a>
						</dd>
				</dl>
				<dl id="member">
					<dt>会员管理</dt>
						<dd>
							<a href="../wzw/member.jsp" target="iframe">会员管理</a>
						</dd>
						<dd>
							<a href="../wzw/memberrank.jsp" target="iframe">会员等级</a>
						</dd>
						<dd>
							<a href="../member_attribute/list.jhtml" target="iframe">会员注册项</a>
						</dd>
						<dd>
							<a href="../review/list.jhtml" target="iframe">评论管理</a>
						</dd>
						<dd>
							<a href="../consultation/list.jhtml" target="iframe">咨询管理</a>
						</dd>
				</dl>
				<dl id="content">
					<dt>内容管理</dt>
						<dd>
							<a href="../cfyjsp/content/navigation.jsp" target="iframe">导航管理</a>
						</dd>
						<dd>
							<a href="../cfyjsp/article/queryArticle.jsp" target="iframe">文章管理</a>
						</dd>
						<dd>
							<a href="../article_category/list.jhtml" target="iframe">文章分类</a>
						</dd>
						<dd>
							<a href="../tag/list.jhtml" target="iframe">标签管理</a>
						</dd>
						<dd>
							<a href="../friend_link/list.jhtml" target="iframe">友情链接</a>
						</dd>
						<dd>
							<a href="../ad_position/list.jhtml" target="iframe">广告位</a>
						</dd>
						<dd>
							<a href="../ad/list.jhtml" target="iframe">广告管理</a>
						</dd>
						<dd>
							<a href="../template/list.jhtml" target="iframe">模板管理</a>
						</dd>
						<dd>
							<a href="../cache/clear.jhtml" target="iframe">缓存管理</a>
						</dd>
						<dd>
							<a href="../static/build.jhtml" target="iframe">静态化管理</a>
						</dd>
						<dd>
							<a href="../index/build.jhtml" target="iframe">索引管理</a>
						</dd>
				</dl>
				<dl id="marketing">
					<dt>营销管理</dt>
						<dd>
							<a href="<%=request.getContextPath()%>/promotion/list.jsp" target="iframe">促销管理</a>
						</dd>
						<dd>
							<a href="<%=request.getContextPath()%>/coupon/list.jsp" target="iframe">优惠券管理</a>
						</dd>
						<dd>
							<a href="<%=request.getContextPath()%>/seo/list.jsp" target="iframe">SEO设置</a>
						</dd>
						<dd>
							<a href="<%=request.getContextPath()%>/sitemap/build.jsp" target="iframe">Sitemap管理</a>
						</dd>
				</dl>
				<dl id="statistics">
					<dt>统计报表</dt>
						<dd>
							<a href="../cfyjsp/queryAccess.jhtml" target="iframe">访问统计</a>
						</dd>
						<dd>
							<a href="../statistics/setting.jhtml" target="iframe">统计设置</a>
						</dd>
						<dd>
							<a href="../sales/view.jhtml" target="iframe">销售统计</a>
						</dd>
						<dd>
							<a href="../sales_ranking/list.jhtml" target="iframe">销售排行</a>
						</dd>
						<dd>
							<a href="../purchase_ranking/list.jhtml" target="iframe">消费排行</a>
						</dd>
						<dd>
							<a href="../deposit/list.jhtml" target="iframe">预存款</a>
						</dd>
				</dl>
				<dl id="system">
					<dt>系统设置</dt>
						<dd>
							<a href="../setting/edit.jhtml" target="iframe">系统设置</a>
						</dd>
						<dd>
							<a href="../area/list.jhtml" target="iframe">地区管理</a>
						</dd>
						<dd>
							<a href="../payment_method/list.jhtml" target="iframe">支付方式</a>
						</dd>
						<dd>
							<a href="../shipping_method/list.jhtml" target="iframe">配送方式</a>
						</dd>
						<dd>
							<a href="../delivery_corp/list.jhtml" target="iframe">物流公司</a>
						</dd>
						<dd>
							<a href="../payment_plugin/list.jhtml" target="iframe">支付插件</a>
						</dd>
						<dd>
							<a href="../storage_plugin/list.jhtml" target="iframe">存储插件</a>
						</dd>
						<dd>
							<a href="../admin/list.jhtml" target="iframe">管理员</a>
						</dd>
						<dd>
							<a href="../role/list.jhtml" target="iframe">角色管理</a>
						</dd>
						<dd>
							<a href="../message/send.jhtml" target="iframe">发送消息</a>
						</dd>
						<dd>
							<a href="../message/list.jhtml" target="iframe">消息列表</a>
						</dd>
						<dd>
							<a href="../message/draft.jhtml" target="iframe">草稿箱</a>
						</dd>
						<dd>
							<a href="../log/list.jhtml" target="iframe">日志管理</a>
						</dd>
				</dl>
			</td>
			<td>
				<iframe id="iframe" name="iframe" src="<%=request.getContextPath()%>/lsJsp/gm.jsp" frameborder="0"></iframe>
			</td>
		</tr>
	</table>

</body>
</html>