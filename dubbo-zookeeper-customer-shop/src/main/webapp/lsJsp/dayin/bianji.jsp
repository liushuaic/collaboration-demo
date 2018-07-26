<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/26
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.min.js"></script>
<!-- 引入EasyUI -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.easyui.min.js"></script>
<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/util-js.js"></script>
<head>
    <title>Title</title>
</head>
<body>
<div id="tt" class="easyui-tabs" data-options="fit:true">
    <div title="订单信息" style="padding:40px;display:none;">
<form id="update_form">
    <table border="1" bordercolor="#f5f5dc">
        <tr>
            <td width="200px" bgcolor="#f0f8ff" height="30px" align="right">订单编号:</td>
            <td width="400px" height="30px" align="left">${order.ordercode}</td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">创建日期:</td>
            <td width="400px" height="30px"><fmt:formatDate value="${order.createdatetime}" pattern="yyyy-MM-dd"/></td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">订单状态:</td>
            <td width="400px" align="left">${order.orderstatus==1 ? "未确认":""}
                ${order.orderstatus==2 ? "已确认":""}
                ${order.orderstatus==3 ? "已完成":""}
            </td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">支付状态:</td>
            <td width="400px" height="30px" align="left">${order.paymentstatus==1 ? "未支付":""}
                ${order.paymentstatus==2 ? "部分支付":""}
                ${order.paymentstatus==3 ? "部分退款":""}
                ${order.paymentstatus==4 ? "已退款":""}
            </td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">配送状态:</td>
            <td width="400px" height="30px" align="left">
                ${order.shippingstatus==1 ? "未发货":""}
                ${order.shippingstatus==2 ? "部分发货":""}
                ${order.shippingstatus==3 ? "已发货":""}
                ${order.shippingstatus==4 ? "部分退货":""}
                ${order.shippingstatus==5 ? "已退货":""}
            </td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">用户名:</td>
            <td width="400px" height="30px" align="left">${order.username}</td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">订单金额:</td>
            <td width="400px" height="30px" align="left">${order.amountpaid}</td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">已付金额:</td>
            <td width="400px" height="30px" align="left"></td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">商品重量:</td>
            <td width="400px" height="30px" align="left">${order.weight}</td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">商品数量:</td>
            <td width="400px" height="30px" align="left">1</td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">促销:</td>
            <td width="400px" height="30px" align="left"></td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">使用优惠券:</td>
            <td width="400px" height="30px" align="left"></td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">促销折扣:</td>
            <td width="400px" height="30px" align="left"></td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">优惠券折扣:</td>
            <td width="400px" height="30px" align="left"></td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">调整金额:</td>
            <td width="400px" height="30px" align="left"><input type="text" name="offsetamount"></td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">赠送积分:</td>
            <td width="400px" height="30px" align="left"><input type="text" name="point"></td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">运费:</td>
            <td width="400px" height="30px" align="left"><input type="text" name="freight" value="${order.freight}"></td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">支付手续费:</td>
            <td width="400px" height="30px" align="left"></td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">支付方式:</td>
            <td width="400px" height="30px" align="left">
                <select name="paymentmethodname">
                    <option value="网上支付" ${order.paymentmethodname.contains('网上支付')?"selected":""}>网上支付</option>
                    <option value="银行汇款" ${order.paymentmethodname.contains('银行汇款')?"selected":""}>银行汇款</option>
                    <option value="货到付款" ${order.paymentmethodname.contains('货到付款')?"selected":""}>货到付款</option>
                </select>
            </td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">配送方式:</td>
            <td width="400px" height="30px" align="left">
                <select name="shippingmethodname">
                    <option value="普通快递" ${order.shippingmethodname.contains('普通快递')?"selected":""}>普通快递</option>
                    <option value="顺风速递" ${order.shippingmethodname.contains('顺风速递')?"selected":""}>顺风速递</option>
                </select>
             </td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">收货人:</td>
            <td width="400px" height="30px" align="left"><input type="text" name="consignee" value="${order.consignee}"></td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">地区:</td>
            <td width="400px" height="30px" align="left">${order.areaname}</td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">地址:</td>
            <td width="400px" height="30px" align="left">${order.address}</td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">邮编:</td>
            <td width="400px" height="30px" align="left">${order.zipcode}</td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px">电话:</td>
            <td width="400px" height="30px" align="left"><input type="text" name="phone" value="${order.phone}"></td>
            <td width="200px" bgcolor="#f0f8ff" height="30px">附言:</td>
            <td width="400px" height="30px" align="left"><input type="text" name="memo" value="${order.memo}"></td>
        </tr>
        <tr align="right">
            <td width="200px" bgcolor="#f0f8ff" height="30px"></td>
            <td width="400px" colspan="3" align="left">
                <a href="javascript:querenUpdate('${order.orderid}')" class="easyui-linkbutton" height="30px">确认</a>
                <a href="javascript:fanhui()" class="easyui-linkbutton" height="30px">返回</a></td>
        </tr>

    </table>

</form>
    </div>
</div>
update_form

<script>
    function querenUpdate(orderid){
          $.ajax({
              url:'<%=request.getContextPath()%>/lsController/updateOrderById.jhtml',
              type:'post',
              data:{orderid:orderid},
              success:function(ms){
                  $.messager.show({
                      title:'我的消息',
                      msg:'保存成功',
                      timeout:3000,
                      showType:'show'
                  });

              }
          })
    }
</script>
</body>
</html>
