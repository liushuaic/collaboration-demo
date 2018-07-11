<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>添加会员等级 - Powered By SHOP++</title>
    <meta name="author" content="SHOP++ Team" />
    <meta name="copyright" content="SHOP++" />
    <script type="text/javascript" src="<%=path%>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="<%=path%>/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=path%>/js/kindeditor-4.1.10/kindeditor.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>/js/kindeditor-4.1.10/lang/zh_CN.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/js/easyui/themes/icon.css">
</head>
<body>
<div class="path">
    <a href="#">首页</a> &raquo; 添加会员等级
</div>
<form method="post" id="myForm">
    <table align="center">
        <input type="hidden" value="${mr.mrid}" name="mrid"/>
        <%--<div class="form-group">
            <label for="inputEmail3" class="col-sm-4 control-label">名称</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" value="${mr.mrname}" name="mrname" id="inputEmail3" style="width: 200px">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-4 control-label">优惠比列</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" value="${mr.scale}" name="scale" id="inputPassword3" style="width: 200px">
            </div>
        </div>
        <div class="form-group">
            <label for="inputAmount3" class="col-sm-4 control-label">消费金额</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="disabled" value="${mr.amount}" name="amount" id="inputAmount3" style="width: 200px">
            </div>
        </div>
        <div class="form-group">
            <label for="inputAmount3" class="col-sm-4 control-label">设置</label>
            <div class="col-sm-8">
                <input type="checkbox" value="1" ${mr.isdefault == '1'? "checked":""} name="isdefault">是否默认
                <input type="checkbox" value="1" ${mr.isspecial == '2'? "checked":""} id="wzw" onclick="test()" name="isspecial">是否特殊
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-4 col-sm-8">
                <button type="submit" class="btn btn-default">确定</button>
                <button type="button" onclick="tiao()" class="btn btn-default">返回</button>
            </div>
        </div>--%>
        <tr>
            <td>名称:</td>
            <td>
                <input type="text" class="form-control" name="mrname" value="${mr.mrname}">
            </td>
        </tr>
        <tr>
            <td>密码:</td>
            <td>
                <input type="text" class="form-control" name="scale" value="${mr.scale}">
            </td>
        </tr>

        <tr>
            <td>昵称:</td>
            <td><input type="text" class="form-control" id="disabled" value="${mr.amount}" name="amount"></td>
        </tr>
        <tr>
            <td><label>设置:</label></td>
            <td>
                    <input type="checkbox" value="1" ${mr.isdefault == '1'? "checked":""} name="isdefault">是否默认
                    <input type="checkbox" value="1" ${mr.isspecial == '1'? "checked":""} id="wzw" onclick="test()" name="isspecial">是否特殊
            </td>
        </tr>
    </table>
</form>
<script type="text/javascript">
    function tiao(){
        location.href="../memberrank.jsp";
    }
    var info = $("#wzw").is(":checked");
    if(info == true){
        document.getElementById("disabled").disabled = true;
    }else{
        document.getElementById("disabled").disabled = false;
    }
    function test(){
        var info = $("#wzw").is(":checked");
        if(info == true){
            document.getElementById("disabled").disabled = true;
        }else{
            document.getElementById("disabled").disabled = false;
        }
    }
</script>
</body>
</html>