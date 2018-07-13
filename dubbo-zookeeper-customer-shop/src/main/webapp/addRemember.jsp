
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>添加会员等级 - Powered By SHOP++</title>
    <meta name="author" content="SHOP++ Team"/>
    <meta name="copyright" content="SHOP++"/>
    <script type="text/javascript" src="<%=path%>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="<%=path%>/js/EasyUI/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/EasyUI/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>/js/EasyUI/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/js/EasyUI/themes/icon.css">
</head>
<body>
<ul id="myTab" class="nav nav-tabs">
    <li class="active"><a href="#home" data-toggle="tab">基本信息</a></li>
    <li><a href="#ios" data-toggle="tab">个人资料</a></li>
</ul>
<div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active" id="home">
        <table align="center">
            <input type="hidden" value="${mr.mrid}" name="mrid"/>
            <tr>
                <td align="right"><font color="red">*</font>用户名:</td>
                <td>
                    <input type="text" class="form-control" name="username" value="${mr.mrname}" style="width: 100%">
                </td>
            </tr>
            <tr>
                <td align="right"><font color="red">*</font>密码:</td>
                <td>
                    <input type="text" class="form-control" name="password" value="${mr.mrname}" style="width: 100%">
                </td>
            </tr>
            <tr>
                <td align="right"><font color="red">*</font>确认密码:</td>
                <td>
                    <input type="text" class="form-control" id="pwd" style="width: 100%">
                </td>
            </tr>
            <tr>
                <td align="right"><font color="red">*</font>E-mail:</td>
                <td>
                    <input type="text" class="form-control" id="email" style="width: 100%">
                </td>
            </tr>
            <tr>
                <td align="right"><font color="red">*</font>积分:</td>
                <td>
                    <input type="text" class="form-control" id="point" placeholder="0" style="width: 100%">
                </td>
            </tr>
            <tr>
                <td align="right"><font color="red">*</font>余额:</td>
                <td>
                    <input type="text" class="form-control" id="balance" placeholder="0" style="width: 100%">
                </td>
            </tr>
            <tr>
                <td align="right"><font color="red">*</font>会员等级:</td>
                <td>
                    <select id="memberrank" name="memberrank" style="width: 100%">

                    </select>
                </td>
            </tr>
        </table>
    </div>
    <div class="tab-pane fade" id="ios">

    </div>
</div>
<script>
    $(function () {
        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            // 获取已激活的标签页的名称
            var activeTab = $(e.target).text();
            // 获取前一个激活的标签页的名称
            var previousTab = $(e.relatedTarget).text();
            $(".active-tab span").html(activeTab);
            $(".previous-tab span").html(previousTab);
        });
    });
    $("#memberrank").combobox({
        url:"../memberrank/queryMenberList1.jhtml",
        valueField:'mrid',
        textField:'mrname',
    })
</script>
</body>
</html>
