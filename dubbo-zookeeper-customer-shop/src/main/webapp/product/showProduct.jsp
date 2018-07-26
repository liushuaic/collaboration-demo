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


    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootstrap3/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootstrap3/css/bootstrap-theme.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootStrap-addTabs/bootstrap.addtabs.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootstrap-treeview/bootstrap-treeview.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootstrap-table/bootstrap-table.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/bootstrap3/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/bootstrap3/js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/bootstrap-treeview/bootstrap-treeview.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/bootStrap-addTabs/bootstrap.addtabs.min.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/bootstrap-table/bootstrap-table.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/bootstrap-bootbox/bootbox.js"></script>
        </head>
<body>



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



        <div id="toolbar">
            <button onclick="addCyh()" class="btn btn-add">
                <i class="glyphicon glyphicon-pencil"></i>
                添加
            </button>
            <button onclick="reloads()" class="btn btn-info">
                <i class="glyphicon glyphicon-refresh"></i>
                刷新
            </button>
            <button onclick="delCyh()" class="btn btn-danger">
                <i class="glyphicon glyphicon-trash"></i>
                删除
            </button>

        </div>
        <table id="proid"></table>
    <script>
            function addCyh(){
                location.href="<%=request.getContextPath()%>/product/saveCommodity.jsp";
            }

        function reloads() {
            location.reload();
        }
        function delCyh(){

            var sss = $("#proid").bootstrapTable("getSelections");
            var idlenth=sss.length;

            if(idlenth==0){
                alert("请选择要删除的数据");
                return false;
            }
            var idss="";
            for (var i = 0; i < sss.length; i++) {
                idss+=sss[i].sn+",";
            }

            if(confirm("是否确认要删除选中数据!!!")){

                $.ajax({
                    url:"<%=request.getContextPath()%>/zhjController/delcyhList.jhtml",
                    type:"post",
                    data:{"sn":idss},
                    dataType:"text",
                    traditional: true,//这里设置为true
                    async:false,
                    success:function(result){
                        if(result=="success"){
                            alert("删除成功");
                            location.reload();
                        }
                    },
                    error:function(){
                        alert("删除失败");
                    }
                })
            }

        }

        function bianji(sn){
               location.href="<%=request.getContextPath()%>/zhjController/querycyhByid.jhtml?sn="+sn;
        }
    $(function(){
        queryPro();
    })
      function queryPro(){
          var indexs=0;
          $('#proid').bootstrapTable({
              url:'<%=request.getContextPath()%>/zhjController/querycyhList.jhtml',
              toolbar:'#toolbar',
              //是否显示搜索框  //获取数据地址
              striped:true,
              search:true,
              searchOnEnterKey:true,

              showHeader:true,
              showColumns:true,//显示你想要的字段
              showRefresh:true,//刷新
              showToggle:true,//切换xian
              showPaginationSwitch:true,//是否显示分页

              paginationHAlign:"right",
              pagination: true,		   //开启分页
              pageNumber:1,              //初始化加载第几页,默认第1页
              pageSize: 10,               //每页几条数据,超过总条数右下角将没分页
              pageList: [10, 40, 60, 80],    //每页条数,设置为All将展示全部记录,超过总条数底部将不显示条数下拉框
              columns:[
                  {field:'box',checkbox:true},
                  {field:'sn',title:'序号',width:100,sortable:true.toSource,
                      formatter:function (index,row,value) {
                          indexs++;
                        return indexs;
                      }
                  },
                  {field:'name',title:'名称',width:100},
                  {field:'text',title:'商品分类',width:100,align:'center',sortable:true},
                  {field:'price',title:'销售价',width:100,align:'center',sortable:true},
                  {field:'cost',title:'成本价',width:100,align:'center',sortable:true},
                  {field:'stock',title:'库存',width:100,align:'center',sortable:true},
                  {field:'ismarketable',title:'是否上架',width:100,sortable:true,
                      formatter:function (index,row,value) {
                          var flag = "";
                          if(row.ismarketable == 1){
                              flag = "√";
                          }
                          if(row.ismarketable == 2){
                              flag = "×";
                          }
                          return flag;
                      }
                  },
                  {field:'pricz',title:'操作',width:100,
                      formatter:function(index,row,value){
                          return "<a href='javascript:chakan(\""+row.orderid+"\")'>[查看]</a><a href='javascript:bianji(\""+row.sn+"\")'>[编辑]</a>";
                      }
                  }
              ]
          });

      }
    /*function queryPro(){
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
                {field:'acto',title:'操作',width:120,
                 formatter: function (value, row, index) {
                     return "<a href=''>修改</a>  <a href=''>删除</a>";
                 }}
            ]]
        });
    }*/

</script>
</body>
</html>
