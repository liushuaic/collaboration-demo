$(function() {
	//下拉菜单初始化
	$(".js_select_product").oSelect().init();
	//点击问题下拉菜单
	$(".select_bottom").click(function () {
		if($(this).find(".select_list").css("display")=="none"){
			$(this).find(".select_list").css("display","block");
			$("body").click(function (e) {
    				var size1 = $(e.target).parents('.select_bottom').size();
    				if($(e.target).hasClass('select_bottom')||size1){
    				}else{
    					$(".select_bottom .select_list").css("display","none");
    				}				
    			})
		}else{
			$(this).find(".select_list").css("display","none");
		}
	})
	$(".select_bottom .select_list .problem_group_item").click(function () {
		$(".select_bottom .select_list .problem_group_item").removeClass("active");
		$("http://image.tongshuai.com/tongshuai/images/.select_bottom .name").text($(this).text());
		$(this).addClass("active");
	})
	//移动端右上角搜索图标点击
	$(".js_icon_click").click(function () {
		$(".js_pro_wrap").addClass("active");
	})
	$("body").click(function (e) {
		if($(e.target).hasClass("js_parent_target")||$(e.target).parent().hasClass("js_parent_target")||$(e.target).hasClass("js_icon_click")){
		}else{
			$(".js_pro_wrap").removeClass("active");
		}
	})
})