/*-----------------------------------------------------------------------------
* @Description:  模板-帮助中心详情页
* @author:      张静
* @date        2018.02.26
* ---------------------------------------------------------------------------*/
var templet_isSubmiting=false;

//是否评价过该条数据,默认未评价
var isHave = "2";

//初始化满意度数据
getZanCounts(channelId, metadataId);

//获取满意度数据
function getZanCounts(channelid, metadataId) {

    if (!isEmpty(channelid) && !isEmpty(metadataId)) {
        $.ajax({
            type: "GET",
            url: "/interaction-service/solveReply/getZanCounts?metadataId=" + metadataId + "&channelId=" + channelid,
            dataType: "json",
            async: true,
            success_cb: function (data) {
                var contdata = data.data;
                if (data.isSuccess) {

                    var nzan = contdata.nzan;
                    var yzan = contdata.yzan;
                    if (nzan == null || yzan == null) {
                        nzan = 0;
                        yzan = 0;
                    }
                    $("#js_manyi span").text(yzan);
                    $("#js_bumanyi span").text(nzan);

                }

            }
        });
    }
}
//是否登录获取满意度
if (istrsidssdssotoken()) {
    checkLogWtSalve(channelId, metadataId);

} else {
    checkNotLogWtSalve(channelId, metadataId);
}

//满意手型按钮点击事件
$("#js_manyi").click(function () {
    if (isHave == "1") {
        globalShade2("您已发表过意见！", 2, 2000);
        return;
    }
    if($("#js_bumanyi").hasClass("active")||$("#js_manyi").hasClass("active")){
        globalShade2("您已发表过意见！", 2, 2000);
        return;
    }
    if (!$(this).hasClass("active")) {
        $(this).addClass("active");
    }else {
        globalShade2("您已发表过意见！", 2, 2000);
        return;
    }
//未登录
    if (istrsidssdssotoken()) {
        saveLogWtSalve("1", channelId, metadataId, "");
    } else {
        saveNotLogWtSalve("1", channelId, metadataId, "");
    }

});

//问题解答满意度服务“不满意手型”按钮点击事件
$("#js_bumanyi").click(function () {
    if($("#js_bumanyi").hasClass("active")||$("#js_manyi").hasClass("active")){
        globalShade2("您已发表过意见！", 2, 2000);
        return;
    }

    if (isHave == "1") {
        globalShade2("您已发表过意见！", 2, 2000);
        return;
    } else if ($(this).hasClass("active")) {
        globalShade2("您已发表过意见！", 2, 2000);
        return;
    } else {
        $(".js_problem_wrap").addClass("active");
        $(".js_hate_wrap").removeClass("active");
    }

});


//未登录查询用户是否评价过
function checkNotLogWtSalve(channelid, metadataId) {

    if (!isEmpty(channelid) && !isEmpty(metadataId)) {
        $.ajax({
            type: "GET",
            url: "/interaction-service/solveReply/checkNotLogWtSalve?metadataId=" + metadataId + "&channelId=" + channelid,
            dataType: "json",
            async: true,
            success: function (data) {
                var contdata = data.data;
                if (data.isSuccess) {
                    isHave = contdata.isHave; //是否评价过
                    var isSolve = contdata.isSolve; //是否满意
                    if (isHave == "1") {
                        if (isSolve == "1") {
                            $("#js_manyi").addClass("active");
                        }

                        if (isSolve == "0") {
                            $("#js_bumanyi").addClass("active");
                        }
                    }


                }

            }
        });
    }
}

//已登录查询用户是否评价过
function checkLogWtSalve(channelid, metadataId) {

    if (!isEmpty(channelid) && !isEmpty(metadataId)) {
        $.ajax({
            type: "GET",
            url: "/interaction-service/solveReply/checkLogWtSalve?metadataId=" + metadataId + "&channelId=" + channelid,
            dataType: "json",
            async: true,
            success: function (data) {
                var contdata = data.data;
                if (data.isSuccess) {

                    isHave = contdata.isHave;
                    var isSolve = contdata.isSolve;
                    if (isHave == "1") {
                        if (isSolve == "1") {
                            $("#js_manyi").addClass("active");
                        }

                        if (isSolve == "0") {
                            $("#js_bumanyi").addClass("active");
                        }
                    }


                }

            }
        });
    }
}

