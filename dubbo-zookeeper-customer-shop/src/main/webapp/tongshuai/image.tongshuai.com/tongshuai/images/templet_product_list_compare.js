//对比============================================开始

$(function () {
    //添加对比产品监听事件
    addCompareOnclick();


    //缓存初始化
    setTimeout(function(){initCookie()},100);
    setTimeout(function(){initLoadCookie()},100);

})
//当前路径
var currentUrlName = "";
//产品集合
var proObjList = "";
//缓存对象
var proCookie = "";
//创建一个数组
var arrayMetaDataId = new Array();

//总对比按钮
compareButtonOnclick();
deleteAllCompareItem();
//添加对比按钮监听事件
function addCompareOnclick() {

    //添加对比商品监听事件
    $('.js_compareAddProduct').on('click', function () {
        $thisObj = $(this);
        var auto = $thisObj.attr("auto");
        if (auto == "0") {
            add_compare_flyOut_item($thisObj);
            return;
        } else if (auto == "1") {
            remove_compare_fLayout_item($thisObj.attr("id"));
            //return;
            $(this).removeClass("uncontrast");
            $(this).attr("auto", "0");
            $(this).find(".pro-read-font").html("对比");
            //$(this).find("i").removeClass("o-close").addClass("o-plus");
            //如果是已经对比的取消对比
        }

    });
}

//加载页面或者检索完毕以后初始化cookie
function initCookie() {
    //获取url
    currentUrlName = currentUrl.substring(currentUrl.lastIndexOf("/") + 1);
    //如果不是产品详情对比页
    if (currentUrlName.indexOf("product_compare") == -1) {
        //读取产品品类表名
        var proTypeTable = $.cookie('leaderProTypeTable');
        if (proTypeTable != null) {
            if (proTypeTable != _tableName || _tableName.length == 0) {
                //如果cookie中存放的表名和js获取的表名不一致 就置空数据cookie
                $.cookie('leaderProCookie', null, {path: '/', expires: -1});
                $.cookie('leaderProCookie', null);
            }
        }
        //初始化存产品品类表名cookie
        $.cookie('leaderProTypeTable', _tableName, {path: '/'});
        //获取数据cookie
        proCookie = $.cookie('leaderProCookie');
        //如果数据cookie中数据
        if (proCookie != null) {

            //解析，其实里边有最多4个的数据详情
            proObjList = JSON.parse(proCookie);
            var pType = "";
            for (var i = 0; i < proObjList.length; i++) {
                //进页面以后循环将cookie里边保存的产品添加到页面上
                var product = proObjList[i];
                $("#" + product.id).attr("auto", "1");
                $("#" + product.id).addClass("uncontrast");
                $("#" + product.id).find(".pro-read-font").html("已对比");
                // $("#" + product.id).find("i").removeClass("o-plus").addClass("o-close");
                pType = product.channelid;
            }

        } else {
            proObjList = [];
            //对比按钮样式
            $(".uncontrast").find(".pro-read-font").html("对比");
            //$(".uncontrast").find("i").removeClass("o-close").addClass("o-plus");
            $(".uncontrast").attr("auto","0");
            $(".uncontrast").removeClass("uncontrast");

        }
    }
}
//初始化绘制对比浮层数据
function initLoadCookie() {
    //读取浮层里边内容应该是没有
    var compareHtml = "";
    //因为初始化cookie中将proObjlist这个添加 所以在这直接使用
    if (proObjList != null) {
        if (proObjList.length > 0) {
            for (var i = proObjList.length-1; i >= 0; i--) {
                var product = proObjList[i];
                compareHtml += '<li class="o_u o_df_1-5">' +
                    '<div class="compare-product-img" id="' + product.id + '" data-chanid="' + product.channelid + '">' +
                    '<a href="'+product.url+'"><img src="' + product.img + '"></a>' +
                    '</div>' +
                    '<div class="compare-product-info">' +
                    ' <a href="'+product.url+'"><p>' + product.title + '</p>' +
                    '<p class="leaveout">' + product.desc + '</p></a>' +
                    '<span>'+ product.price + '</span>' +
                    '</div>' +
                    ' <i class="iconfont icon-close compare-close js_compareClose"></i>' +
                    '</li>';
            }
            showCompareFlow();
            showCompareFlowLayout();
            $('.js_compareBox').prepend(compareHtml);
            //删除对比选项监听
            deleteCompareItem();
            //deleteAllCompareItem();
        } else {
            hideCompareFlow();
            //删除对比选项监听
            deleteCompareItem();
            //deleteAllCompareItem();
        }
    }
}

