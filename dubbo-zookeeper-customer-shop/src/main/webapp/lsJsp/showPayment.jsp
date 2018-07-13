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
<table id="paymentTable"></table>
<script>

    function reload(){
        location.reload();
    }

    $(function () {
        querypayment();
    })
    function querypayment(){
        $('#paymentTable').datagrid({
            url:'<%=request.getContextPath()%>/lsController/queryPaymentList.jhtml',
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
                {field:'orcoe',checkbox:true},
                {field:'paymentcode',title:'编号',width:100,sortable:true},
                {field:'type',title:'类型',width:100,
                    formatter:function(index,row,value){
                        return row.type==1 ? "订单支付":"预存款充值";
                    }
                },
                {field:'method',title:'方式',width:100,align:'center',sortable:true,
                    formatter:function(index,row,value){
                        return row.method==1 ? "在线支付":"线下支付";
                    }
                },
                {field:'paymentmethod',title:'支付方式',width:100,align:'center',sortable:true,
                        formatter:function(index,row,value){
                              return row.paymentmethod==1 ? "在线支付":"线下支付";
                        }
                },
                {field:'amount',title:'付款金额',width:100,align:'center',sortable:true},
                {field:'username',title:'会员',width:100,align:'center',sortable:true},
                {field:'ordercode',title:'订单',width:100,sortable:true},
                {field:'status',title:'状态',width:100,sortable:true,
                    formatter:function (index,row,value) {
                        var flag = "";
                        if(row.status == 1){
                            flag = "等待支付";
                        }
                        if(row.status == 2){
                            flag = "支付成功";
                        }
                        if(row.status == 3){
                            flag = "支付失败";
                        }
                        return flag;
                    }
                },
                {field:'paymentdate',title:'付款日期',width:100,sortable:true,
                   formatter:function(index,row,value) {
                       var date = new Date(row.paymentdate);
                       return date.toLocaleDateString();
                   }
                },
                {field:'createdatetime',title:'创建日期',width:100,sortable:true,
                  formatter:function(index,row,value){
                    var date = new Date(row.createdatetime);
                    return date.toLocaleDateString();
                  }
                },
                {field:'pricz',title:'操作',width:100,
                    formatter:function(index,row,value){
                        return "<a href='javascript:chakan(\""+row.orderid+"\")'>[查看]</a><a href='javascript:bianji()'>[编辑]</a>";
                    }
                }
            ]]
        });
    }




</script>
</body>
</html>
