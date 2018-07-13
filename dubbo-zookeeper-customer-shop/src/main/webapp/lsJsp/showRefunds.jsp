<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/10
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"/>
<body>
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.min.js"></script>
<!-- 引入EasyUI -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.easyui.min.js"></script>
<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/util-js.js"></script>
<a href="javascript:del()" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">删除</a>
<a href="javascript:reload()" class="easyui-linkbutton" data-options="iconCls:'icon-reload'">刷新</a>
<table id="refundsTable"></table>
<script>

    function reload(){
        location.reload();
    }

    $(function () {
        queryrefunds();
    })
    function queryrefunds(){
        $('#refundsTable').datagrid({
            url:'<%=request.getContextPath()%>/lsController/queryRefundsList.jhtml',
            remoteSort:false,
            singleSelect:true,
            checkOnSelect:false,
            selectOnCheck:false,
            pagination:true,
            pageSize:10,
            pageNumber:1,
            pageList:[10,20,30,40],
            queryParams: {

            },

            columns:[[
                {field:'oroe',checkbox:true},
                {field:'refucode',title:'编号',width:200,sortable:true},
                {field:'method',title:'方式',width:200,align:'center',sortable:true,
                    formatter:function(index,row,value){
                        return row.method==1 ? "在线支付":"线下支付";
                    }
                },
                {field:'paymentmethod',title:'支付方式',width:200,align:'center',sortable:true,
                    formatter:function(index,row,value){
                        return row.paymentmethod==1 ? "在线支付":"线下支付";
                    }
                },
                {field:'amount',title:'退款金额',width:200,align:'center',sortable:true},
                {field:'payee',title:'收款人',width:200,align:'center',sortable:true},
                {field:'createdatetime',title:'创建日期',width:200,sortable:true,
                   formatter:function (index,row,value) {
                       var date = new Date(row.createdatetime);
                       return date.toLocaleDateString();
                   }
                },
                {field:'pricz',title:'操作',width:150,
                    formatter:function(index,row,value){
                        return "<a href='javascript:chakan(\""+row.orderid+"\")'></a><a href='javascript:bianji()'></a>";
                    }
                }
            ]]
        });
    }








</script>
</body>
</html>
