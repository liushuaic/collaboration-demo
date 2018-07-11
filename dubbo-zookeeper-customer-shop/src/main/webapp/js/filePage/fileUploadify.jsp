<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
  $(function(){
	  
	  
	//文件域的id
      $("#imgOneFileBTN").uploadify({
      //前台请求后台的url 不可忽略的参数
      'uploader' :"<%=request.getContextPath()%>/user/savePhoto.do",
      //插件自带 不可忽略的参数
      'swf' : '<%=request.getContextPath()%>/js/uploadify/uploadify.swf',
    //撤销按钮的图片路径
      'cancelImg' : '<%=request.getContextPath() %>/js/uploadify/uploadify-cancel.png',
    //如果为true 为自动上传 在文件后 为false 那么它就要我们自己手动点上传按钮
      'auto' : true,
      //可以同时选择多个文件 默认为true 不可忽略
      'multi' : false,
      //给上传按钮设置文字
      'buttonText' : '选取封面',
      //上传后队列是否消失
      'removeCompleted' : true,
      'removeTimeout' : 1,
    //上传文件的个数
      'uploadLimit' : 2,
      'fileTypeExts' : '*.jpg;*.jpge;*.gif;*.png',
      'fileSizeLimit' : '2MB',
    //给div的进度条加背景 不可忽略
      'queueID' : 'showBarDivOne',
   // action中接收文件的全局变量名
      'fileObjName' : 'artImg',
      'onUploadSuccess' : function(file, data, response) {
         //alert(data);
           
         //图片回显， 预览
			$("#show_imgone").attr("src","<%=request.getContextPath()%>/"+data)
			// 文本框 回填
			$("#hiddenImgOne").val(data);
 }

      });
  	
	  
	  
  })


</script>
</body>
</html>