<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="<%=path%>/bootstrap/bootstrap3/css/bootstrap.css">
    <link rel="stylesheet" href="<%=path%>/bootstrap/bootstrap3/css/bootstrap-theme.css">
    <link rel="stylesheet" href="<%=path%>/bootstrap/bootstrap-table/bootstrap-table.css">
    <link rel="stylesheet" href="<%=path%>/bootstrap/bootstrap-dialog/dist/css/bootstrap-dialog.css" >
    <link rel="stylesheet" href="<%=path%>/bootstrap/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/bootstrap/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/bootstrap/easyui/themes/icon.css">
    <link href="<%=path%>/bootstrap/CodeSeven-toastr-50092cc/build/toastr.css" rel="stylesheet" type="text/css" />
    <script src="<%=path%>/bootstrap/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script src="<%=path%>/bootstrap/bootstrap3/js/bootstrap.js"></script>
    <!-- bootstrap-table -->
    <script src="<%=path%>/bootstrap/bootstrap-table/bootstrap-table.js"></script>
    <script src="<%=path%>/bootstrap/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
    <!-- bootbox -->
    <script src="<%=path%>/bootstrap/bootstrap-bootbox/bootbox.js"></script>
    <!-- 时间插件 -->
    <script src="<%=path%>/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
    <script src="<%=path%>/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <!-- dialog -->
    <script src="<%=path%>/bootstrap/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
    <%-- easyui --%>
    <script type="text/javascript" src="<%=path%>/bootstrap/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=path%>/bootstrap/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=path%>/bootstrap/kindeditor-4.1.10/kindeditor.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>/bootstrap/kindeditor-4.1.10/lang/zh_CN.js" charset="utf-8"></script>
    <script src="<%=path%>/bootstrap/CodeSeven-toastr-50092cc/build/toastr.min.js"></script>
    <style type="text/css">
        a:hover {color:red; text-decoration:none;}
    </style>
</head>
<body>
<div class="easyui-layout" data-options="fit:true">
    <div data-options="region:'east',title:'角色管理列表'" collapsible="false" style="width: 100%">
        <div id="where">
            <a href="javascript:add()" class="btn btn-success" data-options="iconCls:'icon-add',plain:true">添加</a>
            <a href="javascript:update()" class="btn btn-success" data-options="iconCls:'icon-edit',plain:true">修改</a>
            <a href="javascript:remove()" class="btn btn-warning" data-options="iconCls:'icon-remove',plain:true">删除</a>
        </div>
        <table id="tabs" class="text-nowrap"></table>
    </div>
