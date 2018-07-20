$(function() {
	var screenWidth_now = document.body.offsetWidth;

	function init_top() {
		var screenWidth_top = document.body.offsetWidth;
		screenWidth_now = document.body.offsetWidth;
		if(screenWidth_top > 991) {
			//轮播图(锚点导航)

			var mySwiper_navigation_right = new Swiper('.js_serve_right', {
				loop: true,
				//				autoplay: 5000,
				autoplayDisableOnInteraction: false,
				speed: 1000,
				roundLengths: true,
				updateOnImagesReady : true
			})
			var mySwiper_navigation_left = new Swiper('.js_serve_left', {
				loop: true,
				autoplay: 5000,
				autoplayDisableOnInteraction: false,
				speed: 1000,
				roundLengths: true,
				updateOnImagesReady : true,
				onSlideNext: function(swiper) {
					mySwiper_navigation_right.swipePrev();
				},
				onSlidePrev: function(swiper) {
					mySwiper_navigation_right.swipeNext();
				},

			})

		} else {
			var mySwiper_navigation_top = new Swiper('.js_serve_top', {
				loop: true,
				autoplay: 5000,
				speed: 1000,
				autoplayDisableOnInteraction: false,
				roundLengths: true,
				updateOnImagesReady : true
			})

		}
	}
	init_top();
	$(window).resize(function() {
		if(screenWidth_now > 991 && document.body.offsetWidth <= 991) {
			init_top();
		} else if(screenWidth_now <= 991 && document.body.offsetWidth > 991) {
			init_top();
		} else {

		}

	})
	//创建滚动条
	//var bar = $(".js_scroll").oScrollBar();
	//bar.init();
	var iNum = -1;
	var iNum_up = -1;
	var iNum_down = -1;
	var isDown = 0;
	var isDown_up = 0;
	var isDown_down = 0;
	var tick = null;
	var tick_up = null;
	var tick_down = null;
	var tick_word = null;
	//光标定位内容改变时出现搜索结果下拉框
	$('body').on('click', function(e) {
		if($(e.target).hasClass('js_search_serve') || $(e.target).hasClass("js_show_input_wrap") || $(e.target).parent().hasClass("js_show_input_wrap") || $(e.target).parents().hasClass("jjs_show_input_wrap")) {
			$(".js_search_serve").focus();
			$(".js_show_input_wrap").css("display", "none");
			//$(".search_banner_list").css("visibility", "visible");
		} else if($(e.target).hasClass('search_banner_list') || $(e.target).parents().hasClass('search_banner_list') || $(e.target).parent().hasClass('search_banner_list')) {

		} else {
			if($(".js_search_serve").val() == "" || $(".js_search_serve").val() == null || typeof($(".js_search_serve").val()) == "undefined") {
				$(".js_show_input_wrap").css("display", "block");
			}
			//$(".search_banner_list").css("visibility", "hidden");
		}
	});
	//文字翻转

	function setTime() {
		wordTurn();
		clearInterval(tick_word);
		tick_word = setInterval(wordTurn, 6300);
	}
	setTime();

	function wordTurn() {
		iNum = -1;
		iNum_down = -1;
		iNum_up = -1;
		clearInterval(tick);
		clearInterval(tick_up);
		clearInterval(tick_down);
		tick = setInterval(turnText, 100);
		tick_up = setInterval(turnText_up, 100);
		tick_down = setInterval(turnText_down, 100);
	}

	function turnText() {
		iNum++;
		if(isDown == "0") {
			if(iNum < $(".js_turn").length) {
				$(".js_turn").eq(iNum).removeClass("active");
				$(".js_turn_down").eq(iNum).addClass("active");
				if(iNum == $(".js_turn").length - 1) {
					clearInterval(tick);
					iNum = -1;
					isDown = 1;
					return false;
				}
			}
		} else {
			if(iNum < $(".js_turn").length) {
				$(".js_turn_down").eq(iNum).removeClass("active");
				$(".js_turn").eq(iNum).addClass("active");
				if(iNum == $(".js_turn").length - 1) {
					clearInterval(tick);
					iNum = -1;
					isDown = 0;
					return false;
				}
			}
		}

	}

	function turnText_up() {
		iNum_up++;
		if(isDown_up == "0") {
			if(iNum_up < $(".english_head_top .js_trun_txt").length) {
				$(".english_head_top .js_trun_txt").eq(iNum_up).removeClass("active");
				$(".english_head_top .js_trun_txt_down").eq(iNum_up).addClass("active");
				if(iNum_up == $(".english_head_top .js_trun_txt").length - 1) {
					clearInterval(tick_up);
					iNum_up = -1;
					isDown_up = 1;
					return false;
				}
			}
		} else {
			if(iNum_up < $(".english_head_top .js_trun_txt").length) {
				$(".english_head_top .js_trun_txt_down").eq(iNum_up).removeClass("active");
				$(".english_head_top .js_trun_txt").eq(iNum_up).addClass("active");
				if(iNum_up == $(".english_head_top .js_trun_txt").length - 1) {
					clearInterval(tick_up);
					iNum_up = -1;
					isDown_up = 0;
					return false;
				}
			}
		}

	}

	function turnText_down() {
		iNum_down++;
		if(isDown_down == "0") {
			if(iNum_down < $(".english_head_bottom .js_trun_txt").length) {
				$(".english_head_bottom .js_trun_txt").eq(iNum_down).removeClass("active");
				$(".english_head_bottom .js_trun_txt_down").eq(iNum_down).addClass("active");
				if(iNum_down == $(".english_head_bottom .js_trun_txt").length - 1) {
					clearInterval(tick_down);
					iNum_down = -1;
					isDown_down = 1;
					return false;
				}
			}
		} else {
			if(iNum_down < $(".english_head_bottom .js_trun_txt").length) {
				$(".english_head_bottom .js_trun_txt_down").eq(iNum_down).removeClass("active");
				$(".english_head_bottom .js_trun_txt").eq(iNum_down).addClass("active");
				if(iNum_down == $(".english_head_bottom .js_trun_txt").length - 1) {
					clearInterval(tick_down);
					iNum_down = -1;
					isDown_down = 0;
					return false;
				}
			}
		}

	}
	/*//关闭弹窗
	$(".js_close_pup").click(function() {
		//		Validform_status.resetForm();
		$(".Validform_checktip").removeClass("Validform_wrong").removeClass("Validform_right");
		$(".Validform_checktip").html(""); //重置提示信息
		$(".js_pup_wrap").addClass("js_hide");
		$(".js_shade_up").addClass("js_hide"); //隐藏所有弹层
		$(".js_shade_up").removeClass("show");
		$(".service_pup").css("display", "none");
	});*/

	//打开弹层-->调整为到模板的js里控制显示 by shiyuanyuan on 2018年3月7日10:57:52
	// $(".js_status").click(function() {
	// 	$(".js_pup_wrap").removeClass("js_hide");
	// 	$(".js_pup_status").css("display", "block");
	// })
	//$(".js_status").click(function() {
	//init();
	//		$(".js_pup_wrap").removeClass("js_hide");
	//		$(".js_shade_up").removeClass("js_hide");
	//		$(".js_shade_up").addClass("show");
	//		$(".js_pup_status").css("display", "block");
	//})
	/*$(".js_policy").click(function() {
		init();
		$(".js_pup_wrap").removeClass("js_hide");
		$(".js_shade_up").removeClass("js_hide");
		$(".js_shade_up").addClass("show");
		$(".js_pup_policy").css("display", "block");
	})
	$(".js_downLoad").click(function() {
		init();
		$(".js_pup_wrap").removeClass("js_hide");
		$(".js_shade_up").removeClass("js_hide");
		$(".js_shade_up").addClass("show");
		$(".js_pup_downLoad").css("display", "block");
	})*/

	//	mySwiper_navigation_left.params.control = mySwiper_navigation_right;
	//	mySwiper_navigation_right.params.control = mySwiper_navigation_left;
	//	mySwiper_navigation_left.params.controlInverse = false;
	//	mySwiper_navigation_right.params.controlInverse = false;
	//表单验证
	// /*
	//  * 点击提交时验证
	//  */
	// $(".js_submit_status").click(function() {
	// 	check_ph();
	// 	check_code();
	// })
	// //验证手机
	// $("#ph_serve").on("focus",function () {
	// 	$("#ph_serve").on("blur",function () {
	// 		check_ph();
	// 	})
	// })
	//
	// function check_ph() {
	// 	if($("#ph_serve").val() == "请输入联系人手机号" || $("#ph_serve").val() == "" || $("#ph_serve").val() == null || typeof($("#ph_serve").val()) == "undefined") {
	// 		$("#ph_serve").addClass("Validform_error");
	// 		$(".js_ph").removeClass("Validform_right").addClass("Validform_wrong");
	// 		$(".js_ph").html("<i class='iconfont icon-information-solid'></i>请输入手机号码");
	// 	} else {
	// 		var reg = /^1[3|4|5|7|8][0-9]{9}$/;
	// 		if(reg.test($("#ph_serve").val())) {
	// 			$("#ph_serve").removeClass("Validform_error");
	// 			$(".js_ph").addClass("Validform_right").removeClass("Validform_wrong");
	// 			$(".js_ph").html("");
	// 		} else {
	// 			$("#ph_serve").addClass("Validform_error");
	// 			$(".js_ph").removeClass("Validform_right").addClass("Validform_wrong");
	// 			$(".js_ph").html("<i class='iconfont icon-information-solid'></i>请输入正确的手机号码");
	// 		}
	// 	}
	// }
	// //验证验证码
	// function check_code() {
	//
	// }
	// var Validform_status = $(".js_popup_status").Validform({
	// 	tiptype: 3,
	// 	label: ".label",
	// 	showAllError: true,
	// 	ignoreHidden: true,
	// 	datatype: {
	// 		"phone": /^1[3|4|5|7|8][0-9]{9}$/,
	// 	},
	// 	btnSubmit: '.js_submit_status',
	// 	callback: function(form) {
	// 		//这里是所有验证都通过以后，执行的回调函数
	// 		if($(".js_ph").hasClass("Validform_wrong") || $(".js_code").hasClass("Validform_wrong")){
	// 			//验证未通过
	// 		}else{
	// 			//验证通过后执行的函数
	// 		}
	// 			return false; //最后加上这个，这个必须写
	// 	},
	// });
})