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
<select id="cc" class="easyui-combobox" style="width: 100px">
    <option value="0">订单删选</option>
    <option value="1">未确认</option>
    <option value="2">已确认</option>
    <option value="3">已完成</option>
    <option value="4">已取消</option>

    <option value="5">未支付</option>
    <option value="6">部分支付</option>
    <option value="7">已支付</option>
    <option value="8">部分退款</option>

    <option value="9">未发货</option>
    <option value="10">部分发货</option>
    <option value="11">已发货</option>
    <option value="12">部分退货</option>
    <option value="13">已退货</option>

</select>

<table id="orderTable"></table>
<script>

    function reload(){
        location.reload();
    }

   $(function () {
       query();
   })
      function query(){
    $('#orderTable').datagrid({
        url:'<%=request.getContextPath()%>/lsController/queryOrderList.jhtml',
        remoteSort:false,
        singleSelect:true,
        checkOnSelect:false,
        selectOnCheck:false,
        pagination:true,
        pageSize:10,
        pageNumber:1,
        pageList:[10,20,30,40],
        queryParams: {
            areaname: $("#cc").val(),
        },

        columns:[[
            {field:'orcode',checkbox:true},
            {field:'ordercode',title:'订单编号',width:100,sortable:true},
            {field:'amountpaid',title:'订单金额',width:100},
            {field:'memberid',title:'会员',width:100,align:'center',sortable:true},
            {field:'consignee',title:'收货人',width:100,align:'center',sortable:true},
            {field:'paymentmethodname',title:'支付方式名称',width:100,align:'center',sortable:true},
            {field:'shippingmethodname',title:'配送方式名称',width:100,align:'center',sortable:true},
            {field:'orderstatus',title:'订单状态',width:100,sortable:true,
                formatter:function (index,row,value) {
                    var flag = "";
                    if(row.orderstatus == 1){
                        flag = "未确认";
                    }
                    if(row.orderstatus == 2){
                        flag = "已确认";
                    }
                    if(row.orderstatus == 3){
                        flag = "已完成";
                    }
                    if(row.orderstatus == 4){
                        flag = "已取消";
                    }
                    return flag;
                }
            },
            {field:'paymentstatus',title:'支付状态',width:100,sortable:true,
                formatter:function (index,row,value) {
                    var flag = "";
                    if(row.paymentstatus == 1){
                        flag = "未支付";
                    }
                    if(row.paymentstatus == 2){
                        flag = "部分支付";
                    }
                    if(row.paymentstatus == 3){
                        flag = "部分退款";
                    }
                    if(row.paymentstatus == 4){
                        flag = "已付款";
                    }
                    return flag;
                }
            },
            {field:'shippingstatus',title:'配送状态',width:100,sortable:true,
                formatter:function (index,row,value) {
                    var flag = "";
                    if(row.shippingstatus == 1){
                        flag = "未发货";
                    }
                    if(row.shippingstatus == 2){
                        flag = "部分发货";
                    }
                    if(row.shippingstatus == 3){
                        flag = "已发货";
                    }
                    if(row.shippingstatus == 4){
                        flag = "部分退货";
                    }
                    if(row.shippingstatus == 5){
                        flag = "已退货";
                    }
                    return flag;
                }
            },
            {field:'createdatetime',title:'创建日期',width:100,sortable:true},
            {field:'dayin',title:'打印',width:100},
            {field:'pricz',title:'操作',width:100}
        ]]
    });
      }
</script>
</body>
</html>
