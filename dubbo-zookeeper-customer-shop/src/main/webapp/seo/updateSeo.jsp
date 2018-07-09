<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>

    <form  method="post"  id="fff">
        <input type="hidden" name="seoid" value="${list.seoid }">
        <table align="center" border="1" cellspacing="0">
            <tr>
                <td>类型：</td>
                <td >
                  <input readonly="readonly" class="easyui-textbox" name="type" style="width: 200px" value="${list.type }">
                </td>
            </tr>
            <tr>
                <td>页面标题：</td>
                <td>
                    <input class="easyui-textbox" name="title" id="title1" style="width: 200px" onclick="title() " value="${list.title}">
                </td>
            </tr>
            <tr>
                <td>页面关键词：</td>
                <td>
                    <input class="easyui-textbox" name="keywords" style="width: 200px" value="${list.keywords }">
                </td>
            </tr>
            <tr>
                <td>页面描述：</td>
                <td>
                    <input class="easyui-textbox" name="description" style="width: 200px" value="${list.description}">
                </td>
        </table>
    </form>
    <script>
        function title(){

                    href="<%=request.getContextPath()%>/seo/title.jsp

            }
            $('#title1').dialog({
                title:title,
                width:650,
                height:500,
                closed:false,
                cache:false,
                href:href,
                modal:true,
                buttons:[{
                    text:'保存',
                    handler:function(){
                        $("#fff").form('submit',{
                            url:"<%=request.getContextPath()%>/seoController/updateSeo.jhtml",
                            success:function(data){
                                //     						 var data = eval("("+data+")");
                                //     						  if(data.success){
                                $('#dig').dialog("close")
                                $("#show").datagrid('load');
//     						  }else{
//     							  $.messager.alert("提示",data.msg);
//     						  }
                            }
                        })
                    }
                }]
            })
        }

    </script>
</body>
</html>
