<%--
  Created by IntelliJ IDEA.
  User: Man
  Date: 2018/7/24
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EasyUI/themes/default/easyui.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EasyUI/themes/icon.css"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.min.js"></script>
<!-- 引入EasyUI -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.easyui.min.js"></script>
<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/util-js.js"></script>
</head>
<body>
<div id="uu" class="easyui-tabs" data-options="fit:true">
    <div title="基本信息" style="padding:40px;display:none;">
        <form id="form_id" >
        <table border="1" bordercolor="#e0ffff" width="1500px" height="1000px">
            <tr>
                <td align="right">商品分类:</td>
                <td align="left"><input name="productcategoryid" id="text"></td>
            </tr>
            <tr align="right">
                <td>名称:</td>
                <td align="left"><input name="name"></td>
            </tr>

            <tr align="right">
                <td>销售价:</td>
                <td align="left"><input name="price"></td>
            </tr>
            <tr align="right">
                <td>会员价:</td>
                <td align="left"><input type="checkbox" name="memberpriceid">启用会员价</td>
            </tr>
            <tr align="right">
                <td>成本价:</td>
                <td align="left"><input name="cost"></td>
            </tr>
            <tr align="right">
                <td>市场价:</td>
                <td align="left"><input name="marketprice"></td>
            </tr>
            <tr align="right">
                <td>展示图片:</td>
                <td align="left"><input type="file" name="file"></td>
            </tr>

            <tr align="right">
                <td>重量:</td>
                <td align="left"><input name="weight"></td>
            </tr>
            <tr align="right">
                <td>库存:</td>
                <td align="left"><input name="stock"></td>
            </tr>
            <tr align="right">
                <td>颜色:</td>
                <td align="left"><input name="attributevalue1"></td>
            </tr>
            <tr align="right">
                <td>尺寸:</td>
                <td align="left"><input name="attributevalue2"></td>
            </tr>
            <tr align="right">
                <td>分辨率:</td>
                <td align="left"><input name="attributevalue3"></td>
            </tr>
            <tr align="right">
                <td>设置:</td>
                <td align="left">
                    <input type="checkbox" value="1" name="ismarketable">是否上架
                    <input type="checkbox" value="2">是否列出
                    <input type="checkbox" value="3">是否置顶
                    <input type="checkbox" value="4">是否为赠品
                </td>
            </tr>
            <tr align="right">
                <td>介绍:</td>
                <td align="left"><input name="introduction"></td>
            </tr>

            <tr align="right">
                <td>页面标题:</td>
                <td align="left"><input name="seotitle"></td>
            </tr>

            <tr align="right">
                <td>页面描述:</td>
                <td align="left"><input name="seodescription"></td>
            </tr>
            <tr >
                <td></td>
                <td  align="left">
                    <input type="button" value="确定" onclick="saveadd()">
                    <input type="reset" value="重置">
                </td>
            </tr>
        </table>
        </form>
    </div>
    <div title="商品介绍"><br>
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
<script>
    $(function(){
        $('#text').combobox({
            url: '<%=request.getContextPath()%>/zhjController/queryCateTree.jhtml',
            valueField:'id',
            textField:'text',
            required: true
        });
    })
  function saveadd(){
 var formData = new FormData($("#form_id")[0]);
      $.ajax({
          url:"<%=request.getContextPath()%>/zhjController/addFrom.jhtml",
          type:"post",
          data:formData,
          async: false,
          cache: false,
          contentType: false,
          processData: false,
          success:function(data){
              if(data!=null){
                  alert("成功");
                  location.href="<%=request.getContextPath()%>/zhjController/queryProduct.jhtml"
              }else{
                  alert("失败")
              }
          }

      })
  }

</script>
</body>
</html>
