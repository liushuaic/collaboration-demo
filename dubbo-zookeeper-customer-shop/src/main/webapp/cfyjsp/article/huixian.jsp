<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="updateArt_form">
    <input type="hidden" value="${list.arid }" name="arid">
    标题:<input   name="title" value="${list.title}" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">  <br><br>
    文章分类:<select name="articlecategoryid">
    <option value="1" ${list.articlecategoryid ==1?"selected":""}>商场动态</option>
    <option value="2" ${list.articlecategoryid ==2?"selected":""}>活动促销</option>
    <option value="3" ${list.articlecategoryid ==3?"selected":""}>购物指南</option>
    <option value="4" ${list.articlecategoryid ==4?"selected":""}>支付方式</option>
    <option value="5" ${list.articlecategoryid ==5?"selected":""}>配送方式</option>
    <option value="6" ${list.articlecategoryid ==6?"selected":""}>售后服务</option>
    <option value="7" ${list.articlecategoryid ==7?"selected":""}>关于我们</option>
</select> <br><br>
    作者:<input   name="author" value="${list.author}" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">  <br><br>
    设置:<input type="checkbox" value="${list.ispublication}" name="ispublication" checked value="1">是否发布 <input type="checkbox" name="istop" checked value="1">是否置顶<br><br>
    标签:<input type="checkbox" value="${list.tagsid}" name="tagsid" checked value="1">热点 <input type="checkbox" name="tagsid" checked value="2">推荐  <br><br>
    内容:<textarea  name="content">${list.content}</textarea> <br><br>
    页面标题:<input   name="seotitle" value="${list.seotitle}" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">  <br><br>
    页面关键字:<input   name="seokeywords"  value="${list.seokeywords}" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">  <br><br>
    页面描述:<input   name="seodescription" value="${list.seodescription}" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">
</form>
</body>
</html>
