<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/12
  Time: 11:24
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
<a href="<%=request.getContextPath()%>/background/backgroundIndex.jsp">首页</a>
<hr color="yellow">

    <div id="tt" class="easyui-tabs" data-options="fit:true">
        <div title="订单信息" style="padding:40px;display:none;">
            <a href="javascript:queren()" class="easyui-linkbutton">确认</a>&nbsp;&nbsp;
            <a class="easyui-linkbutton">支付</a>&nbsp;&nbsp;
            <a class="easyui-linkbutton">发货</a>&nbsp;&nbsp;
            <a class="easyui-linkbutton">完成</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="javascript:queren()" class="easyui-linkbutton">退款</a>&nbsp;&nbsp;
            <a href="javascript:queren()" class="easyui-linkbutton">退货</a>&nbsp;&nbsp;
            <a href="javascript:queren()" class="easyui-linkbutton">取消</a>&nbsp;&nbsp;<br><br>
            <table border="1" bordercolor="#e0ffff">
                 <tr align="right">
                     <td width="200px" bgcolor="#dcdcdc" height="30px">订单编号:</td>
                     <td width="400px" height="30px"></td>
                     <td width="200px" bgcolor="#dcdcdc" height="30px">创建日期:</td>
                     <td width="400px" height="30px"></td>
                 </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">订单状态:</td>
                    <td width="400px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">支付状态:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">配送状态:</td>
                    <td width="400px" height="30px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">用户名:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">订单金额:</td>
                    <td width="400px" height="30px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">已付金额:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">商品重量:</td>
                    <td width="400px" height="30px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">商品数量:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">促销:</td>
                    <td width="400px" height="30px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">使用优惠券:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">促销折扣:</td>
                    <td width="400px" height="30px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">优惠券折扣:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">调整金额:</td>
                    <td width="400px" height="30px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">赠送积分:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">运费:</td>
                    <td width="400px" height="30px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">支付手续费:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">支付方式:</td>
                    <td width="400px" height="30px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">配送方式:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">收货人:</td>
                    <td width="400px" height="30px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">地区:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">地址:</td>
                    <td width="400px" height="30px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">邮编:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px">电话:</td>
                    <td width="400px" height="30px"></td>
                    <td width="200px" bgcolor="#dcdcdc" height="30px">附言:</td>
                    <td width="400px" height="30px"></td>
                </tr>
                <tr align="right">
                    <td width="200px" bgcolor="#dcdcdc" height="30px"></td>
                    <td width="400px" colspan="3" align="left">
                        <a href="javascript:fanhui()" class="easyui-linkbutton" height="30px">返回</a></td>
                </tr>
            </table>
        </div>
        <div title="商品信息"><br>
            <table border="1" bordercolor="dcdcdc" bgcolor="#dcdcdc">
                <tr>
                    <td width="180px">商品编号</td>
                    <td width="180px">商品名称</td>
                    <td width="180px">商品价格</td>
                    <td width="180px">数量</td>
                    <td width="200px">已发货数量</td>
                    <td width="200px">已退货数量</td>
                    <td width="200px">小计</td>
                </tr>
            </table>
        </div>
        <div title="收款信息" style="padding:20px;display:none;">
            <table border="1" bordercolor="dcdcdc" bgcolor="#dcdcdc">
                <tr>
                    <td width="240px">编号</td>
                    <td width="240px">方式</td>
                    <td width="240px">支付方式</td>
                    <td width="240px">付款金额</td>
                    <td width="240px">状态</td>
                    <td width="240px">付款日期</td>
                </tr>
            </table>
        </div>
        <div title="发货信息" style="padding:20px;display:none;">
            <table border="1" bordercolor="dcdcdc" bgcolor="#dcdcdc">
                <tr>
                <tr>
                    <td width="240px">编号</td>
                    <td width="240px">配送方式</td>
                    <td width="240px">物流公司</td>
                    <td width="240px">运单号</td>
                    <td width="240px">收货人</td>
                    <td width="240px">创建日期</td>
                </tr>
                </tr>
            </table>
        </div>
        <div title="退款信息" style="padding:20px;display:none;">
            <table border="1" bordercolor="dcdcdc" bgcolor="#dcdcdc">
                <tr>
                    <td width="250px">编号</td>
                    <td width="250px">方式</td>
                    <td width="250px">支付方式</td>
                    <td width="250px">退款金额</td>
                    <td width="250px">创建日期</td>
                </tr>
            </table>
        </div>
        <div title="退货信息" style="padding:20px;display:none;">
            <table border="1" bordercolor="dcdcdc" bgcolor="#dcdcdc">
                <tr>
                    <td width="240px">编号</td>
                    <td width="240px">配送方式</td>
                    <td width="240px">物流公司</td>
                    <td width="240px">运单号</td>
                    <td width="240px">发货人</td>
                    <td width="200px">创建日期</td>
                </tr>
            </table>
        </div>
        <div title="订单日志" style="padding:20px;display:none;">
            <table border="1" bordercolor="dcdcdc" bgcolor="#dcdcdc">
                <tr>
                    <td width="400px">订单创建</td>
                    <td width="600px">会员</td>
                    <td width="300px">创建日期</td>
                </tr>
            </table>
        </div>
    </div>



</body>
</html>
