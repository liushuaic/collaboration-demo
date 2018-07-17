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
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootstrap3/css/bootstrap.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootstrap3/css/bootstrap-theme.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootStrap-addTabs/bootstrap.addtabs.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootstrap-treeview/bootstrap-treeview.min.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootstrap-table/bootstrap-table.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/bootstrap3/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/bootstrap3/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/bootstrap-treeview/bootstrap-treeview.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/bootStrap-addTabs/bootstrap.addtabs.min.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap/bootstrap-table/bootstrap-table.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap/bootstrap-bootbox/bootbox.js"></script>
<%--<link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"/>--%>
<body>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.min.js"></script>
<!-- 引入EasyUI -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.easyui.min.js"></script>
<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/util-js.js"></script>
<a href="javascript:del()" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">删除</a>
<a href="javascript:reload()" class="easyui-linkbutton" data-options="iconCls:'icon-reload'">刷新</a>--%>
<%--<select id="cc" class="easyui-combobox" style="width: 100px">
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

</select>--%>
<div id="toolbar">
   <button onclick="refresh()" class="btn btn-info">
        <i class="glyphicon glyphicon-refresh"></i>
        刷新
    </button>
    <button onclick="delAllUser()" class="btn btn-danger">
        <i class="glyphicon glyphicon-trash"></i>
        删除
    </button>
    <button onclick="updateUser()" class="btn btn-warning">
        <i class="glyphicon glyphicon-pencil"></i>
        修改
    </button>
</div>
<table id="orderTable"></table>
<script>
    function refresh(){
        location.reload();
    }
   $(function () {
       query();
   })
      function query(){
    $('#orderTable').bootstrapTable({
        url:'<%=request.getContextPath()%>/lsController/queryOrderList.jhtml',
        toolbar:'#toolbar',
        //是否显示搜索框  //获取数据地址
        striped:true,
        search:true,
        searchOnEnterKey:true,

        showHeader:true,
        showColumns:true,//显示你想要的字段
        showRefresh:true,//刷新
        showToggle:true,//切换xian
        showPaginationSwitch:true,//是否显示分页

        paginationHAlign:"right",
        pagination: true,		   //开启分页
        pageNumber:1,              //初始化加载第几页,默认第1页
        pageSize: 3,               //每页几条数据,超过总条数右下角将没分页
        pageList: [3, 4, 6, 8],    //每页条数,设置为All将展示全部记录,超过总条数底部将不显示条数下拉框
        columns:[
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
            {field:'createdatetime',title:'创建日期',width:100,sortable:true,
                formatter:function(index,row,value){
                    var date = new Date(row.createdatetime);
                    return date.toLocaleDateString();
                }
            },
            {field:'dayin',title:'打印',width:100,
                formatter:function(index,row,value){
                    return "<select id='' class='easyui-combobox'>" +
                        "<option value=''>-请选择-</option>" +
                        "<option value=''>订单</option>" +
                        "<option value=''>购物单</option>" +
                        "<option value=''>配送单</option>" +
                        "<option value=''>快递单</option>"
                    "</select>";
                }
            },
            {field:'pricz',title:'操作',width:100,
                formatter:function(index,row,value){
                    return "<a href='javascript:chakan(\""+row.orderid+"\")'>[查看]</a><a href='javascript:bianji()'>[编辑]</a>";
                }
            }
       ]
    });
      }


      function chakan(id){
       location.href="<%=request.getContextPath()%>/lsJsp/orderDetail.jsp";
      }



</script>
</body>
</html>
