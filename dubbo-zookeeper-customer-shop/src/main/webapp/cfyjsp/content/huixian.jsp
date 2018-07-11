<%--
  Created by IntelliJ IDEA.
  User: 33032
  Date: 2018/7/10
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form id="updateNav_form">
    <input type="hidden" value="${list.nid }" name="nid">
     名称:<input value="${list.ptname }" name="ptname" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">  <br><br>
     位置:<input type="radio" name="position" ${list.position==1?"checked":""} value="1">顶部
          <input type="radio" name="position"  ${list.position==2?"checked":""} value="2">中间
          <input type="radio" name="position"  ${list.position==3?"checked":""} value="3"><br><br>
   链接地址：<input value="${list.url }" name="url" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px"><br><br>
    是否打开新窗口：<input type="checkbox" name="isblanktarget" ckecked value="1"  ${list.isblanktarget.indexOf('1') > -1 ? "checked" : "" } >

</form>
</body>
</html>
