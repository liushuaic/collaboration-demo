<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/26
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>购物单打印 - Powered By 统帅购物</title>
    <meta name="author" content="统帅购物 Team" />
    <meta name="copyright" content="统帅购物" />
    <link href="/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/resources/admin/js/jquery.js"></script>
    <script type="text/javascript" src="/resources/admin/js/common.js"></script>
    <style type="text/css">
        .bar {
            height: 30px;
            line-height: 30px;
            border-bottom: 1px solid #d7e8f8;
            background-color: #eff7ff;
        }

        table {
            width: 100%;
        }

        table th {
            font-weight: bold;
            text-align: left;
        }

        table td, table th {
            line-height: 30px;
            padding: 0px 4px;
            font-size: 10pt;
            color: #000000;
        }

        .separated th, .separated td {
            border-top: 1px solid #000000;
            border-bottom: 1px solid #000000;
        }
    </style>
    <style type="text/css" media="print">
        .bar {
            display: none;
        }
    </style>
    <script type="text/javascript">
        $().ready(function() {

            var $print = $("#print");

            $print.click(function() {
                window.print();
                return false;
            });

        });
    </script>
</head>
<body>
<div class="bar">
    <a href="javascript:;" id="print" class="button">打 印</a>
</div>
<div class="content">
    <table>
        <tr>
            <td colspan="2" rowspan="2">
                <img width="50px" height="50px" src="<%=request.getContextPath()%>/images/timg.jpg" alt="统帅购物" />
            </td>
            <td>
                统帅购物
            </td>
            <td>
                &nbsp;
            </td>
            <td colspan="2">
                收货人: 张三
            </td>
        </tr>
        <tr>
            <td>
                http://localhost:8082
            </td>
            <td>
                &nbsp;
            </td>
            <td colspan="2">
                会员: zhangsan
            </td>
        </tr>
        <tr class="separated">
            <th colspan="2">
                订单编号: 20180726101
            </th>
            <th colspan="2">
                创建日期: 2018-07-26
            </th>
            <th colspan="2">
                打印日期: 2018-07-26
            </th>
        </tr>
        <tr>
            <td colspan="6">
                &nbsp;
            </td>
        </tr>
        <tr class="separated">
            <th>
                序号
            </th>
            <th>
                商品编号
            </th>
            <th>
                商品名称
            </th>
            <th>
                商品价格
            </th>
            <th>
                数量
            </th>
            <th>
                小计
            </th>
        </tr>
        <tr>
            <td>
                1
            </td>
            <td>
                201304177
            </td>
            <td>
                梵希蔓2013夏装新款蕾丝连衣裙镂空假两件套连衣裙刺绣...
            </td>
            <td>
                ￥298.00
            </td>
            <td>
                1
            </td>
            <td>
                ￥298.00
            </td>
        </tr>
        <tr>
            <td colspan="6">
                &nbsp;
            </td>
        </tr>
        <tr class="separated">
            <td colspan="3">
                附言: QQQQ<br />
                电话: 11111111111<br />
            </td>
            <td colspan="3">
                商品价格: ￥298.00<br />
                支付手续费: ￥0.00<br />
                运费: ￥10.00<br />
                订单金额: ￥308.00
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td colspan="2">
                Powered By shopxx.net
            </td>
        </tr>
    </table>
</div>
</body>
</html>