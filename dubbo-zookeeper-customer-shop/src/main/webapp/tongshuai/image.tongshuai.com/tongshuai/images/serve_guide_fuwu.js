
$(function() {
    //设置使高度等于宽度
    $(".guide_box img").each(function () {
        $(this).css("height",$(this).css("width"));
    })

    $(window).resize(function () {
        //设置使高度等于宽度
        $(".guide_box img").each(function () {
            $(this).css("height",$(this).css("width"));
        })
    })
})

//清空产品类型下拉框数据及清空下拉框初始化标签
function removeSecondBox() {
    $('#type').html("");
}

//清空产品型号下拉框数据及清空下拉框初始化标签
function removeThirdBox() {
    $('#model').html("");
}

//清空产品展示数据及清空下拉框初始化标签
function removeshuju() {
    $('#shuju').empty();
}

//初始化下拉框产品主类数据
function getMainBox() {
    $.ajax({
        url: "http://image.tongshuai.com/productchannel.json",
        type: 'get',
        dataType: "json",
        async: false,
        success: function (data) {
            //解析多个数值
            $("#select").append("<option value='0'>请选择</option>");
            $("#type").append("<option value='0'>全部类型</option>");
            for (var i = 0; i < data.length; i++) {
                var d = data[i];
                var mainChannel = d.mainChannel;
                var mainChannelID = d.mainChannelID;
                var childChannelLen = d.childChannel.length;
                if (childChannelLen <= 2) {
                    var k = d.childChannel[0];
                    var childID = k.childID;
                    var childName = k.childName;
                    $("#select").append("<option typecount='" + childChannelLen + "' ChannelID='" + childID + "'>" + mainChannel + "</option>");

                } else {
                    var childChannels ="";
                    for(var j=0;j<childChannelLen-1;j++){
                        var k = d.childChannel[j];
                        var childID = k.childID;
                        if(j<childChannelLen-2){
                            childChannels+=" channelId = "+childID+" or ";
                        }else{
                            childChannels+=" channelId = "+childID;
                        }

                    }
                    $("#select").append("<option childChannels='" + childChannels + "' typecount='" + childChannelLen + "' ChannelID='" + mainChannelID + "'>" + mainChannel + "</option>");
                }
            }
        }
    });
}

//获取对应产品主类的类型数据
function getSecondBox(channelID) {
    $.ajax({
        url: "http://image.tongshuai.com/productchannel.json",
        type: 'get',
        dataType: "json",
        async: false,
        success: function (data) {
            //解析多个数值
            $("#type").append("<option value='0'>全部类型</option>");
            for (var i = 0; i < data.length; i++) {
                var d = data[i];
                var mainChannel = d.mainChannel;
                var mainChannelID = d.mainChannelID;
                var childChannelLen = d.childChannel.length;
                if (mainChannelID == channelID && childChannelLen > 2) {
                    for (var j = 0; j < childChannelLen - 1; j++) {
                        var k = d.childChannel[j];
                        var childID = k.childID;
                        var childName = k.childName;
                        $("#type").append("<option prentChannel='" + mainChannel + "' ChannelID='" + childID + "'>" + childName + "</option>");
                    }

                }
            }
        }
    });
}

//获取该产品类型下的型号
function getThirdBox(channelId) {
    var templet_entities;
    var data = {
        "orderBy": "-shangshishijian",
        "pageNo": 1,
        "pageSize": 50,
        "strColumns": "modelno",
        "strWhere": "channelId=" + channelId
    };

    $.ajax({
        url: "/interaction-search/front/recommendation/list/",
        data: JSON.stringify(data),
        applicationType: true,
        success_cb: function (data) {
            templet_entities = data.data.entities;
            var addhtml = '<option value="0">全部型号</option>';
            for (var i = 0; i < templet_entities.length; i++) {
                addhtml += '<option ChannelID="' + channelId + '">' + templet_entities[i].modelno + '</option>';
            }
            $("#model").append(addhtml);
            modelinit.init();
        }
    });

}

