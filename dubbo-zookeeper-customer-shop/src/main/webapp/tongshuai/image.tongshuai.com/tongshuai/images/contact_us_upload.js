$(function() {
	var templet_pic = "";
	var pic_html = "";
	//代码片段
	$.jUploader.setDefaults({
		cancelable: true, // 可取消上传
		allowedExtensions: ['jpg', 'png', 'jpeg'], // 只允许上传图片
		messages: {
			upload: '上传',
			cancel: '取消',
			emptyFile: "{file} 为空，请选择一个文件.",
			//invalidExtension: "{file} 后缀名不合法. 只有 {extensions} 是允许的.",
			invalidExtension: "只能上传后缀名是 {extensions} 的图片。",
			onLeave: "文件正在上传，如果你现在离开，上传将会被取消。"
		}
	});
	$.jUploader({
		fileField: 'file',
		button: "js_imgUpload1", // 这里设置按钮id
		fillsize: '5',
		action: siteConfig.domain + '/interaction-service/imageUpload', //这里写地址

		// 开始上传事件
		onUpload: function(data) {
			// $.jUploader.defaults.otherArgs = {
			//   // activityId: activityId,
			//   proportion: proportion,
			//   slotId: minSizeSlotId
			// };
		},
		// 上传完成事件
		onComplete: function(name, data) {
			if(data.isSuccess) {
				templet_pic = '/hsfile/' + $.trim(data.data);
				$(".js_show_pic .js_up_pic").prop("src", templet_pic);
				$('.js_show_pic').css('display', 'block');
			} else {
				$(".js_img_msg").removeClass("gray");
				$(".js_img_msg").removeClass("Validform_right").addClass("Validform_wrong");
				$(".js_img_msg").html("<i class='iconfont icon-information-solid'></i>图片上传失败");

			}

		},
		// 系统信息显示（例如后缀名不合法）
		showMessage: function(message) {
			alert(message);
		},
		// 取消上传事件
		onCancel: function(fileName) {},
		debug: true
	});

})