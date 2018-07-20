<%--
  Created by IntelliJ IDEA.
  User: WANG
  Date: 2018/7/19
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Title</title>
</head>
<body>
<form id="updatepl-from" method="post">
    <input type="hidden" name="reviewid" value="${c.reviewid}"/>
    <table align="center">
        <tr>
            <td>商品：</td>
            <td>${c.name}</td>
        </tr>
        <tr>
            <td>会员：</td>
            <td>${c.mrname}</td>
        </tr>
        <tr>
            <td>评分：</td>
            <td>${c.score}</td>
        </tr>
        <tr>
            <td>内容：</td>
            <td>${c.content}</td>
        </tr>
        <tr>
            <td>是否显示：</td>
            <td><input type="checkbox" value="1" ${c.isshow == 1?"checked":""} name="isshow"></td>
        </tr>
    </table>
</form>
</body>
</html>
