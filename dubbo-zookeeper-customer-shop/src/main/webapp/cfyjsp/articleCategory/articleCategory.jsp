<%--
  Created by IntelliJ IDEA.
  User: 33032
  Date: 2018/7/12
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="chajian.jsp"></jsp:include>
<table id="arttable2"></table>
<script>
    $(function () {
        $('#arttable2').datagrid({
            url:'<%=request.getContextPath()%>/cfyController/queryAtricleCategory.jhtml',
            singleSelect:true,
            checkOnSelect:false,
            selectOnCheck:false,
            // pagination:true,//开启分页
//		    pagearticlecategoryid:'both',//分页工具栏显示位置   加上这个分页就显示在上面
            //    pageNumber:1,//初始化页码
            // pageSize:10,//每页条数
            // pageList:[5,8,10],//每页条数的下拉选项
// 		  queryParams: {
// 			  ptname: $("#uname").val(),
// 	                  mindate: $("#aa").datebox("getValue"),
// 	    		maxdate: $("#audtable").datebox("getValue"),
// 		},

            columns:[[
                {field:'name',title:'名称',width:200},
                {field:'acid',title:'排名',width:200},
                {field:'remarks',title:'操作',width:180,
                    formatter:function () {
                        return   "<a id=\'#2\' href=\'#\' class=\'easyui-linkbutton\'  onclick=\'binaji()\'>[编辑]</a>";
                    }
                }
            ]]
        });
    })
</script>
</body>
</html>
