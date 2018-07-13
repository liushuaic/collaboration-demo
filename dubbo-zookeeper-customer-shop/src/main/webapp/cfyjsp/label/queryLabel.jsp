<%--
  Created by IntelliJ IDEA.
  User: 33032
  Date: 2018/7/12
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/jss/jquery-3.2.1/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jss/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jss/easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/jss/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/jss/easyui/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/jss/bootstrap3/jss/bootstrap.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/jss/bootstrap3/css/bootstrap.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/jss/bootstrap3/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/jss/bootstrap-table/bootstrap-table.min.css"/>

<script type="text/javascript" src="<%=request.getContextPath()%>/jss/bootstrap-table/bootstrap-table.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jss/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
<body>
<%--<jsp:include page="chajian.jsp"></jsp:include>--%>
<table id="labeltable"></table>
<script>
    $(function () {
        $('#labeltable').bootstrapTable({
            url:'<%=request.getContextPath()%>/cfyController/queryLabel.jhtml',
            toolbar:"#butt",
            striped:true,
            search:true,
            searchOnEnterKey:true,
            height:'650',
            showHeader:true,
            showColumns:true,
            showRefresh:true,
            showToggle:true,
            showPaginationSwitch:true,
            paginationHAlign:"right",
            pagination: true,		   //开启分页
            pageNumber:1,              //初始化加载第几页,默认第1页
            pageSize: 3,               //每页几条数据,超过总条数右下角将没分页
            pageList: [2, 4, 6, 8],    //每页条数,设置为All将展示全部记录,超过总条数底部将不显示条数下拉框
            columns:[[
                {field:'tagname',title:'名称',width:200},
                {field:'tagtype',title:'类型',width:200,
                        formatter:function (index,row,value) {
                            return row.tagtype==1?'文章标签':'商品标签';
                        }
                },
                {field:'tagicon',title:'图标',width:200,
                      formatter:function () {
                          return '<a >查看</a>';
                      }
                },
                {field:'tagname',title:'名称',width:200},
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
