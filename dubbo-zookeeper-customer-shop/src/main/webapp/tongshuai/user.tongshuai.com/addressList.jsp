<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/EasyUI/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/EasyUI/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/EasyUI/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/kindeditor/kindeditor.js" charset="utf-8"></script>
<body>
    <div id="addshow"></div>
<%--<div id="addwhere">
    <a href="javascript:addOrEdit('add')" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</a>
    <a href="javascript:addEdit('addedit')" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</a>
    <a href="javascript:del()"  class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" >删除</a>
    <a href="javascript:addshuaxin()" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true">刷新</a>
    <a href="<%=request.getContextPath()%>/addponController/adddaochu.jhtml" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">导出</a>
</div>--%>
<div id="adddig"></div>
<a href="javascript:addOrEdit('add')" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">地址新增</a><br>
    <c:forEach items="${addressList}" var="address">
   <div style="border:solid 1px lightgrey;float: left;margin-left: 10px;width:320px">
        <a href="javascript:addEdit('${address.addid}')" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</a>
        <a href="javascript:del('${address.addid}')"  class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" >删除</a>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="radio"  onclick="defaulte('${address.addid}')" name="adddefault" ${address.adddefault.contains('1')?"checked":""}><br>
        <table >
           <tr>
               <td>收货人:</td>
            <%--   <td>${address.addname}</td>--%>
               <td> &nbsp;  ${address.addname}</td>
           </tr>
           <tr>
               <td>手机号:</td>
               <td> &nbsp;  ${address.addphone}</td>
           </tr>
           <tr>
               <td>地  &nbsp;&nbsp;址:</td>
               <td>${address.addprovince}  ${address.addcity}  ${address.addcounty}  ${address.introduction}</td>
           </tr>
        </table>
    </div>
</c:forEach>
<%--
<script type="text/javascript">
    // function query1(){
    $("#addshow").datagrid({
        url:'<%=request.getContextPath()%>/addressController/getAddress.jhtml',
        columns:[[
            {field:'',title:'',checkbox:true},
            {field:'addname',title:'收货人姓名',width:100},
            {field:'addphone',title:'手机号',width:100},
            {field:'introduction',title:'详细地址',width:100},
            {field:'adddefault',title:'是否默认',width:100,formatter:function(value,rows,index){
                if (value==1) {
                    return "√"
                }else {
                    return "×"
                }
            }},
        ]],
        fit:true,
        fitColumns:true,
        toolbar:"#addwhere",
        /*开启分页组件*/
        pagination:true,
        pageSize:3,
        pageNumber:1,
        pageList:[3,5,10]
    })
</script>
--%>
<!-- 新增 -->
<script type="text/javascript">
    function addOrEdit(tt){
        var title= "";
        if(tt=="add") {
            title = "新增书籍信息";
            href = "<%=request.getContextPath()%>/addressController/toAddress.jhtml";
        }
        $('#adddig').dialog({
            title:title,
            width:550,
            height:400,
            closed:false,
            cache:false,
            href:href,
            modal:true,
            buttons:[{
                text:'保存',
                handler:function(){
                    //用户名
                    function t1(){
                        var zhengzhe = /^[\u4e00-\u9fa5]{2,}$/;
                        var ming = document.getElementById("name_id").value;
                        var tishi = document.getElementById("span1");
                        if(zhengzhe.test(ming)){
                            tishi.innerHTML="<font color='green'>√</font>";
                            return true;
                        }else{
                            tishi.innerHTML="<font color='red'>用户名必须是两个以上的汉字组成并且不能为空</font>";
                            return false;
                        }
                    }
                    //手机号
                    function t2(){
                        var dia = document.getElementById("phone_id").value;
                        var msg2 =  document.getElementById("span2");
                        var reg = /^1[34578]\d{9}$/;
                        if(reg.test(dia)){
                            msg2.innerHTML = "<font color='green'>√</font>";
                            return true;
                        }else{
                            msg2.innerHTML = "<font color='red'>请正确输入11位手机号码</font>";
                            return false;
                        }
                    }
                    if(t1() & t2()){
                        $("#addressForm").form('submit',{
                            url:"<%=request.getContextPath()%>/addressController/addAddress.jhtml",
                            success:function(data){
                                $('#adddig').dialog("close")
                                location.reload()
                            }
                        })
                        return true;
                    }else{
                        return false;
                    }
                }
            }]
        })
    }
</script>
<!-- 修改 -->
<script type="text/javascript">
    function addEdit(ii){
        $('#adddig').dialog({
            title:"修改类型",
            width:550,
            height:400,
            closed:false,
            cache:false,
            href:"<%=request.getContextPath()%>/addressController/toUpdateAddress.jhtml?addid="+ii,
            modal:true,
            buttons:[{
                text:'保存',
                handler:function(){
                    //用户名
                    function t1(){
                        var zhengzhe = /^[\u4e00-\u9fa5]{2,}$/;
                        var ming = document.getElementById("name_id").value;
                        var tishi = document.getElementById("span1");
                        if(zhengzhe.test(ming)){

                            tishi.innerHTML="<font color='green'>√</font>";
                            return true;
                        }else{
                            tishi.innerHTML="<font color='red'>用户名必须是两个以上的汉字组成并且不能为空</font>";
                            return false;
                        }
                    }
                    //手机号
                    function t2(){
                        var dia = document.getElementById("phone_id").value;
                        var msg2 =  document.getElementById("span2");
                        var reg = /^1[34578]\d{9}$/;
                        if(reg.test(dia)){

                            msg2.innerHTML = "<font color='green'>√</font>";
                            return true;
                        }else{
                            msg2.innerHTML = "<font color='red'>请正确输入11位手机号码</font>";
                            return false;
                        }
                    }
                    if(t1() & t2()){
                        $("#addressForm").form('submit',{
                            url:"<%=request.getContextPath()%>/addressController/updateAddress.jhtml",
                            success:function(data){
                                // var data = eval("("+data+")");
                                // if(data.success){
                                $('#adddig').dialog("close")
                                location.reload()
                                /*}else{
                                     $.messager.alert("提示",data.msg);
                                   }*/
                            }
                        })
                        return true;
                    }else{
                        return false;
                    }
                }
            }]
        })
    }
</script>
<script type="text/javascript">
    //删除+批量删
    function del(id){
        var id="'"+id+"'";
        $.ajax({
            url:"<%=request.getContextPath()%>/addressController/delAddress.jhtml",
            type:"post",
            data:{"ids":id},
            dataType:"json",
            success:function(data){
                if(data.success){
                    //删除成功后刷新页面
                    location.reload()
                }else{
                    $.messager.alert("删除失败!");
                }
            }
        })
    }
    //默认地址
    function defaulte(id) {
        $.ajax({
            url:"<%=request.getContextPath()%>/addressController/updateAddressId.jhtml",
            type:"post",
            data:{"addid":id},
            dataType:"json",
            success:function (data) {
                    //默认成功后刷新页面
                location.reload()
            }
        })
    }
</script>
</body>
</html>
