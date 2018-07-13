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
            search:true,
            searchOnEnterKey:true,
            height:500,
            showColumns:true,//是否显示内容列下拉框
            showToggle:true,//是否显示切换试图（table/card）按钮
            showPaginationSwitch:true,//是否显示数据条数选择框
            paginationHAlign:false,
            showRefresh:true,//是否显示刷新按钮
            detailView:false,//设置为true 可以显示详细页面模式。
            showFooter:false,//是否显示列脚clickToSelect: true, //是否启用点击选中行
            columns:[
                {checkbox:true},
                {field:'mrname',title:'名称',align:'center',width:225},
                {field:'scale',title:'优惠比例',width:225},
                {field:'amount',title:'消费金额',width:225},
                {field:'isdefault',title:'是否默认',width:225,formatter:function(value,row,index){
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
                                toastr.success("新增数据成功");
                                dialogItself.close();
                                location.reload();
                            } else {
                                toastr.error("新增数据失败");
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
                                    toastr.success("修改数据成功");
                                    dialogItself.close();
                                   // location.reload();
                                    $("#tabs").bootstrapTable('refresh');
                                } else {
                                    toastr.error("修改数据失败");
                                    dialogItself.close();
                                   // location.reload();
                                    $("#tabs").bootstrapTable('refresh');
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

        Ewin.confirm({message:"确认要删除选择的数据吗？"}).on(function (r){
            if (r == true){
                $.ajax({
                    url:"../memberrank/delMember.jhtml",
                    type:"post",
                    data:{"ids":ids},
                    dataType:"json",
                    success:function(data){
                        if(data=="success"){
                            $("#tabs").bootstrapTable('refresh');
                        }else{
                            $("#tabs").bootstrapTable('refresh');
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
    (function ($) {

        window.Ewin = function () {
            var html = '<div id="[Id]" class="modal fade" role="dialog" aria-labelledby="modalLabel">' +
                '<div class="modal-dialog modal-sm">' +
                '<div class="modal-content">' +
                '<div class="modal-header">' +
                '<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>' +
                '<h4 class="modal-title" id="modalLabel">[Title]</h4>' +
                '</div>' +
                '<div class="modal-body">' +
                '<p>[Message]</p>' +
                '</div>' +
                '<div class="modal-footer">' +
                '<button type="button" class="btn btn-default cancel" data-dismiss="modal">[BtnCancel]</button>' +
                '<button type="button" class="btn btn-primary ok" data-dismiss="modal">[BtnOk]</button>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '</div>';


            var dialogdHtml = '<div id="[Id]" class="modal fade" role="dialog" aria-labelledby="modalLabel">' +
                '<div class="modal-dialog">' +
                '<div class="modal-content">' +
                '<div class="modal-header">' +
                '<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>' +
                '<h4 class="modal-title" id="modalLabel">[Title]</h4>' +
                '</div>' +
                '<div class="modal-body">' +
                '</div>' +
                '</div>' +
                '</div>' +
                '</div>';
            var reg = new RegExp("\\[([^\\[\\]]*?)\\]", 'igm');
            var generateId = function () {
                var date = new Date();
                return 'mdl' + date.valueOf();
            }
            var init = function (options) {
                options = $.extend({}, {
                    title: "操作提示",
                    message: "提示内容",
                    btnok: "确定",
                    btncl: "取消",
                    width: 200,
                    auto: false
                }, options || {});
                var modalId = generateId();
                var content = html.replace(reg, function (node, key) {
                    return {
                        Id: modalId,
                        Title: options.title,
                        Message: options.message,
                        BtnOk: options.btnok,
                        BtnCancel: options.btncl
                    }[key];
                });
                $('body').append(content);
                $('#' + modalId).modal({
                    width: options.width,
                    backdrop: 'static'
                });
                $('#' + modalId).on('hide.bs.modal', function (e) {
                    $('body').find('#' + modalId).remove();
                });
                return modalId;
            }

            return {
                alert: function (options) {
                    if (typeof options == 'string') {
                        options = {
                            message: options
                        };
                    }
                    var id = init(options);
                    var modal = $('#' + id);
                    modal.find('.ok').removeClass('btn-success').addClass('btn-primary');
                    modal.find('.cancel').hide();

                    return {
                        id: id,
                        on: function (callback) {
                            if (callback && callback instanceof Function) {
                                modal.find('.ok').click(function () { callback(true); });
                            }
                        },
                        hide: function (callback) {
                            if (callback && callback instanceof Function) {
                                modal.on('hide.bs.modal', function (e) {
                                    callback(e);
                                });
                            }
                        }
                    };
                },
                confirm: function (options) {
                    var id = init(options);
                    var modal = $('#' + id);
                    modal.find('.ok').removeClass('btn-primary').addClass('btn-success');
                    modal.find('.cancel').show();
                    return {
                        id: id,
                        on: function (callback) {
                            if (callback && callback instanceof Function) {
                                modal.find('.ok').click(function () { callback(true); });
                                modal.find('.cancel').click(function () { callback(false); });
                            }
                        },
                        hide: function (callback) {
                            if (callback && callback instanceof Function) {
                                modal.on('hide.bs.modal', function (e) {
                                    callback(e);
                                });
                            }
                        }
                    };
                },
                dialog: function (options) {
                    options = $.extend({}, {
                        title: 'title',
                        url: '',
                        width: 800,
                        height: 550,
                        onReady: function () { },
                        onShown: function (e) { }
                    }, options || {});
                    var modalId = generateId();

                    var content = dialogdHtml.replace(reg, function (node, key) {
                        return {
                            Id: modalId,
                            Title: options.title
                        }[key];
                    });
                    $('body').append(content);
                    var target = $('#' + modalId);
                    target.find('.modal-body').load(options.url);
                    if (options.onReady())
                        options.onReady.call(target);
                    target.modal();
                    target.on('shown.bs.modal', function (e) {
                        if (options.onReady(e))
                            options.onReady.call(target, e);
                    });
                    target.on('hide.bs.modal', function (e) {
                        $('body').find(target).remove();
                    });
                }
            }
        }();
    })(jQuery);
</script>
</body>
</html>