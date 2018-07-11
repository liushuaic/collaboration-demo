<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>productshow</title>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"/>
        <link href="<%=request.getContextPath() %>/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
        <!-- Bootstrap 核心css -->
        <link href="<%=request.getContextPath() %>/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap TreeView css -->
        <link href="<%=request.getContextPath() %>/js/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">

        <!-- Bootstrap addTabs css -->
        <link href="<%=request.getContextPath() %>/js/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">

        <!-- Bootstrap table css -->
        <link href="<%=request.getContextPath() %>/js/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">
        <!-- bootstrap-datetimepicker css -->
        <link href="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">

        <!-- bootstrap-dialog css -->
        <link href="<%=request.getContextPath() %>/js/bootstrap-dialog/dist/css/bootstrap-dialog.css" rel="stylesheet">
        <!-- bootstrap-fileinput css -->
        <link href="<%=request.getContextPath() %>/js/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">
        <!-- bootstrap-CodeSeven-toastr-61c48a6 css -->
        <link href="<%=request.getContextPath()%>/js/CodeSeven-toastr-61c48a6/toastr.scss" rel="stylesheet" />
        </head>
<body>
<table id="proid"></table>


        <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.min.js"></script>
    <!-- 引入EasyUI -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.easyui.min.js"></script>
    <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/util-js.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>

    <!--jQuery核心js  -->
    <%-- <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script> --%>
    <!-- bootstrap 核心js文件 -->
    <script src="<%=request.getContextPath() %>/js/bootstrap/js/bootstrap.min.js"></script>
    <!-- bootStrap TreeView -->
    <script src="<%=request.getContextPath() %>/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>

    <!-- bootStrap addTabs -->
    <script src="<%=request.getContextPath() %>/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>

    <!-- bootStrap table -->
    <script src="<%=request.getContextPath() %>/js/bootstrap-table/dist/bootstrap-table.js"></script>

    <!-- bootStrap table 语言包中文-->
    <script src="<%=request.getContextPath() %>/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>

    <!-- bootstrap-datetimepicker -->
    <script src="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
    <script src="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>

    <!-- bootstrap-dialog -->
    <script src="<%=request.getContextPath() %>/js/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
    <!-- bootstrap-fileinput -->
    <script src="<%=request.getContextPath() %>/js/bootstrap-fileinput/js/fileinput.js"></script>
    <script src="<%=request.getContextPath() %>/js/bootstrap-fileinput/js/locales/zh.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/CodeSeven-toastr-61c48a6/toastr.js"></script>


    <script>
    $(function(){
        queryPro();
    })
    function queryPro(){
        var index=0;
        $("#proid").datagrid({
            url:'<%=request.getContextPath()%>/zhjController/queryProductList.jhtml',
            pagination:true,
            pageNumber:1,
            pageSize:3,
            pageList:[3,6,9],
            singleSelect:true,
            checkOnSelect:false,
            selectOnCheck:false,
            remoteSort: false,
            columns:[[
                {field:'userchek',checkbox:true},
                // rownumbers:true, //显示行号列
                {field:'sn',title:' 序号  ',width:120,
                    formatter: function(value,row,index){
                        index++;
                        return index;
                    }
                },
                {field:'name',title:'名称',width:150,sortable:true},
                {field:'text',title:'商品分类',width:150},
                {field:'price',title:'销售价',width:100},
                {field:'cost',title:'成本价',width:120},
                {field:'stock',title:'库存',width:120},
                {field:'ismarketable',title:'是否上架',width:120,
                    formatter: function(value,row,index){
                        return row.ismarketable==1?"√":"×";
                    }
                },
                {field:'acto',title:'操作',width:120}
            ]]
        });
    }

</script>
</body>
</html>
