<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/26
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>快递单打印 - Powered By 统帅购物</title>
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

        .content {
            margin: 4px;
            position: relative;
            overflow: hidden;
            box-shadow: 0px 0px 6px rgba(0, 0, 0, 0.1);
            -moz-box-shadow: 0px 0px 6px rgba(0, 0, 0, 0.1);
            -webkit-box-shadow: 0px 0px 6px rgba(0, 0, 0, 0.1);
            border: 1px solid #dde9f5;
            width: 800px;
            height: 483px;
            background: url(http://storage.shopxx.net/demo-image/3.0/delivery_template/yto.png) 0px 0px no-repeat;
        }

        .content .item {
            line-height: 20px;
            float: left;
            position: absolute;
            overflow: hidden;
            word-wrap: break-word;
            color: #000000;
            font-size: 12pt;
        }

        .container pre {
            float: left;
        }

        .content .item .resize {
            display: none;
        }
    </style>
    <style type="text/css" media="print">
        .bar {
            display: none;
        }

        .content {
            margin: 0px;
            border: none;
            margin-left: 0px;
            margin-top: 0px;
            background: none;
        }
    </style>
    <script type="text/javascript">
        $().ready(function() {

            var $deliveryForm = $("#deliveryForm");
            var $deliveryTemplate = $("#deliveryTemplate");
            var $deliveryCenter = $("#deliveryCenter");
            var $print = $("#print");

            $deliveryTemplate.add($deliveryCenter).change(function() {
                if ($deliveryTemplate.val() != "" && $deliveryCenter.val() != "") {
                    $deliveryForm.submit();
                }
            });

            $print.click(function() {
                if ($deliveryTemplate.val() == "") {
                    $.message("warn", "请选择快递单模板");
                    return false;
                }
                if ($deliveryCenter.val() == "") {
                    $.message("warn", "请选择发货点");
                    return false;
                }
                window.print();
                return false;
            });

        });
    </script>
</head>
<body>
<div class="bar">
    <form id="deliveryForm" action="delivery.jhtml" method="get">
        <input type="hidden" name="orderId" value="1" />
        <a href="javascript:;" id="print" class="button">打 印</a>
        快递单模板:
        <select id="deliveryTemplate" name="deliveryTemplateId">
            <option value="">请选择...</option>
            <option value="1" selected="selected">圆通快递</option>
        </select>
        发货点:
        <select id="deliveryCenter" name="deliveryCenterId">
            <option value="">请选择...</option>
            <option value="1" selected="selected">北京发货中心</option>
        </select>
    </form>
</div>
<div class="content"><DIV class=item style="Z-INDEX: 10; LEFT: 102px; TOP: 127px"><PRE>北京发货中心</PRE>
    <DIV class=resize></DIV></DIV>
    <DIV class=item style="Z-INDEX: 9; LEFT: 103px; TOP: 98px"><PRE></PRE>
        <DIV class=resize></DIV></DIV>
    <DIV class=item style="Z-INDEX: 11; LEFT: 102px; TOP: 164px"><PRE>北京市东城区</PRE>
        <DIV class=resize></DIV></DIV>
    <DIV class=item style="Z-INDEX: 3; LEFT: 116px; TOP: 227px"><PRE>13888888888</PRE>
        <DIV class=resize></DIV></DIV>
    <DIV class=item style="Z-INDEX: 5; LEFT: 278px; TOP: 227px"><PRE>010-88888888</PRE>
        <DIV class=resize></DIV></DIV>
    <DIV class="item selected" style="Z-INDEX: 7; LEFT: 459px; TOP: 113px"><PRE>张三</PRE>
        <DIV class=resize></DIV></DIV>
    <DIV class=item style="Z-INDEX: 10; LEFT: 455px; TOP: 171px"><PRE>山西省</PRE>
        <DIV class=resize></DIV></DIV>
    <DIV class=item style="Z-INDEX: 15; LEFT: 408px; TOP: 203px"><PRE>光明小区</PRE>
        <DIV class=resize></DIV></DIV>
    <DIV class=item style="Z-INDEX: 1; LEFT: 50px; TOP: 198px"><PRE>新建安天坛东路888号</PRE>
        <DIV class=resize></DIV></DIV>
    <DIV class=item style="Z-INDEX: 18; LEFT: 501px; TOP: 226px"><PRE>11111111111</PRE>
        <DIV class=resize></DIV></DIV></div>
</body>
</html>