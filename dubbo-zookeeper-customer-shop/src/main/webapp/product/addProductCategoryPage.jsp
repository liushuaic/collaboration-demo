<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018\7\12 0012
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<jsp:include page="../cfyjsp/article/chajian.jsp"></jsp:include>
<body>
 <a href="">首页</a> 》添加商品分类 <br><br>
 <center>
 <table border="1" bordercolor="#f5f5dc" cellspacing="0" width="1055" height="400">
     <tr>
       <td bgcolor="#f0f8ff" width="300" align="right">名称 :&nbsp; &nbsp;</td>
       <td width="700"><input class="easyui-textbox"  style="width:200px"> </td>
     </tr>
     <tr>
         <td bgcolor="#f0f8ff" align="right">上级分类 : &nbsp; &nbsp;</td>
         <td> <input id="cc"  style="width:200px">  </td>
     </tr>
     <tr>
         <td bgcolor="#f0f8ff" align="right">筛选品牌 :&nbsp; &nbsp;</td>
         <td>

                <c:forEach items="${list}" var="b">

                    <input type="checkbox" value="${b.brandid}"> ${b.brandname}  &nbsp;&nbsp;&nbsp;
                </c:forEach>

         </td>
     </tr>
     <tr>
         <td bgcolor="#f0f8ff" align="right">页面标题 : &nbsp; &nbsp;</td>
         <td><input class="easyui-textbox"  style="width:200px"></td>
     </tr>
     <tr>
         <td bgcolor="#f0f8ff" align="right">页面关键词 : &nbsp; &nbsp;</td>
         <td><input class="easyui-textbox"  style="width:200px"></td>
     </tr>

     <tr>
         <td bgcolor="#f0f8ff" align="right">页面描述 : &nbsp; &nbsp;</td>

         <td><input class="easyui-textbox"  style="width:200px"></td>
     </tr>
     <tr>
         <td bgcolor="#f0f8ff"></td>
         <td> <a href="javascript:addcategory()" class="easyui-linkbutton" >确定</a>
             <a href="javascript:reloadcategory()" class="easyui-linkbutton">返回</a></td>
     </tr>


 </table>
 </center>

<script>
    $('#cc').combotree({
        url: '<%=request.getContextPath()%>/zhjController/queryCateTree.jhtml',
        valueField:'id',
        textField:'text',
        required: true
    });


</script>
</body>
</html>
