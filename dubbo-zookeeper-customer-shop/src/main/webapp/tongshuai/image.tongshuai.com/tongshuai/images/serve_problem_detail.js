$(function() {
	//移动端右上角搜索图标点击
	$(".js_icon_click").click(function() {
		$(".js_pro_wrap").addClass("active");
	})
	$("body").click(function(e) {
		if($(e.target).hasClass("js_parent_target") || $(e.target).parent().hasClass("js_parent_target") || $(e.target).hasClass("js_icon_click")) {} else {
			$(".js_pro_wrap").removeClass("active");
		}
	})
	//下拉菜单初始化
	$(".js_select_product").oSelect().init();
	//点击问题下拉菜单
	$(".select_bottom").click(function() {
		if($(this).find(".select_list").css("display") == "none") {
			$(this).find(".select_list").css("display", "block");
			$("body").click(function(e) {
				var size1 = $(e.target).parents('.select_bottom').size();
				if($(e.target).hasClass('select_bottom') || size1) {} else {
					$(".select_bottom .select_list").css("display", "none");
				}
			})
		} else {
			$(this).find(".select_list").css("display", "none");
		}
	})
	$(".select_bottom .select_list .problem_group_item").click(function() {
		$(".select_bottom .select_list .problem_group_item").removeClass("active");
		$("http://image.tongshuai.com/tongshuai/images/.select_bottom .name").text($(this).text());
		$(this).addClass("active");
	})
	//图标点击
	// $(".js_good_yes").click(function() {
	// 	if($(this).hasClass("active")) {
	// 		$(this).removeClass("active");
	// 	} else {
	// 		$(this).addClass("active");
	// 	}
	//
	// })
	// $(".js_good_no").click(function() {
	// 	$(".js_problem_wrap").addClass("active");
	// 	$(".js_hate_wrap").removeClass("active");
	// })
	//	$(".js_close").click(function() {
	//		$(".js_textarea_consult").blur().css("border-color", "#ccc");
	//		$(".js_problem_wrap").removeClass("active");
	//		$(".js_hate_wrap").addClass("active");
	//		demo.resetForm(); //重置表单
	//		$(".js_textarea_consult").val("我们将不断改进，为您提供更优质的服务");
	//		$(".js_textarea_consult").css("color", "#ccc");
	//		$(".Validform_checktip").html(""); //重置提示信息
	//	})
	//表单验证
	//	$("body").click(function() {
	//		if($(".js_textarea_msg").hasClass("Validform_right")) {
	//			$(".js_textarea_msg").html("");
	//		}
	//	})
	//	var demo = $(".js_popup_validForm").Validform({
	//		tiptype: 3,
	//		label: ".label",
	//		showAllError: true,
	//		datatype: {
	//			"phone": /^1[3|4|5|7|8][0-9]{9}$/
	//		},
	//		btnSubmit: '.js_submit_consult',
	//		callback: function(form) {
	//			if($(".js_textarea_msg").hasClass("Validform_right")) {
	//				$(".js_textarea_msg").html("");
	//			}
	//			//表单验证
	//			if($(".js_textarea_consult").val() == "我们将不断改进，为您提供更优质的服务" || $(".js_textarea_consult").val() == "" || $(".js_textarea_consult").val() == null || typeof($(".js_textarea_consult").val()) == "undefined") {
	//				$(".js_textarea_msg").removeClass("Validform_right").addClass("Validform_wrong");
	//				$(".js_textarea_msg").html("<i class='iconfont icon-information-solid'></i>请输入不满意的原因");
	//			} else {
	//
	//			}
	//			return false; //最后加上这个，这个必须写
	//		},
	//	});
})