</div>
<div id="dd"></div>
<script type="text/javascript">
    $(function(){
        $('#tabs').bootstrapTable({
            toolbar:'#where',
            url:'<%=request.getContextPath()%>/memberrank/queryMenberList.jhtml',
            pagination: true,
            pageList:[5, 10, 20, 50],
            pageSize:5,
            striped:true,                    //是否显示行间隔色
            height:500,
            showColumns:false,//是否显示内容列下拉框
            showToggle:false,//是否显示切换试图（table/card）按钮
            showPaginationSwitch:false,//是否显示数据条数选择框
            showRefresh:false,//是否显示刷新按钮
            detailView:false,//设置为true 可以显示详细页面模式。
            showFooter:false,//是否显示列脚clickToSelect: true, //是否启用点击选中行
            sidePagination:'server',//分页方式：client客户端分页，server服务端分页（* striped:true,
            queryParams:function(){
                /* var searchBrand = $('#searchBrand').val(); */
                return {
                    page: this.pageNumber,
                    rows: this.pageSize,
                };
            },
            columns:[
                {checkbox:true},
                {field:'mrname',title:'名称',align:'center',width:225},
                {field:'scale',title:'优惠比例',width:225},
                {field:'amount',title:'消费金额',width:225},
                {field:'isdefault',title:'是否默认',width:225,formatter:function(value,row,index){
                    /*
                    * value == 1 不是 默认
                    * value == 2 默认
                    * */
                    if (value == null){
                        return "否";
                    }else{
                        return "是";
                    }
                }},
                {field:'ss',title:'操作',width:225,formatter:function(value,row,index){
                    return '<a href="javascript:update()">[编辑]</a>';
                }},
            ]
        })
    })
    //判断是新增还是修改,走后台查询.
    function add(){
        BootstrapDialog.show({
            type: BootstrapDialog.TYPE_SUCCESS,
            title: "新增",
            message: $("<div></div>").load("<%=request.getContextPath()%>/memberrank/toAddMember.jhtml"),
            //size : BootstrapDialog.SIZE_SMALL,//size为小，默认的对话框比较宽
            buttons: [{// 设置关闭按钮
                label: '关闭',
                action: function (dialogItself) {
                    dialogItself.close();
                },
            }, {
                label: '保存',
                action: function (dialogItself) {
                  /*  var formData = new FormData(document.getElementById("myForm"));
                    $.ajax({*/
                    $("#myForm").form('submit',{
                        url: "<%=request.getContextPath()%>/memberrank/addMember.jhtml",
                        type: "post",
                        dataType: "text",
                        async: false,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function (data) {
                            data = eval("("+data+")");
                            if (data.success) {
                                toastr.success("新增成功","成功");
                                dialogItself.close();
                                location.reload();
                            } else {
                                toastr.success("新增失败","失败");
                                dialogItself.close();
                                location.reload();
                            }
                        },
                        error: function () {
                            alert("新增失败")
                        }
                    })
                }
            }
            ]
        });
    }
    function update() {
        var arr = $("#tabs").bootstrapTable('getSelections');
        if (arr.length != 1) {
            toastr.warning("请选择一行数据!","提醒");
            return;
        } else {
            BootstrapDialog.show({
                type: BootstrapDialog.TYPE_SUCCESS,
                title: "修改",
                message: $("<div></div>").load("<%=request.getContextPath()%>/memberrank/toAddMember.jhtml?id=" + arr[0].mrid),
                //size : BootstrapDialog.SIZE_SMALL,//size为小，默认的对话框比较宽
                buttons: [{// 设置关闭按钮
                    label: '关闭',
                    action: function (dialogItself) {
                        dialogItself.close();
                    },
                }, {
                    label: '保存',
                    action: function (dialogItself) {
                        $("#myForm").form('submit',{
                            url: "<%=request.getContextPath()%>/memberrank/addMember.jhtml",
                            type: "post",
                            dataType: "text",
                            async: false,
                            cache: false,
                            contentType: false,
                            processData: false,
                            success: function (data) {
                                data = eval("("+data+")");
                                if (data.success) {
                                    toastr.success("修改成功","成功");
                                    dialogItself.close();
                                    location.reload();
                                } else {
                                    toastr.error("修改失败","失败");
                                    dialogItself.close();
                                    location.reload();
                                    $('#tabs').bootstrapTable("load");
                                }
                            },
                            error: function () {
                                alert("修改失败")
                            }
                        })
                    }
                }
                ]
            });
        }
    }
    function remove(id) {
        var ids = "";
        if (id != null && id != "") {
            ids = id
        }else{
            var arr = $("#tabs").bootstrapTable('getSelections');
            for (var i = 0; i < arr.length; i++) {
                ids += ",'"+arr[i].mrid+"'";
            }
        }
        ids = ids.substr(1)
        $.messager.confirm('确认','您确认想要删除记录吗？',function(r){
            if (r == true){
                $.ajax({
                    url:"../memberrank/delMember.jhtml",
                    type:"post",
                    data:{"ids":ids},
                    dataType:"json",
                    success:function(data){
                        if(data=="success"){
                            location.reload();
                        }else{
                            location.reload();
                        }
                    },
                })
            }
        });
    }
    toastr.options = {
        closeButton: false,
        debug: false,
        progressBar: true,
        positionClass: "toast-bottom-center",
        onclick: null,
        showDuration: "500",
        hideDuration: "500",
        timeOut: "1000",
        extendedTimeOut: "1000",
        showEasing: "swing",
        hideEasing: "linear",
        showMethod: "fadeIn",
        hideMethod: "fadeOut"
    };
</script>
</body>
</html>