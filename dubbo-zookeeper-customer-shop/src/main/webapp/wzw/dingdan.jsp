<%--
  Created by IntelliJ IDEA.
  User: WANG
  Date: 2018/7/26
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="<%=path%>/bootstrap/bootstrap3/css/bootstrap.css">
    <link rel="stylesheet" href="<%=path%>/bootstrap/bootstrap3/css/bootstrap-theme.css">
    <link rel="stylesheet" href="<%=path%>/bootstrap/bootstrap-table/bootstrap-table.css">
    <link rel="stylesheet" href="<%=path%>/bootstrap/bootstrap-dialog/dist/css/bootstrap-dialog.css" >
    <link rel="stylesheet" href="<%=path%>/bootstrap/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/bootstrap/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/bootstrap/easyui/themes/icon.css">
    <link href="<%=path%>/bootstrap/CodeSeven-toastr-50092cc/build/toastr.css" rel="stylesheet" type="text/css" />
    <script src="<%=path%>/bootstrap/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script src="<%=path%>/bootstrap/bootstrap3/js/bootstrap.js"></script>
    <!-- bootstrap-table -->
    <script src="<%=path%>/bootstrap/bootstrap-table/bootstrap-table.js"></script>
    <script src="<%=path%>/bootstrap/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
    <!-- bootbox -->
    <script src="<%=path%>/bootstrap/bootstrap-bootbox/bootbox.js"></script>
    <!-- 时间插件 -->
    <script src="<%=path%>/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
    <script src="<%=path%>/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <!-- dialog -->
    <script src="<%=path%>/bootstrap/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
    <%-- easyui --%>
    <script type="text/javascript" src="<%=path%>/bootstrap/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=path%>/bootstrap/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=path%>/bootstrap/kindeditor-4.1.10/kindeditor.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>/bootstrap/kindeditor-4.1.10/lang/zh_CN.js" charset="utf-8"></script>
    <script src="<%=path%>/bootstrap/CodeSeven-toastr-50092cc/build/toastr.min.js"></script>
    <style type="text/css">
        a:hover {color:red; text-decoration:none;}
    </style>
</head>
<body>
<ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab">全部订单</a></li>
    <li role="presentation"><a href="#profile"  role="tab" data-toggle="tab">代付款</a></li>
    <li role="presentation"><a href="#messages" role="tab" data-toggle="tab">待收货</a></li>
    <li role="presentation"><a href="#settings" role="tab" data-toggle="tab">待评价</a></li>
</ul>
<!-- 面板区 -->
<div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
        <table id="all"></table>
    </div>
    <div role="tabpanel" class="tab-pane" id="profile">
        <table id="daifu"></table>
    </div>
    <div role="tabpanel" class="tab-pane" id="messages">
        <table id="daishou"></table>
    </div>
    <div role="tabpanel" class="tab-pane" id="settings">
        <table id="daiping"></table>
    </div>