window.unchecked = function ($obj) {
    //对比按钮样式
    $obj.attr("auto", "0");
    $obj.removeClass("uncontrast");
    $obj.find(".pro-read-font").html("对比");
    //$obj.find("i").removeClass("o-close").addClass("o-plus");
}

//将添加对比的产品绘制在浮层上
window.add_compare_flyOut_item = function ($obj) {

    if (currentUrlName.indexOf("product_compare") == -1) {

        var $list = $('.js_compareBox');
        var count = $list.find('.compare-product-img').length;
        if (count >= 4) {
            alert("最多只能选择4款产品！");
            return ;
        }

        if (proObjList.length >= 4) {
            alert("最多只能选择4款产品！");
            return ;
        }

        //判断是否重复数据
        proCookie = $.cookie('leaderProCookie');
        //选自的产品id
        var id = $obj.attr('id');
        //如果数据cookie中数据
        if (proCookie != null) {
            //解析，其实里边有最多4个的数据详情
            proObjList = JSON.parse(proCookie);
            var pType = "";
            for (var i = 0; i < proObjList.length; i++) {
                //进页面以后循环将cookie里边保存的产品添加到页面上
                var product = proObjList[i];
                $("#" + product.id).attr("auto", "1");
                $("#" + product.id).addClass("uncontrast");
                $("#" + product.id).find(".pro-read-font").html("已对比");
                if(product.id == id){
                    alert("产品已存在对比栏，请选择其他产品");
                    return;
                }
            }

        }

        //如果是没有对比的对比
        $obj.addClass("uncontrast");
        $obj.attr("auto", "1");
        $obj.find(".pro-read-font").html("已对比");
        //$(this).find("i").removeClass("o-plus").addClass("o-close");
        //显示对比栏
        showCompareFlow();
        showCompareFlowLayout();

        //加入商品对比列表的模板,

        var proImg = $obj.attr('data-thumb');
        var proTitle = $obj.attr('data-name');
        var proDesc = $obj.attr('data-type');
        var proUrl = $obj.attr('data-link');
        var channelId = $obj.attr('data-chnid');
        var price = $.trim($obj.parent().parent().find(".pro-info-price").text()).replace(/\s+/g, "");

        var compareHtml = '<li class="o_u o_df_1-5">' +
            '<div class="compare-product-img" id="' + id + '" data-chanid="' + channelId + '">' +
            '<a href="'+proUrl+'"><img src="' + proImg + '"></a>' +
            '</div>' +
            '<div class="compare-product-info">' +
            ' <a href="'+proUrl+'"><p>' + proTitle + '</p>' +
            '<p class="leaveout">' + proDesc + '</p></a>' +
            '<span>' + price + '</span>' +
            '</div>' +
            ' <i class="iconfont icon-close compare-close js_compareClose"></i>' +
            '</li>';

        $list.prepend(compareHtml);
        //把选择的对比产品存入cookie
        var proObj = new Object();
        proObj.id = id;
        proObj.img = proImg;
        proObj.title = proTitle;
        proObj.url = proUrl;
        proObj.desc = proDesc;
        proObj.channelid = channelId;
        proObj.price = price;
        proObjList.push(proObj);
        var objString = JSON.stringify(proObjList);
        $.cookie('leaderProCookie', objString, {path: '/'});

        //总对比按钮
        //删除对比选项监听
        deleteCompareItem();
        return true;
    }
}

//移除对比
window.remove_compare_fLayout_item = function (id) {

    var $list = $('.js_compareBox');


    $list.find('li').each(function () {
        var $this_col = $(this);
        var col_id = $this_col.children('.compare-product-img').attr('id');
        if (col_id == id && id != undefined) {
            $this_col.remove();
            unchecked($("#"+col_id));
            //删除cookie里面的相应数据
            for (var i = 0; i < proObjList.length; i++) {
                var obj = proObjList[i];
                if (obj.id == id) {
                    proObjList = remove(proObjList, "id", id);
                }
            }
            var objString = JSON.stringify(proObjList);
            $.cookie('leaderProCookie', objString, {path: '/'});
            /**
             * 是否最后一个对比产品
             */
            if(proObjList.length<=0){
                hideCompareFlow();
            }
            isLastCompareProduct();
            return false;
        }

    });

};
//移除
function remove(arrPerson, objPropery, objValue) {
    return $.grep(arrPerson, function (cur, i) {
        return cur[objPropery] != objValue;
    });
}


