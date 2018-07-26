/*-----------------------------------------------------------------------------
* @Description:  模板-个人中心-首页
* @author:      刘悦
* @date        2017.11.15
* ---------------------------------------------------------------------------*/
$(function(){
    var templet_entities;
    var data = {
        "orderBy": "-shangshishijian",
        "pageNo": 1,
        "pageSize": 4
    };

    var windowWidth = $(window).width();
    if(windowWidth<576){
        var recommendBoxWidth = $('.js_memberRecommendBox').width();
        $('.js_memberRecommendTitle').css('width',recommendBoxWidth-103 +'px')
    }
    if(windowWidth>1199){
        var obj={
            'obj':$('.js_memberRecommendTitle>p'),                //需要截取的对象，可以是同一class的多个对象
            'fontSize':'20',                         //截取对象的字体大小
            'lineNub':'2',                          //保留的行数
            'width':$('.js_memberRecommendTitle').width()    //非必填：对象的宽度（如果传入的对象不是动态汇入的此项可省略）
        };

        //调用方法
        textLength(obj)
    }


    $.ajax({
        url: siteConfig.userUrl + "/interaction-search/front/recommendation/list/",
        data: JSON.stringify(data),
        applicationType: true,
        login: true,
        success_cb: function (data) {
            templet_entities = data.data.entities;
            //大于575显示两个 小于575显示一个
            if($(window).width()<=575){
                smallfreshen(templet_entities);
            }else{
                freshenA(templet_entities);
            }
            $('.js-freshen').live('click',function () {
                if($(window).width()<=575){
                    smallfreshen(templet_entities);
                }else{
                    if ($('.js-recommendation').attr('freshen') == 'A') {
                        freshenB(templet_entities);
                        $('.js-recommendation').attr('smallfreshen',0);
                    }
                    else if ($('.js-recommendation').attr('freshen') == 'B') {
                        freshenA(templet_entities);
                        $('.js-recommendation').attr('smallfreshen',2);
                    }
                }
            })
        }
    });

    //绘制数字
    orderListCount();
})

//第一第二个产品(大于575)
function freshenA(templet_entities) {
    $('.js-recommendation').attr('freshen','A');

    var templet_addhtml='';
    var templet_branches=2;
    //如果产品总数小于2
    if(templet_branches>templet_entities.length){
        templet_branches=templet_entities.length;
    }
    for(var i=0;i<templet_branches;i++){
        var templet_docpuburl=templet_entities[i].docpuburl;
        var templet_location=templet_docpuburl.lastIndexOf("\/");
        var templet_picUrl=templet_docpuburl.substring(0,templet_location+1)+templet_entities[i].appfile;
        templet_addhtml+='<div class="o_u o_df_1-2 o_lg_1-2 o_sm_1-2 o_xs_2-2 js_memberRecommendBox js-product">';
        templet_addhtml+='<div class="member-home-down-cont">';
        templet_addhtml+='<a class="o_u " href="'+templet_docpuburl+'">';
        templet_addhtml+='<img src="'+templet_picUrl+'"/></a>';
        templet_addhtml+='<div class="member-home-down-info o_u js_memberRecommendTitle"><a href="'+templet_docpuburl+'"> ';
        templet_addhtml+='<p class="pro-info-title">'+templet_entities[i].pname+'</p>';
        templet_addhtml+='<span class="pro-info-type">'+templet_entities[i].modelno+'</span>';
        templet_addhtml+='<strong>￥'+templet_entities[i].price+'.00</strong></a></div></div></div> ';
    }
    $('.js-recommendation').html(templet_addhtml);

}
//第三第四个产品(大于575)
function freshenB(templet_entities) {
    //如果产品总数小于2就不执行B方法
    if(3>templet_entities.length){
        return;
    }
    $('.js-recommendation').attr('freshen','B');
    var templet_addhtml='';
    for(var i=2;i<templet_entities.length;i++){
        var templet_docpuburl=templet_entities[i].docpuburl;
        var templet_location=templet_docpuburl.lastIndexOf("\/");
        var templet_picUrl=templet_docpuburl.substring(0,templet_location+1)+templet_entities[i].appfile;
        templet_addhtml+='<div class="o_u o_df_1-2 o_lg_1-2 o_sm_1-2 o_xs_2-2 js_memberRecommendBox js-product">';
        templet_addhtml+='<div class="member-home-down-cont">';
        templet_addhtml+='<a class="o_u " href="'+templet_docpuburl+'">';
        templet_addhtml+='<img src="'+templet_picUrl+'"/></a>';
        templet_addhtml+='<div class="member-home-down-info o_u js_memberRecommendTitle"> <a href="'+templet_docpuburl+'">';
        templet_addhtml+='<p class="pro-info-title">'+templet_entities[i].pname+'</p>';
        templet_addhtml+='<span class="pro-info-type">'+templet_entities[i].modelno+'</span>';
        templet_addhtml+='<strong>￥'+templet_entities[i].price+'.00</strong></a></div></div></div> ';
    }
    $('.js-recommendation').html(templet_addhtml);
}

