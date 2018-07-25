<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"/>
    <!-- 引入EasyUI -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.easyui.min.js"></script>
    <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/util-js.js"></script>

</head>
<body>
<form id="addressForm" method="post" onsubmit="return tijiao()">
    <input type="hidden" name="addid" value="${address.addid}"/>

    <table >
        <tr>
            <td>联系人姓名<font color="#a52a2a">*</font>:</td>
            <td><input id="name_id" onblur="t1()" value="${address.addname}" name="addname" />
                <span id="span1"></span>
            </td>
        </tr>
        <tr>
            <td>手机号<font color="#a52a2a">*</font>:</td>
            <td><input id="phone_id" onblur="t2()" value="${address.addphone}" name="addphone" />
                <span id="span2"></span>
            </td>
        </tr>
        <tr>
            <td>收货地址<font color="#a52a2a">*</font>:</td>

            <td>
                省份

                <select id="sheng" name="addprovince" onchange="t5()">
                    <option value="">--请选择--</option>
                </select>
                市区
                <select id="shi" name="addcity" onchange="t6()" >
                    <option value="">--请选择--</option>
                </select>
                区
                <select id="qu" name="addcounty">
                    <option value="">--请选择--</option>
                </select>
                <span id="span4"></span>
            <td>
        <tr>
            <td>详细地址: </td>
            <td >
                <textarea id="editor_id" name="introduction">${address.introduction}</textarea>
            </td>

        </tr>
        <%--<tr>
            <td><input type="submit" value="保存"/></td>
        </tr>--%>
    </table>
</form>
<script>
    //用户名
    function t1(){

        var zhengzhe = /^[\u4e00-\u9fa5]{2,}$/;
        var ming = document.getElementById("name_id").value;
        var tishi = document.getElementById("span1");

        if(zhengzhe.test(ming)){

            tishi.innerHTML="<font color='green'>√</font>";
            return true;
        }else{
            tishi.innerHTML="<font color='red'>用户名必须是两个以上的汉字组成并且不能为空</font>";
            return false;
        }
    }
    //手机号
    function t2() {


        var dia = document.getElementById("phone_id").value;
        var msg2 = document.getElementById("span2");
        var reg = /^1[34578]\d{9}$/;

        if (reg.test(dia)) {

            msg2.innerHTML = "<font color='green'>√</font>";
            return true;
        } else {
            msg2.innerHTML = "<font color='red'>请正确输入11位手机号码</font>";
            return false;
        }
    }
        var arr = [
            //省
            [1,"北京省",0],[2,"河北省",0],[3,"山东省",0],
            //市
            [11,"北京",1],[22,"石家庄市",2],[33,"菏泽市",3],
            [222,"邯郸市",2], [333,"烟台市",3],
            //区
            [1111,"海淀区",11],[2222,"长安区",22],[3333,"牡丹区",33],
            [11111,"昌平区",11],[22222,"桥东区",22],[33333,"福山区",333],

        ];

        $(function(){
            t4();
        })

        //籍贯：省
        function t4(){
            var str = "<option>--请选择--</option>";

            for (var i = 0;i < arr.length;i++){

                if(arr[i][2] == 0){

                    str += "<option value='"+arr[i][0]+"'>"+arr[i][1]+"</option>";
                }
            }
            document.getElementById("sheng").innerHTML = str;
        }

        //籍贯：市
        function t5(){

            var str = "<option value=''>--请选择--</option>";
            var sheng = document.getElementById("sheng").value;

            for (var i = 0;i < arr.length;i++){

                if(arr[i][2] == sheng){

                    str += "<option value='"+arr[i][0]+"'>"+arr[i][1]+"</option>";
                }
            }
            document.getElementById("shi").innerHTML = str;
        }
        //籍贯：区
        function t6(){

            var str = "<option value=''>--请选择--</option>";
            var shi = document.getElementById("shi").value;

            for (var i = 0;i < arr.length;i++){

                if(arr[i][2] == shi){

                    str += "<option value='"+arr[i][0]+"'>"+arr[i][1]+"</option>";
                }
            }
            document.getElementById("qu").innerHTML = str;
        }

        //提交
        function tijiao(){

            if(t1() & t2()){

                return true;
            }else{

                return false;
            }
        }
</script>
</body>

</html>