//对比按钮监听事件
function compareButtonOnclick() {
    //对比按钮添加监听事件
    $(".compareButton").click(function () {

        var selected_length = $(".js_compareBox").find('.compare-product-img').length;
        if (selected_length <= 0) {
            alert('您尚未选择需要对比的产品。');
        } else if (selected_length < 2) {
            alert('您必须至少选择两件产品才能进行对比。');
        } else {
            /* 生成跳转链接并跳转到对比页 $(this).attr("data-backUrl")*/
            var backUrl = currentUrl ;
            //存返回路径cookie
            $.cookie('backUrl', backUrl, {path: '/'});
            var vURL = '';
            var vStr = '';
            vURL = backUrl;
            vURL = vURL.substring(0, vURL.lastIndexOf("/"));
            var channelId = "";

            $(".js_compareBox").find('li').each(function () {
                var $col = jQuery(this);
                var proId = $col.children('.compare-product-img').attr('id');
                if(proId!=undefined){
                    channelId = $col.children('.compare-product-img').attr('data-chanid');
                    var j = arrayMetaDataId.length;
                    arrayMetaDataId[j] = proId;
                }

            });
            //不会超过4个，因为点击比较按钮时超过4个就屏蔽其它比较按钮了
            for (var i = 0; i < arrayMetaDataId.length; i++) {
                if (arrayMetaDataId[i] != '' && arrayMetaDataId[i] != null) {
                    //截取掉存储的metaDataId_top后面的_top
                    var ids = arrayMetaDataId[i] + "";
                    if (ids.lastIndexOf("_top") != -1) {//id后缀有_top
                        ids = ids.substring(8, ids.lastIndexOf("_top"));
                    }
                    vStr = vStr + ids + '_';
                }
            }
            if (vStr != '') {
                vStr = vStr.substring(0, vStr.length - 1);
                if (_tableName == "leader_rqrsq" || _tableName == "leader_drsq" || _tableName == "leader_xyyj" || _tableName == "leader_rqz" || _tableName == "leader_kx" || _tableName == "leader_cofmachine" || _tableName == "leader_micro" || _tableName == "leader_micro" || _tableName == "leader_dishwasher") {
                    //如果是特殊的几个栏目就做截取到父栏目
                    vURL = vURL.substring(0, vURL.lastIndexOf("/"));
                } else if (vURL.indexOf("maternal_and_child") >= 0 && vURL.length >= 50) {
                    //如果是育婴家电的几个栏目就做截取到父栏目
                    vURL = vURL.substring(0, vURL.lastIndexOf("/"));
                }
                vURL = vURL + '/compare.shtml?productId=' + vStr + '&channelId=' + chnlid_owner;
            } else {
                vURL = window.location.href;
            }
            arrayMetaDataId.length = 0;
            window.location.href = vURL;
            return false;
        }
    });
}


//删除单个对比产品监听事件
function deleteCompareItem() {
    //删除单个对比产品
    $('.js_compareClose.compare-close.icon-close').on('click', function () {
        //商品对象,
        //$thisObj = $(this);
        var id = $(this).siblings(".compare-product-img").attr('id');
        remove_compare_fLayout_item(id);
    });
}
//删除所有个对比产品监听事件
function deleteAllCompareItem() {
    //清空对比栏
    $('.link-clear.js_compareClose').on('click', function () {
        $('.js_compareBox').find("li").find(".compare-product-img").each(function (i, n) {
            $(this).parent().remove();
            unchecked($("#"+$(this).attr('id')));
        });
        proObjList=[];
        $.cookie('leaderProCookie', null, {path : '/'});
        //判断是否最后一个对比产品
        isLastCompareProduct();
    });
}

//显示对比浮层
function showCompareFlowLayout(){
    $('.js_compareBox').show();
    $('.js_compareBoxShow').attr('data-show', 1);
    $('.js_compareBoxShow').html('隐藏<i class="iconfont icon-arrow-line-down"></i>');
}
//隐藏对比浮层
function hideCompareFlowLayout(){
    $('.js_compareBox').hide();
    $('.js_compareBoxShow').attr('data-show', 0);
    $('.js_compareBoxShow').html('展开<i class="iconfont icon-arrow-line-up"></i>');
}


//总显示对比浮层
function showCompareFlow(){
    $('.prolist-compare').show();
}
//总隐藏对比浮层
function hideCompareFlow(){
    $('.prolist-compare').hide();
}

/**
 * 判断是否最后一个对比产品
 *
 */
function isLastCompareProduct(){
    var $list = $('.js_compareBox');
    if ($list.find('li').length <= 1) {
        hideCompareFlow();
    }
}