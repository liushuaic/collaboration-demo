$(function() {
	var scrollPosEl = new Object();
	var navHeight = $(".js_navigation")[0].offsetHeight;
	setPosEl();

	function setPosEl() {
		navHeight = $(".js_navigation")[0].offsetHeight;
		$('.js_navigation').find('span[data-nav]').each(function(i, n) {
			var href = $(this).attr('data-nav');
			var jshref = '.' + href;
			if(href == "js_introduce") {
				scrollPosEl[href] = parseInt($(jshref).offset().top);
			} else {
				scrollPosEl[href] = parseInt($(jshref).offset().top - navHeight);
			}
		});
	}
	//导航栏定位			
	function setNavLight() {
		var menuT = $(".js_navi").offset().top;
		var currentPos = Math.ceil($(document).scrollTop());
		if(currentPos > menuT) {
			$(".js_navigation").addClass("fixed");
		} else {
			$(".js_navigation").removeClass("fixed");
		}
		//导航高亮					
		var navName; //高亮导航位置
		var navHigh;
		$('.js_navigation').find('span[data-nav]').removeClass('active');
		jQuery.each(scrollPosEl, function(i, n) {
			if(n <= currentPos) {
				if(navName) {
					if(currentPos - n <= navHigh) {
						navName = i;
						navHigh = currentPos - n;
					}
				} else {
					navName = i;
					navHigh = currentPos - n;
				}
			} else {
				if(currentPos <= $(".l-nav")[0].offsetHeight) {
					$('.js_navigation').find('span[data-nav]').eq(0).addClass("active");
				}
			}
		});
		var outw = $(".swiper_navigation .swiper-wrapper")[0].offsetWidth;
		var innerw = $(".swiper_navigation")[0].offsetWidth;
		var leftX = -(outw - innerw);
		if(innerw <= outw) {
			if(innerw > outw - 112) {
				if(navName == "js_glory") {
					leftX = leftX;
				} else {
					leftX = 0;
				}

			} else if(innerw <= outw - 122 && innerw > outw - 224) {
				if(navName == "js_glory") {
					leftX = leftX;
				} else if(navName == "js_history") {
					leftX = leftX + 112;
				} else {
					leftX = 0;
				}
			} else if(innerw <= outw - 224 && innerw > outw - 336) {
				if(navName == "js_glory") {
					leftX = leftX;
				} else if(navName == "js_history") {
					leftX = leftX + 112;
				} else if(navName == "js_advantage") {
					leftX = leftX + 224;
				} else {
					leftX = 0;
				}
			} else if(innerw <= outw - 336 && innerw > outw - 448) {
				if(navName == "js_glory") {
					leftX = leftX;
				} else if(navName == "js_history") {
					leftX = leftX + 112;
				} else if(navName == "js_advantage") {
					leftX = leftX + 224;
				} else if(navName == "js_idea") {
					leftX = leftX + 336;
				} else {
					leftX = 0;
				}
			} else if(innerw <= outw - 448 && innerw > outw - 560) {
				if(navName == "js_glory") {
					leftX = leftX;
				} else if(navName == "js_history") {
					leftX = leftX + 112;
				} else if(navName == "js_advantage") {
					leftX = leftX + 224;
				} else if(navName == "js_idea") {
					leftX = leftX + 336;
				} else if(navName == "js_electrical") {
					leftX = leftX + 448;
				} else {
					leftX = 0;
				}
			} else {
				if(navName == "js_glory") {
					leftX = leftX;
				} else if(navName == "js_history") {
					leftX = leftX + 112;
				} else if(navName == "js_advantage") {
					leftX = leftX + 224;
				} else if(navName == "js_idea") {
					leftX = leftX + 336;
				} else if(navName == "js_electrical") {
					leftX = leftX + 448;
				} else if(navName == "js_introduce") {
					leftX = leftX + 560;
				} else {
					leftX = 0;
				}
			}
			$(".swiper_navigation .swiper-wrapper").css("transform", "translate3d(" + leftX + "px,0px,0px)");
		}
		$('.js_navigation').find('span[data-nav=' + navName + ']').addClass('active');
	}
	//响应式图片
	$(".js_recPic").each(function() {
		$(this).oPicture({
			//自定义节点宽度
			//sm:544,md:700,lg:992,xl:1200,
		}).init();
	});

	function init() {

		var screenWidth = document.body.offsetWidth;
		var screenHeight = document.body.offsetHeight;
		if(screenWidth > 991) {
			$(".swiper_advantage .swiper-slide:nth-child(even)").css("margin-top", "120px");
		}else{
			$(".swiper_advantage .swiper-slide:nth-child(even)").css("margin-top", "0px");
		}
	}
	init();
	$(window).resize(function() {
		init();
		setPosEl();
	})
	$(window).scroll(function() {
		setPosEl();
		if(timeout) {
			clearTimeout(timeout);
		}
		var timeout = setTimeout(function() {
			setNavLight();
		}, 100);

	});
	//点击定位
	var isClick = 0;
	$(".js_navigation span").on("click", function() {
		setPosEl();
		var href_click = $(this).attr('data-nav');
		var jshref_click = '.' + href_click;
		$("html,body").animate({
			scrollTop: scrollPosEl[href_click]
		}, 100);
		$(".js_navigation span").removeClass("active");
		$(this).addClass("active");
		isClick = 1;
		return false;
	});
	if(document.body.offsetWidth > 1199) {
		$(".js_navigation span").hover(function() {
			if($(this).hasClass("active")) {
				isClick = 2;
			} else {
				$(this).addClass("active");
				isClick = 3;
			}
		}, function() {
			if(isClick != 1 && isClick != 2) {
				$(this).removeClass("active");
			} else {

			}
		})
	}
	//轮播图(锚点导航)
	var mySwiper_navigation = new Swiper('.swiper_navigation', {
		paginationClickable: true,
		slidesPerView: 'auto'
	})
	//轮播图(品牌文化)
	var mySwiper_culture = new Swiper('.swiper_culture', {
		paginationClickable: true,
		slidesPerView: 'auto'
	})
	//轮播图(品牌优势)
	var mySwiper_advantage = new Swiper('.swiper_advantage', {
		paginationClickable: true,
		slidesPerView: 'auto'
	})

	//轮播图(品牌历史)
	var mySwiper_history = new Swiper('.swiper_history', {
		paginationClickable: true,
		slidesPerView: 'auto'
	})

});