</div>
<script type="text/javascript">
    $('#all').bootstrapTable({
        toolbar:'#where',
        url:'<%=request.getContextPath()%>/dingdan/queryAll.jhtml',
        pagination: true,
        pageList:[5, 10, 20, 50],
        pageSize:5,
        striped:true,                    //是否显示行间隔色
        search:true,
        searchOnEnterKey:true,
        height:500,
        showColumns:true,//是否显示内容列下拉框
        showToggle:true,//是否显示切换试图（table/card）按钮
        showPaginationSwitch:true,//是否显示数据条数选择框
        paginationHAlign:false,
        showRefresh:true,//是否显示刷新按钮
        detailView:false,//设置为true 可以显示详细页面模式。
        showFooter:false,//是否显示列脚clickToSelect: true, //是否启用点击选中行
        columns:[
            {field:'ordercode',title:'订单编号',align:'center',width:100},
            {field:'name',title:'商品名称',width:100},
            {field:'price',title:'商品价格',width:100},
            {field:'consignee',title:'收货人',width:100},
            {field:'address',title:'收货地址',width:100},
            {field:'phone',title:'手机号',width:100},
            {field:'paymentmethodname',title:'支付方式',width:100},
            {field:'createdatetime',title:'创建日期',width:100,sortable:true,
                formatter:function(index,row,value){
                    var date = new Date(row.createdatetime);
                    return date.toLocaleDateString();
                }
            },
            {field:'orderstatus',title:'订单状态',width:100,sortable:true,
                formatter:function (index,row,value) {
                    var flag = "";
                    if(row.orderstatus == 1){
                        flag = "未提交";
                    }
                    if(row.orderstatus == 2){
                        flag = "已提交";
                    }
                    if(row.orderstatus == 3){
                        flag = "已结算";
                    }
                    if(row.orderstatus == 4){
                        flag = "结算完成";
                    }
                    if(row.orderstatus == 5){
                        flag = "你的退货请求已处理，请等待";
                    }
                    if(row.orderstatus == 6){
                        flag = "请求已通过";
                    }
                    return flag;
                }
            },
            {field:'paymentstatus',title:'支付状态',width:100,
                formatter:function (index,row,value) {
                    var flag = "";
                    if(row.paymentstatus == 1){
                        flag = "未支付";
                    }
                    if(row.paymentstatus == 2){
                        flag = "正在支付";
                    }
                    if(row.paymentstatus == 3){
                        flag = "支付成功";
                    }
                    if(row.paymentstatus == 4){
                        flag = "已完成支付";
                    }
                    if(row.paymentstatus == 5){
                        flag = "请求退款";
                    }
                    if(row.paymentstatus == 6){
                        flag = "已退款";
                    }
                    return flag;
                }
            },
            {field:'shippingstatus',title:'配送状态',width:100,
                formatter:function (index,row,value) {
                    var flag = "";
                    if(row.shippingstatus == 1){
                        flag = "未发货";
                    }
                    if(row.shippingstatus == 2){
                        flag = "准备派发";
                    }
                    if(row.shippingstatus == 3){
                        flag = "已发货";
                    }
                    if(row.shippingstatus == 4){
                        flag = "发货成功";
                    }
                    if(row.shippingstatus == 5){
                        flag = "买家请求退货";
                    }
                    if(row.shippingstatus == 6){
                        flag = "处理完成";
                    }
                    return flag;
                }
            },
            {field:'ss',title:'操作',width:300,formatter:function(value,row,index){
                if(row.orderstatus == 1){
                    return "<a href='javascript:fukuan(\""+row.orderid+"\")'>[付款]</a>";
                }else if(row.orderstatus == 2){
                    return "<a href='javascript:fahuo(\""+row.orderid+"\")'>[发货]</a>";
                }else if(row.orderstatus == 3){
                    return "<a href='javascript:shouhuo(\""+row.orderid+"\")'>[收货]</a>";
                }else if(row.orderstatus == 4){
                    return "<a href='javascript:pinglun(\""+row.orderid+"\")'>[给商品一个评论吧]</a>"+
                        " <a href='javascript:tongyituihuo(\""+row.orderid+"\")'>[请求退货]</a>";

                }else if(row.orderstatus == 0){
                    return "已取消";
                }else if(row.orderstatus == 5){
                    return " <a href='javascript:tongyituihuo(\""+row.orderid+"\")'>[处理请求]</a>";
                }
            }},
        ]
    })

    function fukuan(id){
        $.ajax({
            url:"<%=path%>/dingdan/FuKuan.jhtml",
            type:'post',
            data:{"id":id},
            dataType:"json",
            success:function (data) {
                if(data=="success"){
                    $("#all").bootstrapTable('refresh');
                }else{
                    $("#all").bootstrapTable('refresh');
                }
            }
        })
    }
    function fahuo(id) {
        $.ajax({
            url:"<%=path%>/dingdan/FaHuo.jhtml",
            type:'post',
            data:{"id":id},
            dataType:"json",
            success:function (data) {
                if(data=="success"){
                    $("#all").bootstrapTable('refresh');
                }else{
                    $("#all").bootstrapTable('refresh');
                }
            }
        })
    }

    function shouhuo(id) {
        $.ajax({
            url:"<%=path%>/dingdan/ShouHuo.jhtml",
            type:'post',
            data:{"id":id},
            dataType:"json",
            success:function (data) {
                if(data=="success"){
                    $("#all").bootstrapTable('refresh');
                }else{
                    $("#all").bootstrapTable('refresh');
                }
            }
        })
    }

    function TuiHuo(id) {
        $.ajax({
            url:"<%=path%>/dingdan/TuiHuo.jhtml",
            type:'post',
            data:{"id":id},
            dataType:"json",
            success:function (data) {
                if(data=="success"){
                    $("#all").bootstrapTable('refresh');
                }else{
                    $("#all").bootstrapTable('refresh');
                }
            }
        })
    }
    function tongyituihuo(id) {
        $.ajax({
            url:"<%=path%>/dingdan/tongyituihuo.jhtml",
            type:'post',
            data:{"id":id},
            dataType:"json",
            success:function (data) {
                if(data=="success"){
                    $("#all").bootstrapTable('refresh');
                }else{
                    $("#all").bootstrapTable('refresh');
                }
            }
        })
    }

    function tankuang(){

    }

</script>
</body>
</html>
