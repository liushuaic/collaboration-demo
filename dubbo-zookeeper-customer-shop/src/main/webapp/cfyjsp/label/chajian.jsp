<%--
  Created by IntelliJ IDEA.
  User: 33032
  Date: 2018/7/10
  Time: 17:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<!-- 引入EasyUI的样式文件-->
<link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css" type="text/css"/>

<!-- 引入EasyUI的图标样式文件-->
<link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css" type="text/css"/>
<!--上传图片的文件-->
<link rel="stylesheet" href="<%=request.getContextPath()%>/uploadify/uploadify.css">
<body>
<!-- 引入JQuery -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.min.js"></script>

<!-- 引入EasyUI -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.easyui.min.js"></script>

<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<!--上传图片的文件-->
<script src="<%=request.getContextPath()%>/uploadify/jquery.uploadify.min.js"></script>
<!-- tree 文件-->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/util-js.js"></script>

</body>
</html>
