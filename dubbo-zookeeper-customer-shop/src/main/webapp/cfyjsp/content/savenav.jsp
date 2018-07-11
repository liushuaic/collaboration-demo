<%--
  Created by IntelliJ IDEA.
  User: 33032
  Date: 2018/7/11
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="saveNav_form">

    名称:<input   name="ptname" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">  <br><br>
    位置:<input type="radio" name="position" value="1">顶部
    <input type="radio" name="position"  value="2">中间
    <input type="radio" name="position" value="3"><br><br>
    链接地址：<input  name="url" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px"><br><br>
    是否打开新窗口：<input type="checkbox" name="isblanktarget" ckecked value="1">

</form>
</body>
</html>