//小于575的时候根据Div里面的smallfreshen来取值
function smallfreshen(templet_entities){
    var templet_count=$('.js-recommendation').attr('smallfreshen')
    var templet_addhtml='';
    var templet_docpuburl=templet_entities[templet_count].docpuburl;
    var templet_location=templet_docpuburl.lastIndexOf("\/");
    var templet_picUrl=templet_docpuburl.substring(0,templet_location+1)+templet_entities[templet_count].appfile;
    templet_addhtml+='<div class="o_u o_df_1-2 o_lg_1-2 o_sm_1-2 o_xs_2-2 js_memberRecommendBox js-product">';
    templet_addhtml+='<div class="member-home-down-cont">';
    templet_addhtml+='<a class="o_u" href="'+templet_docpuburl+'">';
    templet_addhtml+='<img src="'+templet_picUrl+'"/></a>';
    templet_addhtml+='<div class="member-home-down-info o_u js_memberRecommendTitle"><a href="'+templet_docpuburl+'"> ';
    templet_addhtml+='<p class="pro-info-title">'+templet_entities[templet_count].pname+'</p>';
    templet_addhtml+='<span class="pro-info-type">'+templet_entities[templet_count].modelno+'</span>';
    templet_addhtml+='<strong>￥'+templet_entities[templet_count].price+'.00</strong></a></div></div></div> ';
    $('.js-recommendation').html(templet_addhtml);

    templet_count++;
    if(templet_count>=templet_entities.length){
        $('.js-recommendation').attr('smallfreshen',0);
    }else{
        $('.js-recommendation').attr('smallfreshen',templet_count);
    }
}

//绘制标题栏数字
function orderListCount(){
    var templet_datePay={
        "orderStatus":1
    };

    $.ajax({
        url: siteConfig.userUrl + "/buy/order/order-front/list/",
        data: JSON.stringify(templet_datePay),
        applicationType: true,
        login: true,
        success_cb: function (data) {
            if(!data.data.entityCount==0){
                $('.js-countPay').html('<div class="member-home-top-list-nub">'+data.data.entityCount+'</div>');
            }
        }
    })

    var templet_dateReceived={
        "orderStatus":3
    };
    $.ajax({
        url: siteConfig.userUrl + "/buy/order/order-front/list/",
        data: JSON.stringify(templet_dateReceived),
        applicationType: true,
        login: true,
        success_cb: function (data) {
            if(!data.data.entityCount==0){
                $('.js-countReceived').html('<div class="member-home-top-list-nub">'+data.data.entityCount+'</div>');
            }
        }
    })

    var templet_comment={
        "commentStatus":0,
        "pageNo":1,
        "pageSize":1
    };
    $.ajax({
        url: siteConfig.userUrl + "/interaction-comment/comment/orderComment/getOrderListByCommSta/",
        type:"get",
        data: templet_comment,
        login: true,
        success_cb: function (data) {
            if(!data.data.entityCount==0){
                $('.js-countComment').html('<div class="member-home-top-list-nub">'+data.data.entityCount+'</div>');
            }
        }
    });


}


