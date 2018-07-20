$(function() {
    //用户中心地址
    var userUrl = siteConfig.userUrl;
    //公共头检索WAS频道ID
    var headerChannelId = headerSearch.headerChannelId;
    //全文检索WAS频道ID
    var productChannelId = headerSearch.productChannelId;
    //屏幕宽度
    var screenWidth = document.body.offsetWidth;
    $('.js_searchHistory').css('color','#ccc');

    //非空判断
    function isEmpty(value) {
        if (value == null || value == undefined || value == "") {
            return true;
        }
        return false;
    }

    //过滤掉无法检索的符号
    function filterSymbol(word) {
        if (word != null || word != undefined) {
            word = word.replace(/<[^>]+>/g, "");
        }
        return word;
    }

    //搜索历史
    $('.js_searchHistory').bind('input propertychange', function () {
        if ($.trim($(this).val()) && $(this).val() != "搜索产品、服务、帮助...") {
            if (screenWidth > 1199) {
                $('.js_searchBox_xl').show();
            } else {
                $('.js_searchBox_lg').show();
            }
            $('.js_searchBoxQuick_lg').hide();
            $('.js_quick_search').hide();
            $('.js_searchBox_list_xl').hide();
            $('.js_search_list_bold').show();

            searchBoxWord($(this).val());
        } else {
            $('.js_searchBoxQuick_lg').show();
            $('.js_quick_search').show();
            $('.js_searchBox_list_xl').show();
            $('.js_search_list_bold').hide();
            $('.js_searchBox_list_lg').hide();

            $('.js_searchBox_list_xl').html(searchBoxInput("xl"));
            $('.js_searchBox_list_lg').html(searchBoxInput("lg"));
            deleteHistory();
        }

    }).on('focus', function () {
        if (screenWidth > 1199) {
            $('.js_searchBox_xl').show();
        } else {
            $('.js_searchBox_lg').show();
        }
        $('.js_searchBoxQuick_lg').hide();
        if ($.trim($(this).val()) && $(this).val() != "搜索产品、服务、帮助...") {
            $('.js_quick_search').hide();
            $('.js_searchBox_list_xl').hide();
            $('.js_search_list_bold').show();

            searchBoxWord($(this).val());
        } else {
            $('.js_searchBoxQuick_lg').show();
            $('.js_quick_search').show();
            $('.js_searchBox_list_xl').show();
            $('.js_search_list_bold').hide();
            $('.js_searchBox_list_lg').hide();

            $('.js_searchBox_list_xl').html(searchBoxInput("xl"));
            $('.js_searchBox_list_lg').html(searchBoxInput("lg"));
            deleteHistory();
        }
    });

    $('body').on('click', function (e) {
        if (!$(e.target).hasClass('js_userMsgXs')) {
            $('.js_usermsg_xs').hide();
        }
        //搜索历史浮层点击按钮确认
        if ($(e.target).hasClass('js_searchHistory')) {
            return false;
        }
        $('.js_searchBox').hide();
        $('.js_searchBoxQuick_lg').show();
        $('.js_delete_history').parent().hide();
    });

    //搜索--lg
    $('.js_search_lg').on('click', function () {
         $('.js_menuShow').removeClass('icon-close').addClass('icon-menu');
         $('.js_navMdShow').hide();
        $('.js_navSearchLgHide')
            .removeClass('o_lg-show')
            .removeClass('o_md-show')
            .removeClass('o_sm-show')
            .removeClass('o_xs-show');
        $('.js_navSearchLgHide').hide();
        $('.js_navSearchLg')
            .addClass('o_lg-show')
            .addClass('o_md-show')
            .addClass('o_sm-show')
            .addClass('o_xs-show');
        $('.js_navSearchLg').show();

    });

    //关闭搜索
    $('.js_navSearchClose').on('click', function () {

        $('.js_navSearchLg')
            .removeClass('o_lg-show')
            .removeClass('o_md-show')
            .removeClass('o_sm-show')
            .removeClass('o_xs-show');
        $('.js_navSearchLg').hide();

        $('.js_navSearchLgHide')
            .addClass('o_lg-show')
            .addClass('o_md-show')
            .addClass('o_sm-show')
            .addClass('o_xs-show');
        $('.js_navSearchLgHide').show();
        $('.js_navSearchLgHide.js_ignore').removeClass('o_lg-show').hide();

    });

    //点击搜索按钮全文搜索
    $('.js_jumpto_product_search').on('click', function () {
        jumpToProductSearch();
    });

    //回车键搜索
    $('.js_searchHistory').keydown(function (e) {
        if (e.which == 13) {
            jumpToProductSearch();
        }
    });

    //跳转至全文检索页面
    function jumpToProductSearch() {
        var historyCookie = $.cookie('historyCookie');
        var searchWord;
        if (screenWidth > 1199) {
            searchWord = $.trim($('.js_searchHistory').val());
        } else {
            searchWord = $.trim($('.js_searchHistory_lg').val());
        }

        if (!isEmpty(searchWord) && searchWord != "搜索产品、服务、帮助...") {
            if (isEmpty(historyCookie)) {
                $.cookie('historyCookie', searchWord, {path: '/'});
            } else {
                if (historyCookie.indexOf(",") == -1) {
                    if (historyCookie != searchWord) {
                        historyCookie += "," + searchWord;
                    }
                } else {
                    var historyCookieArr = historyCookie.split(",");
                    if ($.inArray(searchWord, historyCookieArr) == -1) {
                        if (historyCookieArr.length < 5) {
                            historyCookie += "," + searchWord;
                        } else {
                            historyCookieArr.shift();
                            historyCookieArr.push(searchWord);
                            historyCookie = "";
                            for (var i = 0; i < historyCookieArr.length; i++) {
                                historyCookie += "," + historyCookieArr[i];
                            }
                            historyCookie = historyCookie.substring(1);
                        }
                    }
                }
                $.cookie('historyCookie', historyCookie, {path: '/'})
            }
            searchWord = encodeURIComponent(searchWord);
            window.location.href = "http://image.tongshuai.com/was5/web/search?channelid=" + productChannelId + "&searchword=" + searchWord;
        }
    }

    //搜索框浮层检索
    function searchBoxWord(word) {
        var searchWord = filterSymbol(word);
        searchWord = $.trim(searchWord);
        if (!isEmpty(searchWord) && searchWord != "搜索产品、服务、帮助...") {
            searchWord = encodeURIComponent(searchWord);
            $.ajax({
                type: "GET",
                url: "/was5/web/search?channelid=" + headerChannelId + "&searchword=" + searchWord,
                dataType: "html",
                async: true,
                success: function (data) {
                    if (screenWidth > 1199) {
                        $('.js_search_list_bold').html(data);
                    } else {
                        $('.js_searchBox_list_lg').html(data);
                    }
                }
            });
        }
    }

        //搜索框浮层展示
    function searchBoxInput(webSize) {
        var historyCookie = $.cookie("historyCookie");
        historyCookie = filterSymbol(historyCookie);
        var searchBoxHtml = "";

        if (!isEmpty(historyCookie)) {
            $('.js_quick_search').hide();
            $('.js_delete_history').parent().show();
            if (historyCookie.indexOf(",") != -1) {
                var historyCookieArr = historyCookie.split(",");
                for (var i = 0; i < historyCookieArr.length; i++) {
                    searchBoxHtml += '<li><a href="http://image.tongshuai.com/was5/web/search?channelid=' + productChannelId + '&searchword=' + historyCookieArr[i] + '">' + htmlEncode(historyCookieArr[i]) + '</a></li>';
                }
            } else {
                searchBoxHtml = '<li><a href="http://image.tongshuai.com/was5/web/search?channelid=' + productChannelId + '&searchword=' + historyCookie + '">' + htmlEncode(historyCookie) + '</a></li>';
            }
        } else {
            $('.js_delete_history').parent().hide();
            if (webSize == "xl") {
                searchBoxHtml = '<li><a href = "http://image.tongshuai.com/service/installation_and_maintenance">在线报修</a></li>' +
                    // '<li><a href = "http://image.tongshuai.com/images/' + userUrl + '/product_registe">产品注册</a></li>' +
                    '<li><a href = "http://image.tongshuai.com/service/help">帮助中心</a></li>' +
                    '<li><a href = "http://image.tongshuai.com/contact">联系我们</a></li>';
            }
        }
        return searchBoxHtml;
    }

    //清空搜索历史
    function deleteHistory() {
        $(".js_delete_history").off().on('click', function () {
            $.cookie('historyCookie', null, {path: '/'});
        });
    }
    //html转义方法
    function htmlEncode(value) {
        return $('<div/>').text(value).html();
    }

});