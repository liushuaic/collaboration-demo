<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018\7\12 0012
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<jsp:include page="../cfyjsp/article/chajian.jsp"></jsp:include>
<body>
<table id="paid"></table>
<script>
    $(function(){
        queryPam();
    })
    function queryPam(){
        var index=0;
        $("#paid").datagrid({
            url:'<%=request.getContextPath()%>/zhjController/queryProductNotifyList.jhtml',
            pagination:true,
            pageNumber:1,
            pageSize:10,
            pageList:[10,15,20],
            singleSelect:true,
            checkOnSelect:false,
            selectOnCheck:false,
            remoteSort: false,
            columns:[[
                {field:'userchek',checkbox:true},
                // rownumbers:true, //显示行号列
                {field:'parid',title:' 序号  ',width:120,
                    formatter: function(value,row,index){
                        index++;
                        return index;
                    }
                },
                {field:'name',title:'商品名称',width:150,sortable:true},
                {field:'username',title:'会员',width:150},
                {field:'email',title:' E-mail',width:150},
                {field:'hassent',title:'已发送',width:150,
                    formatter: function (value, row, index) {
                        return  value==1?"√":"×";
                    }
                },
                {field:'acto',title:'操作',width:120,
                    formatter: function (value, row, index) {
                        return "<a href=''>修改</a>  <a href=''>删除</a>";
                    }}
            ]]
        });
    }
</script>
</body>
</html>
