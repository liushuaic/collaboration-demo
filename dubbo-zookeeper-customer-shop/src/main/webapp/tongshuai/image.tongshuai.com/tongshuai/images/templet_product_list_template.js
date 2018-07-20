/*-----------------------------------------------------------------------------
* @Description:  模板-产品列表页
* @author:      张静
* @date        2017.11.07
* ---------------------------------------------------------------------------*/
var templet_isSubmiting=false;
var templet_isSubmiting_del=false;

//无产品时绘制页面结构
var templet_listNum=$(".prolist-con").find(".prolist-box").length;//产品个数
if(templet_listNum==0){
    $(".prolist-con").append('<div class="o_g prdouct-search-zanwu"><p>抱歉，没有找到相关的产品</p></div>');
}
//判断当前tab标签
function cur(){
    $(".js_proNameBox").find("a").each(function(){//pc
        var channelid=$(this).attr("channelid");
        if(channelid==chnlid_owner){//是当前栏目 设置样式
            $(this).addClass("active");
        }else{//不为当前栏目移除样式
            $(this).removeClass("active");
        }
    });
    $(".js_proNameBox2").find("a").each(function(){//移动
        var channelid=$(this).attr("channelid");
        if(channelid==chnlid_owner){//是当前栏目 设置样式
            $(this).addClass("active");
        }else{//不为当前栏目移除样式
            $(this).removeClass("active");
        }
    });

}

//重新绘制价格
/*$(".js_minPrice").each(function(){
    var templet_price=$(this).attr("sku_value");
    if(templet_price==''||templet_price==null){
        $(this).css('display','none');//没有价格隐藏
    }else{
        $(this).find("span").text(readJsonString(templet_price));
    }

})*/

//价格转化获取最小值
/*function readJsonString(templet_price){
    var minPrice = 0;
    var jsonObj = eval('(' + templet_price + ')');
    if(jsonObj != null && jsonObj!="" && jsonObj.length>0){
        var currentPrice = 0;
        for(var i=0;i<jsonObj.length;i++){

            currentPrice = jsonObj[i].salePrice;
            if(i==0){
                minPrice=currentPrice;
            }else if(parseInt(minPrice)>parseInt(currentPrice)){
                minPrice = currentPrice;
            }
        }
    }
    return minPrice;
}*/
//判断精选推荐有无数据
var templet_recommend=$(".js_recommend").find("a").length;
if(templet_recommend==0){
    $(".product-recommend").hide();
}else if(templet_recommend<4){
    $(".js_recomChange").hide();
}

//精选推荐手机端添加class
recomAddClass();
function recomAddClass(){
    $(".js_recommend").find('a').eq(0).removeClass("o_df-hide");
    $(".js_recommend").find('a').eq(1).removeClass("o_df-hide");
    $(".js_recommend").find('a').eq(2).removeClass("o_df-hide").addClass("o_md-hide o_sm-hide o_xs-hide");
    $(".js_recommend").find('a').eq(3).removeClass("o_df-hide").addClass("o_lg-hide o_md-hide o_sm-hide o_xs-hide");
}

//精选推荐切换

$('.js_recomChange').click(function(){
    $.ajax({
        type: "get",
        dataType:"json",
        url: template_url+"recommend.json",
        data: "",
        success_cb: function(data){
            if(data.length>4) {
                $(".js_recommend").html('');
                var recommendData="";
                var chooseArray=[];
                for (var j = 0; j < 4; j++) {
                    while (true) {
                        var random = Math.round(Math.random() * (data.length - 2));
                        if (!chooseArray[random]) {
                            break;
                        }
                    }
                    chooseArray[random] = true;
                    var pname = data[random].pname;
                    var modelno = data[random].modelno;
                    var dochref = data[random].dochref;
                    var pic = data[random].pic;
                    var sku_value = data[random].sku_value;
                    var price = data[random].price;
                    /*var minPrice = 0;
                    if (sku_value != null && sku_value != "" && sku_value.length > 0) {
                        var currentPrice = 0;
                        for (var i = 0; i < sku_value.length; i++) {

                            currentPrice = sku_value[i].salePrice;
                            if (i == 0) {
                                minPrice = currentPrice;
                            } else if (parseInt(minPrice) > parseInt(currentPrice)) {
                                minPrice = currentPrice;
                            }
                        }
                    }*/
                    recommendData += '<a class="o_u o_df_1-4 o_lg_1-3 o_md_1-2 o_sm_1-2 o_xs_1-2 o_df-hide" href="' + dochref + '">';
                    recommendData += '<img src="' + pic + '"/>';
                    recommendData += '<div class="recommend-pro-info">';
                    recommendData += '<span class="pro-info-title">' + pname + '</span>';
                    recommendData += '<span class="pro-info-type">' + modelno + '</span>';
                    recommendData += '<span class="pro-info-price js_minPrice">￥<span>' + price + '</span></span>';
                    recommendData += '</div></a>';

                }
                $(".js_recommend").html(recommendData);
                recomAddClass();
            }
        }
    });
})


