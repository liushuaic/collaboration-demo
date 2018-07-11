<%--
  Created by IntelliJ IDEA.
  User: 33032
  Date: 2018/7/11
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="saveArt_form">
标题:<input   name="title" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">  <br><br>
文章分类:<select name="articlecategoryid">
    <option value="1">商场动态</option>
    <option value="2">活动促销</option>
    <option value="3">购物指南</option>
    <option value="4">支付方式</option>
    <option value="5">配送方式</option>
    <option value="6">售后服务</option>
    <option value="7">关于我们</option>
</select> <br><br>
作者:<input   name="author" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">  <br><br>
设置:<input type="checkbox" name="ispublication" checked value="1">是否发布 <input type="checkbox" name="istop" checked value="1">是否置顶  <br><br>
标签:<input type="checkbox" name="tagsid" checked value="1">热点 <input type="checkbox" name="tagsid" checked value="2">推荐  <br><br>
内容:<textarea  name="content"></textarea> <br><br>
页面标题:<input   name="seotitle" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">  <br><br>
页面关键字:<input   name="seokeywords" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">  <br><br>
页面描述:<input   name="seodescription" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">
</form>
</body>
</html>
