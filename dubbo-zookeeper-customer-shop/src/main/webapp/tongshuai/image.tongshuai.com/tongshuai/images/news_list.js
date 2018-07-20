$(function() {

	function init() {

		var screenWidth = document.body.offsetWidth;
		var screenHeight = document.body.offsetHeight;

	}
	//响应式图片
	$(".js_recPic").each(function() {
		$(this).oPicture({
			//自定义节点宽度
			//sm:544,md:700,lg:992,xl:1200,
		}).init();
	});
	//文字截断
	function wordCut() {
		$(".js_cutWord").each(function() {
			if($(this).parents(".news_list").hasClass("news_nopic")) {
				var arrno = [];
				for(var i = 0; i < $(this).siblings(".js_none_text").find("p").length; i++) {
					if($(this).siblings(".js_none_text").find("p")[i].innerText) {
						arrno.push($(this).siblings(".js_none_text").find("p")[i].innerText)
					}
				}
				if(arrno.length > 0) {
					if(arrno[0].length > 100) {
						$(this).html(arrno[0].slice(0, 100) + "...");
					} else {
						$(this).html(arrno[0]);
					}
				}
			} else {
				var arr = [];
				for(var i = 0; i < $(this).siblings(".js_none_text").find("p").length; i++) {
					if($(this).siblings(".js_none_text").find("p")[i].innerText) {
						arr.push($(this).siblings(".js_none_text").find("p")[i].innerText)
					}
				}
				if(arr.length > 0) {
					if(arr[0].length > 70) {
						$(this).html(arr[0].slice(0, 70) + "...");
					} else {
						$(this).html(arr[0]);
					}
				}
			}

		})
	}
	wordCut();
});