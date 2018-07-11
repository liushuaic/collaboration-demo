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
<div  class="easyui-panel" title="SEO设置列表"data-options="fit:'true'">
    <div id="show"></div>
</div>
<div id="where">
    <a href="javascript:Edit('edit')" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</a>
    <a href="javascript:seoshuaxin()" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true">刷新</a>
</div>
<div id="dig"></div>
<script type="text/javascript">
    // function query1(){
    $("#show").datagrid({
        url:'<%=request.getContextPath()%>/seoController/getSeo.jhtml',
        columns:[[
            {field:'',title:'',checkbox:true},
            {field:'type',title:'类型',width:100},
            {field:'title',title:'页面标题',width:100},
            {field:'keywords',title:'页面关键词',width:100},
            {field:'description',title:'页面描述',width:100},
            /*{field:'xx',title:'操作',width:100,width:'5%',formatter:function(value,row,index){
                return "<input type='button'  value='编辑' onclick='Edit1("+row.id+")'>";}
            }*/
        ]],
        fit:true,
        fitColumns:true,
        toolbar:"#where",
        /*开启分页组件*/
        singleSelect:true,
        pagination:true,
        pageSize:3,
        pageList:[3,5,10]
    })

</script>
<!-- 修改 -->
<script type="text/javascript">
    function Edit(ii){
        var title="";
        var href ="";

        if(ii=="edit"){
            title="修改类型";
            var arr = $("#show").datagrid("getSelections");
            if(arr.length!=1){
                $.messager.alert("警告","请选择一行数据进行修改！");
                return;
            }else{
                href="<%=request.getContextPath()%>/seoController/toUpdateSeo.jhtml?seoid="+arr[0].seoid;
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
                        url:"<%=request.getContextPath()%>/seoController/updateSeo.jhtml",
                        success:function(data){
    						// var data = eval("("+data+")");
     						 // if(data.success){
                            $('#dig').dialog("close")
                            $("#show").datagrid('reload');
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
    function seoshuaxin() {
        //刷新整个页面
        /*location.reload()*/
        //刷新当前页面
        $("#show").datagrid('reload');
    }
</script>
</body>
</html>
