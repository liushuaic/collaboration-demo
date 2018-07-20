/*-----------------------------------------------------------------------------
* @Description:  模板-帮助中心搜索
* @author:      张静
* @date        2018.03.06
* ---------------------------------------------------------------------------*/

//搜索服务
function serchprInfo(channelid, serchWord, perpage, currentPage) {
    //var serchWord = filterSymbol(serchWord);
    var serchWord = serchWord;
    serchWord = $.trim(serchWord);
    serchWord = serchWord.replace(/\'/g, "\\'");
    if (!isEmpty(serchWord)) {
        serchWord = encodeURIComponent(serchWord);
        $.ajax({
            type: "GET",
            url: "/was5/web/search?channelid=" + channelid + "&searchword=" + serchWord + "&perpage=" + perpage + "&page=" + currentPage,
            dataType: "html",
            async: true,
            success: function (data) {
                $(".js_searchPage").removeClass("serve_help_detail_page").removeClass("serve_help_list_page").removeClass("serve_help_center_page").addClass("serve_help_search_page");//添加搜索页面的class
                $('.js_rightSearch').siblings().remove();//移除右侧的内容
                $(".serve_class a").removeClass("active").removeClass("show");//侧边栏删除class
                $(".serve_class").find(".iconfont").addClass("icon-plus").removeClass("icon-minus");//侧边栏-变+
                $('.js_rightSearch').after(data);
            }
        });
    }
}

//过滤掉无法检索的符号
function filterSymbol(word) {
    if (word != null || word != undefined) {
        word = word.replace(/<[^>]+>/g, "");
    }
    return word;
}

//点击搜索
$("#js_searchBtn").click(function(){
    var searchWord=$("#js_keyword").val();
    if($.trim(searchWord).length == 0|| $.trim(searchWord)=="输入问题关键词"){
        $("#js_keyword").focus();
    }else{
        $(".js_searchText").text("搜索结果"); //搜索页面包屑内容
        $(".js_searchShow").removeClass("o_df-hide");//首页面包屑处理
        serchprInfo(search_help.helpId, searchWord, 15, 1)
    }
})
//回车搜索事件
function etsearch(event){
    var keyCode = event.keyCode?event.keyCode:event.which?event.which:event.charCode;
    if (keyCode ==13){
        var searchWord = $('#js_keyword').val();
        if($.trim(searchWord).length == 0|| $.trim(searchWord)=="输入问题关键词"){
            $("#js_keyword").focus();
        }else{
            $(".js_searchText").text("搜索结果"); //搜索页面包屑内容
            $(".js_searchShow").removeClass("o_df-hide");//首页面包屑处理
            serchprInfo(search_help.helpId, searchWord, 15, 1)
        }

    }
}

//热词点击搜索
$(".js_hotWord").click(function(){
    var searchWord = $(this).text();
    if(searchWord!="" && searchWord!=null){
        $(".js_searchText").text("搜索结果"); //搜索页面包屑内容
        $(".js_searchShow").removeClass("o_df-hide");//首页面包屑处理
        $("#js_keyword").empty();
        $("#js_keyword").val(searchWord);
        serchprInfo(search_help.helpId, searchWord, 15, 1);
    }

})

//非空判断
function isEmpty(value) {
    if (value == null || value == undefined || value == "") {
        return true;
    }
    return false;
}