//未登录提交问题解答满意度数据
function saveNotLogWtSalve(isSolve, channelid, metadataId, unSolveContent) {

    if (!isEmpty(channelid) && !isEmpty(metadataId)) {
        var date = {
            "isSolve": isSolve,
            "channelId": channelid,
            "metadataId": metadataId,
            "unSolveContent": unSolveContent
        };
        $.ajax({
            url: "/interaction-service/solveReply/saveNotLogWtSalve/",
            data: JSON.stringify(date),
            applicationType: true,
            success: function (data) {
                var contdata = data.data;
                if (data.isSuccess) {

                    var nzan = contdata.nzan;
                    var yzan = contdata.yzan;
                    if (nzan == null || yzan == null) {
                        nzan = 0;
                        yzan = 0;
                    }
                    $("#js_manyi span").text(yzan);
                    $("#js_bumanyi span").text(nzan);
                    globalShade2("感谢您的反馈！", 1, 2000);

                } else {
                    globalShade2(data.resultMsg, 2, 2000);
                }

            }
        });
    }
}

//已登录提交问题解答满意度数据
function saveLogWtSalve(isSolve, channelid, metadataId, unSolveContent) {

    if (!isEmpty(channelid) && !isEmpty(metadataId)) {
        var date = {
            "isSolve": isSolve,
            "channelId": channelid,
            "metadataId": metadataId,
            "unSolveContent": unSolveContent
        };
        $.ajax({
            url: "/interaction-service/solveReply/saveLogWtSalve/",
            data: JSON.stringify(date),
            applicationType: true,
            csrf: true,
            login:true,
            success: function (data) {
                var contdata = data.data;
                if (data.isSuccess) {

                    var nzan = contdata.nzan;
                    var yzan = contdata.yzan;
                    if (nzan == null || yzan == null) {
                        nzan = 0;
                        yzan = 0;
                    }
                    $("#js_manyi span").text(yzan);
                    $("#js_bumanyi span").text(nzan);
                    globalShade2("感谢您的反馈！", 1, 2000);

                } else {
                    globalShade2(data.resultMsg, 2, 2000);
                }

            }
        });
    }
}
$(".js_close").click(function() {
    $(".js_textarea_consult").blur().css("border-color", "#ccc");
    $(".js_textarea_consult").css("color","#ccc");
    $(".js_problem_wrap").removeClass("active");
    $(".js_hate_wrap").addClass("active");
    demo.resetForm(); //重置表单
    $(".js_textarea_consult").val("我们将不断改进，为您提供更优质的服务");
    $(".Validform_checktip").html(""); //重置提示信息
})
//表单验证
$("body").click(function() {
    if($(".js_textarea_msg").hasClass("Validform_right")) {
        $(".js_textarea_msg").html("");
    }
})
var demo = $(".js_popup_validForm").Validform({
    tiptype: 3,
    label: ".label",
    showAllError: true,
    datatype: {
        "phone": /^1[3|4|5|7|8][0-9]{9}$/
    },
    btnSubmit: '.js_submit_consult',
    callback: function(form) {
        if($(".js_textarea_msg").hasClass("Validform_right")) {
            $(".js_textarea_msg").html("");
        }
        //表单验证
        if($(".js_textarea_consult").val() == "我们将不断改进，为您提供更优质的服务" ||$(".js_textarea_consult").val() == "" ||$(".js_textarea_consult").val() == null ||typeof($(".js_textarea_consult").val()) == "undefined") {
            $(".js_textarea_msg").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_textarea_msg").html("<i class='iconfont icon-information-solid'></i>请输入不满意的原因");
        }else{
            //“不满意提交表单”按钮点击事件
            var unSolveContent = $(".js_textarea_consult").val();
            if (istrsidssdssotoken()) {
                saveLogWtSalve("0", channelId, metadataId, unSolveContent);
            } else {
                saveNotLogWtSalve("0", channelId, metadataId, unSolveContent);
            }
            $("#js_bumanyi").addClass("active");
            $(".js_close").click();
        }




        return false; //最后加上这个，这个必须写
    },
});


