<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../EasyUI/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../EasyUI/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="../js/kindeditor/kindeditor.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/kindeditor/lang/zh_CN.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="../EasyUI/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../EasyUI/themes/icon.css">  、
</head>
<body>
    <form id="couaddOrupdate" method="post">
        <input type="hidden" name="couid" value="${cou.couid }"/>
        <div class="easyui-tabs" >
            <div title="基本信息" style="padding:20px;">
                <table>
                    <tr>
                        <td>名称:</td>
                        <td><input class="easyui-textbox" name="name" value="${cou.name}" style="width:200px"/></td>
                    </tr>
                   <tr>
                        <td>使用起始日期:</td>
                        <td><input class="easyui-datebox" name="begindate" style="width:200px" value="${cou.begindate}"/></td>
                    </tr>
                    <tr>
                        <td>使用结束日期:</td>
                        <td><input class="easyui-datebox" name="enddate" style="width:200px" value="${cou.enddate}"/></td>
                    </tr>
                    <tr>
                        <td>最小商品数量:</td>
                        <td><input class="easyui-textbox" name="minimumquantity" style="width:200px" value="${cou.minimumquantity}"/></td>
                    </tr>
                    <tr>
                        <td>最大商品数量:</td>
                        <td><input class="easyui-textbox" name="maximumquantity" style="width:200px" value="${cou.maximumquantity}"/></td>
                    </tr>
                    <tr>
                        <td>最小商品价格:</td>
                        <td><input class="easyui-textbox" name="minimumprice" style="width:200px" value="${cou.minimumprice}"/></td>
                    </tr>
                    <tr>
                        <td>最大商品价格:</td>
                        <td><input class="easyui-textbox" name="maximumprice" style="width:200px" value="${cou.maximumprice}"/></td>
                    </tr>
                    <tr>
                        <td>价格运算表达式:</td>
                        <td><input class="easyui-textbox" name="priceexpression" style="width:200px" value="${cou.priceexpression}"/></td>
                    </tr>
                   <tr>
                        <td>设置:</td>
                        <td>
                            <input type="checkbox" name="isEnabled" value="1" ${cou.isEnabled==1?'checked':''}/>是否启用
                            <input type="checkbox" name="isexchange" value="2" ${cou.isexchange ==2 ?'checked':''}/>是否允许积分兑换
                        </td>
                    </tr>
                    <tr>
                        <td>积分兑换数:</td>
                        <td><input class="easyui-textbox" name="point" style="width:200px" value="${cou.point}"/></td>
                    </tr>
                </table>
            </div>
            <div title="介绍" style="padding:20px;">

                <td ><textarea id="editor_id" name="introduction">${cou.introduction}"</textarea></td>

            </div>
        </div>
    </form>

    <script type="text/javascript">
        $.getScript('../js/kindeditor/kindeditor-all.js',
            function() {
                KindEditor.basePath = '<%=request.getContextPath()%>/js/kindeditor/';
                editor = KindEditor.create('#editor_id', {
                    cssPath : '<%=request.getContextPath()%>/js/kindeditor/plugins/code/prettify.css',
                    uploadJson : '<%=request.getContextPath()%>/js/kindeditor/jsp/upload_json.jsp',
                    fileManagerJson : '<%=request.getContextPath()%>/js/kindeditor/jsp/file_manager_json.jsp',
                    allowImageUpload:false,resizeType : 1,width:"100%",height:"200px",
                    afterBlur:function(){this.sync();}//和ajax同步
                });
            })


    </script>
</body>
</html>
