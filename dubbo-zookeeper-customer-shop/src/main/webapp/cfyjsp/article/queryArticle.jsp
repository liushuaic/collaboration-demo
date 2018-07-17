<%--
  Created by IntelliJ IDEA.
  User: 33032
  Date: 2018/7/11
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="hxdiv"></div>
<div id="savediv"></div>
<jsp:include page="chajian.jsp"></jsp:include>
<div>
    <div style="margin-left:10px"><a id="" href="#" class="easyui-linkbutton" data-options="iconCls:''" onclick="tianjiaArt()">添加</a>
        <a id="#" href="#" class="easyui-linkbutton" data-options="iconCls:''" onclick="shanchu()">删除</a>
        <a id="#1" href="#" class="easyui-linkbutton" data-options="iconCls:''" onclick="shuaxin()">刷新</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        标题:<input  id="uname" name="uname" class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:150px">&nbsp;
        <a   class="easyui-linkbutton" data-options="iconCls:''" onclick="dd()">查询</a>
    </div>
    <div >

    </div>
</div>
<table id="arttable"></table>

<script>
    $(function(){
       dd();
    })
    function dd() {
        $('#arttable').datagrid({
            url:'<%=request.getContextPath()%>/cfyController/queryAtricle.jhtml',
            singleSelect:true,
            checkOnSelect:false,
            selectOnCheck:false,
            // pagination:true,//开启分页
//		    pagearticlecategoryid:'both',//分页工具栏显示位置   加上这个分页就显示在上面
            //    pageNumber:1,//初始化页码
            // pageSize:10,//每页条数
            // pageList:[5,8,10],//每页条数的下拉选项
 		  queryParams: {
              title: $("#uname").val(),
// 	                  mindate: $("#aa").datebox("getValue"),
// 	    		maxdate: $("#audtable").datebox("getValue"),
 		},
            columns:[[
                {field:'check',checkbox:true},
                {field:'title',title:'标题',width:70},
                {field:'articlecategoryid',title:'文章分类',width:150,
                    formatter:function(value,row,index){
                        return row.articlecategoryid==1?"商场动态":""||row.articlecategoryid==2?"活动促销":""||row.articlecategoryid==3?"购物指南":""||row.articlecategoryid==4?"支付方式":""||row.articlecategoryid==5?"配送方式":""||row.articlecategoryid==6?"售后服务":""||row.articlecategoryid==7?"关于我们":"";
                    }
                },
                {field:'ispublication',title:'是否发布',width:150,
                    formatter:function(value,row,index){
                        return row.ispublication==1?"√":"×";
                    }
                },
                {field:'author',title:'作者',width:150},
                {field:'isblanktarget',title:'设置',width:150},
                {field:'tagsid',title:'标签',width:150},
                {field:'content',title:'内容',width:150},
                {field:'seotitle',title:'页面标题',width:150},
                {field:'seokeywords',title:'页面关键字',width:150},
                {field:'seodescription',title:'页面描述',width:150},
                {field:'remarks',title:'操作',width:180,
                    formatter:function (value,row,index) {
                        return   "<a id=\'#2\' href=\'#\' class=\'easyui-linkbutton\'  onclick=\'binaji(\""+row.arid+"\")\'>[编辑]</a>";
                    }
                }
            ]]
        });
    }
    function binaji(id) {
        var tyid="'"+id+"'"
        $('#hxdiv').dialog({
            title: '修改',
            width: 400,
            height: 200,
            closed: false,
            cache: false,
            href: '<%=request.getContextPath()%>/cfyController/huixianArticle.jhtml?id='+tyid,
            modal: true,
            buttons:[{
                text:'保存',
                handler:function(){
                    $.ajax({
                        url:'<%=request.getContextPath()%>/cfyController/updateArticle.jhtml',
                        type:"post",
                        data:$("#updateArt_form").serialize(),
                        success:function(){
                            dd();
                            $('#hxdiv').dialog("close");
                        }
                    })

                }

            }]

        });
    }

    function  shanchu() {
        var array=$("#arttable").datagrid("getChecked");
        var arr="";
        var count=0;
        for (var i = 0; i < array.length; i++) {
            arr+=",'"+array[i]['arid']+"'";
            count++;
        }
        str=arr.substring(1);
        if (str != null || str != "") {
            $.ajax({
                url:'<%=request.getContextPath()%>/cfyController/deleteArticle.jhtml',
                type:"post",
                data:{"id":str},
                success:function(){
                    dd();
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
        dd();
    }

    function tianjiaArt() {
        $('#savediv').dialog({
            title: '新增',
            width: 400,
            height: 600,
            closed: false,
            cache: false,
            href: '<%=request.getContextPath()%>/cfyjsp/article/saveart.jsp',
            modal: true,
            buttons:[{
                text:'保存',
                handler :function(){
                    $.ajax({
                        url:'<%=request.getContextPath()%>/cfyController/saveArticle.jhtml',
                        type:"post",
                        data:$("#saveArt_form").serialize(),
                        success:function(success){
                            dd();
                            $('#savediv').dialog('close');
                        }
                    })
                }

            }]
        });
    }

</script>
</body>
</html>
