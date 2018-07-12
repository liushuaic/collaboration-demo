<%--
  Created by IntelliJ IDEA.
  User: 33032
  Date: 2018/7/10
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>


<body>
<jsp:include page="chajian.jsp"></jsp:include>
<div id="hx"></div>
<div id="sadiv"></div>
<div>
    <div style="margin-left:10px"><a id="" href="#" class="easyui-linkbutton" data-options="iconCls:''" onclick="tianjia()">添加</a>
        <a id="#" href="#" class="easyui-linkbutton" data-options="iconCls:''" onclick="shanchu()">删除</a>
        <a id="#1" href="#" class="easyui-linkbutton" data-options="iconCls:''" onclick="shuaxin()">刷新</a>
    </div>

</div>
<table id="audtable"></table>
<script>

    function tianjia() {
        $('#sadiv').dialog({
            title: '新增',
            width: 400,
            height: 200,
            closed: false,
            cache: false,
            href: '<%=request.getContextPath()%>/cfyjsp/content/savenav.jsp',
            modal: true,

            buttons:[{
                text:'保存',
                handler :function(){
                    $.ajax({
                        url:'<%=request.getContextPath()%>/cfyController/saveNav.jhtml',
                        type:"post",
                        data:$("#saveNav_form").serialize(),
                        success:function(success){
                            cc();
                            $('#sadiv').dialog('close');
                        }
                    })
                }

            }]
        });
    }

    $(function(){
        cc();
    })
    function cc(){
    $('#audtable').datagrid({
        url:'<%=request.getContextPath()%>/cfyController/queryNavigation.jhtml',
        singleSelect:true,
        checkOnSelect:false,
        selectOnCheck:false,
        // pagination:true,//开启分页
//		    pagePosition:'both',//分页工具栏显示位置   加上这个分页就显示在上面
        //    pageNumber:1,//初始化页码
        // pageSize:10,//每页条数
        // pageList:[5,8,10],//每页条数的下拉选项
// 		  queryParams: {
// 			  ptname: $("#uname").val(),
// 	                  mindate: $("#aa").datebox("getValue"),
// 	    		maxdate: $("#audtable").datebox("getValue"),
// 		},

        columns:[[
            {field:'check',checkbox:true},
            {field:'name',title:'名称',width:70},
            {field:'position',title:'位置',width:150,
                formatter:function(value,row,index){
                    return row.position==1?"顶部":""||row.position==2?"中间":""||row.position==3?"底部":"";
                }
            },
            {field:'url',title:'链接地址',width:150},
            {field:'isblanktarget',title:'是否新窗口打开',width:150},
            {field:'remarks',title:'操作',width:180,
                formatter:function () {
                    return   "<a id=\'#2\' href=\'#\' class=\'easyui-linkbutton\'  onclick=\'binaji()\'>[编辑]</a>";
                }
            }
        ]]
    });
    }

    function binaji() {
        var tyid="'"+id+"'"
        $('#hx').dialog({
            title: '修改',
            width: 400,
            height: 200,
            closed: false,
            cache: false,
            href: '<%=request.getContextPath()%>/cfyController/huixianNavigation.jhtml?id='+tyid,
            modal: true,
            buttons:[{
                text:'保存',
                handler:function(){
                    $.ajax({
                        url:'<%=request.getContextPath()%>/cfyController/updateNavigation.jhtml',
                        type:"post",
                        data:$("#updateNav_form").serialize(),
                        success:function(){
                            cc();
                            $('#hx').dialog("close");
                        }
                    })

                }

            }]

        });
    }
    
    function  shanchu() {
        var array=$("#audtable").datagrid("getChecked");
        var arr="";
        var count=0;
        for (var i = 0; i < array.length; i++) {
            arr+=",'"+array[i]['nid']+"'";
            count++;
        }
        str=arr.substring(1);
        if (str != null || str != "") {
            alert(1);
            $.ajax({
                url:'<%=request.getContextPath()%>/cfyController/deleteNavigation.jhtml',
                type:"post",
                data:{"id":str},
                success:function(){
                    cc();
                },
                error:function(){
                    alert("删除失败");
                }

            })
        }else{
            alert("请选你要删除的数据")
        }
    }

    function shuaxin(){
        cc();
    }

</script>
</body>
</html>
