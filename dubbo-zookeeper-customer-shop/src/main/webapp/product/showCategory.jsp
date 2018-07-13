
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"/>
</head>

<body>
<a href="javascript:addcategory()" class="easyui-linkbutton" iconCls="icon-add">新增</a>
<a href="javascript:reloadcategory()" class="easyui-linkbutton" iconCls="icon-edit">刷新</a>
   <table id="catid"></table>

   <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.min.js"></script>
   <!-- 引入EasyUI -->
   <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.easyui.min.js"></script>
   <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
   <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/locale/easyui-lang-zh_CN.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/util-js.js"></script>
<script>

    $(function(){
        tree();
        $('#catid').find("span.tree-icon").removeClass('tree-icon tree-folder tree-folder-open');
        $('#catid').find("span.tree-hit").removeClass('tree-expanded');
        var icons3 = $('#catid').find("span.tree-file").removeClass('tree-file');
    })
    function tree(){
        $('#catid').treegrid({
            url: '<%=request.getContextPath()%>/zhjController/queryProductCategoryList.jhtml',
            idField: 'id',
            treeField: 'text',
            //  parentField:'pid',
            singleSelect: false,
            checkOnSelect: true,
            selectOnCheck: true,
            columns: [[
                {field: 'userchek', checkbox: true},
                {title: '名称', field: 'text', width: 180},
                {title: '页面关键字', field: 'seoKeywords', width: 180},
                {  title: '操作', field: 'effective', width: 180,
                    formatter: function (value, row, index) {
                        return "<a href=''>[查看]</a>  <a href=''>[修改]</a>   <a href=''>[删除]</a> ";
                    }
                }
            ]]
        })
    }


    function addcategory(){
       location.href="<%=request.getContextPath()%>/zhjController/toAddProductCategoryPage.jhtml";
    }

    function reloadcategory(){
        tree()
    }
</script>
</body>
</html>