/*start 列表页收藏 zj20180309*/

if(istrsidssdssotoken()){  //已登录
    $(".js_prolistBox").find(".js_collectBox").each(function () {
        var $this=$(this);
        $this.mouseenter(function(){
            $this.find(".js_listCollect").off("click");
            var data={
                "productId":$this.find(".js_listCollect").attr("data-productId"),
            }
            $.ajax({
                type: "get",
                url: siteConfig.domain+"/hshop-user/front/collection/findIsCollection",
                data: data,
                //applicationType: true,
                login:true,
                csrf: true,
                success_cb: function(returnData){
                    if(returnData.isSuccess){ //商品未被收藏
                        $this.find(".js_listCollect .pro-read-font").text("收藏");
                        $this.find(".js_listCollect").on("click",function(){ //点击添加收藏
                            addCollect($this) //添加收藏方法
                        });

                    }else{ //商品已被收藏
                        $this.find(".js_listCollect .pro-read-font").text("已收藏");
                        var recId=returnData.data[0].recId;  //已收藏数据id

                        $this.find(".js_listCollect").on("click",function(){ //点击删除收藏
                            leaderConfirm.open({
                                info: "确定取消收藏？", //提示信息
                                ele: $(this), //传递对象
                                callbackFn: function (ele) { //确认后执行方法
                                    delCollect(recId,$this)//删除的方法
                                },
                            });

                        })

                    }
                }
            });
        })
    })
}

//添加收藏
function addCollect($this){
    if(templet_isSubmiting){//正在提交
        globalShade2('正在提交，请稍后','3');
        return;
    }

    var isPhone=""
    if (document.body.offsetWidth >= 1200) {
        isPhone = 1; //pc
    }else{
        isPhone = 0; //移动
    }
    var addData={
        "isPhone": isPhone,
        "productCategory": $this.find(".js_listCollect").attr("data-channelName"),
        "productId": $this.find(".js_listCollect").attr("data-productId"),
        "productSn": $this.find(".js_listCollect").attr("data-mdm"),
    }
    templet_isSubmiting=true;
    $.ajax({
        type: "post",
        url: siteConfig.domain + "/hshop-user/front/collection/save",
        data:JSON.stringify(addData),
        applicationType: true,
        login: true,
        csrf: true,
        success_cb: function (returnDelData) {
            if (returnDelData.isSuccess) {
                $this.find(".js_listCollect .pro-read-font").text("已收藏"); //修改删除收藏的产品按钮内容
                globalShade2("产品收藏成功",1,2000);
                $this.mouseenter();
                templet_isSubmiting=false;
            }else{
                globalShade2("产品收藏失败,请稍后重试...", 2, 2000);
                templet_isSubmiting=false;
            }
        }
    })
}
//删除已收藏
function delCollect(recId,$this){
    if(templet_isSubmiting_del){//正在提交
        globalShade2('正在提交，请稍后','3');
        return;
    }
    templet_isSubmiting_del=true;
    var data={
        "recId":recId,
    }
    $.ajax({
        type: "get",
        url: siteConfig.domain + "/hshop-user/front/collection/deleteSubscribe",
        data: data,
        login: true,
        csrf: true,
        success_cb: function (returnDelData) {
            if (returnDelData.isSuccess) {
                $this.find(".js_listCollect .pro-read-font").text("收藏"); //修改删除收藏的产品按钮内容
                $this.mouseenter();
                templet_isSubmiting_del=false;
            }else{
                globalShade2("移除收藏失败,请稍后重试...", 2, 2000);
                templet_isSubmiting_del=false;
            }
        }
    })
}

//未登录
$(".js_listCollect").on("click",function(){
    if(!istrsidssdssotoken()){
        showLoginBombBox();
    }
});





/*end 列表页收藏*/





