<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
<div  class="easyui-panel" title="优惠券列表"data-options="fit:'true'">
    <div id="coushow"></div>
</div>
<div id="couwhere">
    <a href="javascript:addOrEdit('add')" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</a>
    <a href="javascript:couEdit('couedit')" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</a>
    <a href="javascript:del()"  class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" >删除</a>
    <a href="javascript:coushuaxin()" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true">刷新</a>
</div>
<div id="coudig"></div>
<script type="text/javascript">
    // function query1(){
    $("#coushow").datagrid({
        url:'<%=request.getContextPath()%>/couponController/getCoupon.jhtml',
        columns:[[
            {field:'',title:'',checkbox:true},
            {field:'name',title:'名称',width:100},
            {field:'begindate',title:'起始日期',width:100},
            {field:'enddate',title:'结束日期',width:100},
            {field:'isEnabled',title:'是否启用',width:100,formatter:function(value,rows,index){
                if (value==1) {
                    return "√"
                }else {
                    return "×"
                }

            }},
            /*{field:'xx',title:'操作',width:100,width:'5%',formatter:function(value,row,index){
                return "<input type='button'  value='编辑' onclick='Edit1("+row.id+")'>";}
            }*/
        ]],
        fit:true,
        fitColumns:true,
        toolbar:"#couwhere",
        /*开启分页组件*/
        pagination:true,
        pageSize:3,
        pageNumber:1,
        pageList:[3,5,10]
    })

</script>
<!-- 新增 -->
<script type="text/javascript">
    function addOrEdit(tt){
        var title= "";
        if(tt=="add"){
            title="新增书籍信息";
            href="<%=request.getContextPath()%>/couponController/toAddCoupon.jhtml";
        }
        $('#coudig').dialog({
            title:title,
            width:650,
            height:500,
            closed:false,
            cache:false,
            href:href,
            modal:true,
            buttons:[{
                text:'保存',
                handler:function(){
                    $("#couaddOrupdate").form('submit',{
                        url:"<%=request.getContextPath()%>/couponController/addCoupon.jhtml",
                        success:function(data){
//     						 var data = eval("("+data+")");
//     						  if(data.success){
                            $('#coudig').dialog("close")
                            $('#coushow').datagrid('load');
//     						  }else{
//     							  $.messager.alert("提示",data.msg);
//     						  }
                        }
                    })
                }
            }]
        })
    }
</script>

<!-- 修改 -->
<script type="text/javascript">
    function couEdit(ii){
        var title="";
        var href ="";

        if(ii=="couedit"){
            title="修改类型";
            var arr = $("#proshow").datagrid("getSelections");
            if(arr.length!=1){
                $.messager.alert("警告","请选择一行数据进行修改！");
                return;
            }else{
                href="<%=request.getContextPath()%>/couponController/toUpdateSeo.jhtml?seoid="+arr[0].seoid;
            }
        }
        $('#dig').dialog({
            title:title,
            width:650,
            height:500,
            closed:false,
            cache:false,
            href:href,
            modal:true,
            buttons:[{
                text:'保存',
                handler:function(){
                    $("#fff").form('submit',{
                        url:"<%=request.getContextPath()%>/couponController/updateSeo.jhtml",
                        success:function(data){
    						// var data = eval("("+data+")");
     						 // if(data.success){
                            $('#coudig').dialog("close")
                            $("#coushow").datagrid('reload');
   						  /*}else{
    							  $.messager.alert("提示",data.msg);
     						  }*/
                        }
                    })
                }
            }]
        })
    }
    //刷新
    function coushuaxin() {
        //刷新整个页面
        /*location.reload()*/
        //刷新当前页面
        $("#coushow").datagrid('reload');
    }
</script>
<script type="text/javascript">
    //删除+批量删
    function del(id){
        var ids="";
        //删除
        if (id != null) {
            ids=id;
        }else {
            //获取所有被选中的行
            //批量删除
            var arr= $("#coushow").datagrid("getSelections");
            for (var i = 0; i < arr.length; i++) {
                ids += ",'"+arr[i].couid+"'";
            }
            //截取
            ids=ids.substr(1);
        }

        $.ajax({
            url:"<%=request.getContextPath()%>/couponController/delCoupon.jhtml",
            type:"post",
            data:{"ids":ids},
            dataType:"json",
            success:function(data){
                if(data.success){
                    //删除成功后刷新页面
                    $('#coushow').datagrid('load');
                }else{
                    $.messager.alert("删除失败！");
                }
            }
        })
    }
</script>
</body>
</html>
