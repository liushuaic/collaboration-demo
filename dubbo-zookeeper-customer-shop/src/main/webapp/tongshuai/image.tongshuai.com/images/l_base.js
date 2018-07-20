//a:hover伪类在ios移动端浏览器内无效
document.body.addEventListener&&document.body.addEventListener('touchstart',function(){});
/**
 * ajax初始化
 */
jQuery.ajaxSetup({
    type: "post",
    dataType: "json",
    cache: false,
    box_obj: null,
    scroll: null,
    beforeSend: function(request) {
        //需要登录校验，且用户未登录
        if (this.login && !istrsidssdssotoken()) {
            request.abort();
            jumpToLoginPage();
        }
        //csrf校验
        if(this.csrf){
            var crm = Math.random();
            //判断语句，用于本地测试，请勿提交测试或生产
            if(window.location.host.indexOf('localhost')>=0){
                crm = '123';
            }
            // var urlDomain = this.url.
            $.cookie('crm', crm,{
                'path':'/',
                'domain':'http://image.tongshuai.com/images/.tongshuai.com'
            });
            if(this.url.indexOf('?')>=0){
                this.url = this.url+'&cch='+crm;
            }else{
                this.url = this.url+'?cch='+crm;
            }
        }
	
        //contentType: "application/json; charset=utf-8",
        if (this.applicationType){
            request.setRequestHeader("Content-Type", "application/json; charset=utf-8")
        }
    },
    success: function(data) {
        if (data.isSuccess != undefined && istrsidssdssotoken()) {
            if (!data.isSuccess) {

            }
        }

        if (this.success_cb) {
            this.success_cb(data);
        }
    },
    complete:function(XMLHttpRequest, textStatus){
        //csrf校验-删除cookie
        if(this.csrf){
            $.cookie('crm', null,{
                'path':'/',
                'domain':'http://image.tongshuai.com/images/.tongshuai.com'
            });;
        }
    },
    error: function(jqXHR, textStatus, errorThrown) {
        if(this.login && jqXHR.status==401){
            jumpToLoginPage();
        }
        if (this.error_cb) {
            this.error_cb(jqXHR, textStatus, errorThrown);
        }
    }
});
/**
 *  公共服务
 */
var leaderServer = {
    //根据ip地址获取用户地址
    getIpAddress: function(){
        return $.ajax({
            // url: siteConfig.domain + '/interaction-service/regionInfo/defaultRegion',
            url: '/interaction-service/regionInfo/defaultRegion',
            type:'get',
            success_cb:function(data){
                return data
            },
            error_cb:function(data){
                return false;
            }
        });
    },
    // 转换地址
    regionInfo: function(data) {
        return $.ajax({
            type: "get",
            // url: siteConfig.domain + '/interaction-service/regionInfo/regionInfo',
            url: '/interaction-service/regionInfo/regionInfo',
            dataType:"json",
            data: data,
            success_cb: function(address){
                return address
            }
        })
    }
    
};

$(function () {
    $(window).resize(function () {
        init();
    });

    init();

    function init() {
        var screenWidth = document.body.offsetWidth;
        if (screenWidth <= 700) {
            $('.js_footLink').hide();
            $(".js_footmenuShow").removeClass('icon-close').addClass('icon-plus');
        } else {
            $('.js_footLink').show();
            $('.js_footLink').removeClass('link_border');
        }
    }

    /**
     * 产品页-公共尾部 链接
     */
    $('.js_footLindBtn').on('click', 'a', function () {
        var $ele = $(this).parent().siblings($('.js_footLink'));
        $ele.toggle();
        $ele.toggleClass('link_border');
    });
    // 展示底部导航菜单
    $('.js_footLindBtn').on('click', 'a', function () {
        if ($(this).hasClass('icon-plus')) {
            $(this).removeClass('icon-plus').addClass('icon-close');
            // $('.js_navMdShow').show();
        } else {
            $(this).removeClass('icon-close').addClass('icon-plus');
            // $('.js_navMdShow').hide();
        }
    });

    /**
     * 导航逻辑
     */
    //底导航图片懒加载
    if($('.js_imgLazyLoading').size()<=0){
        $('.js_footImgLazy').lazyImg(1000);
    }    

    //导航栏目显示隐藏
    $('.js_column').on('hover', function () {
        var index = parseInt($(this).attr('column'));
        $('.js_column_show').hide();
        $('.js_column_show').eq(index).show();
        //导航栏图片懒加载
        $('.js_column_show').lazyImg(0);
        $('.js_navMdboxSecond').lazyImg(0);
    });
    $('.js_column_show').on('mouseleave', function () {
        $(this).hide();
    });

    //导航hover效果，展示细线
    $('.js_hoverLine').hover(function(){
        $(this).append('<div class="js_hoverLineRed" style="position:absolute;z-index:11;bottom:-1;height:1px;background:#e60012;"></div>');
        $('.js_hoverLineRed').animate({width: '100%'}, 1500);
    },function(){
        $('.js_hoverLineRed').remove();
    });

    //搜索历史
    // $('.js_searchHistory').bind('input propertychange', function () {
    //     var screenWidth = document.body.offsetWidth;
    //     if ($(this).val()) {
    //         if (screenWidth > 1199) {
    //             $('.js_searchBox_xl').show();
    //         } else {
    //             $('.js_searchBox_lg').show();
    //         }
    //         $('.js_searchBoxQuick_lg').hide();
    //     } else {
    //         $('.js_searchBox').hide();
    //         $('.js_searchBoxQuick_lg').show();
    //     }
    // }).on('blur', function () {
    //     $('.js_searchBox').hide();
    //     $('.js_searchBoxQuick_lg').show();
    // }).on('focus', function () {
    //     if ($(this).val()) {
    //         if (screenWidth > 1199) {
    //             $('.js_searchBox_xl').show();
    //         } else {
    //             $('.js_searchBox_lg').show();
    //         }
    //         $('.js_searchBoxQuick_lg').hide();
    //     }
    // });

    //隐藏搜索历史浮层-隐藏用户消息浮层xs
    $('body').on('click', function (e) {
        if(!$(e.target).hasClass('js_userMsgXs')){
            $('.js_usermsg_xs').hide();
        }
        //搜索历史浮层点击按钮确认
        if($(e.target).hasClass('js_searchHistory') || $(e.target).hasClass('js_delete_history')){
            return false;
        }
        $('.js_searchBox').removeClass('o_lg-show').removeClass('o_md-show').removeClass('o_sm-show').removeClass('o_xs-show');
        $('.js_searchBox').hide();
        $('.js_searchBoxQuick_lg').show();

    });

    //搜索--lg
    // $('.js_search_lg').on('click', function () {
    //  $('.js_menuShow').removeClass('icon-close').addClass('icon-menu');
    //  $('.js_navMdShow').hide();
    //     $('.js_navSearchLgHide')
    //         .removeClass('o_lg-show')
    //         .removeClass('o_md-show')
    //         .removeClass('o_sm-show')
    //         .removeClass('o_xs-show');
    //     $('.js_navSearchLgHide').hide();
    //     $('.js_navSearchLg')
    //         .addClass('o_lg-show')
    //         .addClass('o_md-show')
    //         .addClass('o_sm-show')
    //         .addClass('o_xs-show');
    //     $('.js_navSearchLg').show();
    // });

    //关闭搜索
    // $('.js_navSearchClose').on('click', function () {
    //
    //     $('.js_navSearchLg')
    //         .removeClass('o_lg-show')
    //         .removeClass('o_md-show')
    //         .removeClass('o_sm-show')
    //         .removeClass('o_xs-show');
    //     $('.js_navSearchLg').hide();
    //
    //     $('.js_navSearchLgHide')
    //         .addClass('o_lg-show')
    //         .addClass('o_md-show')
    //         .addClass('o_sm-show')
    //         .addClass('o_xs-show');
    //     $('.js_navSearchLgHide').show();
    //     $('.js_navSearchLgHide.js_ignore').removeClass('o_lg-show').hide();
    //
    // });

    //展示导航菜单
    $('.js_menuShow').on('click', function () {
        if ($(this).hasClass('icon-menu')) {
            $(this).removeClass('icon-menu').addClass('icon-close');
            $('.js_navMdShow').show();
        } else {
            $(this).removeClass('icon-close').addClass('icon-menu');
            $('.js_navMdShow').hide();
        }
    });

    //移动端，点击轻产品，展示二级菜单 ms sm xs
    $('.js_nav-md').on('click',function(){
        if($(this).attr('data-show')==1){
            $(this).siblings('.js_navMdboxSecond').show();
            $(this).attr('data-show',0).find('i').removeClass('icon-plus').addClass('icon-minus');
            //导航栏图片懒加载
            $('.js_column_show').lazyImg(0);
            $('.js_navMdboxSecond').lazyImg(0);
        }else{
            $(this).siblings('.js_navMdboxSecond').hide();
            $(this).attr('data-show',1).find('i').removeClass('icon-minus').addClass('icon-plus');
        }
        
    });

    //xs分辨率，展示用户消息列表
    $('.js_userMsgXs').on('click',function(){
        if(document.body.offsetWidth<=575){
            $('.js_usermsg_xs').show();
        }
    });

    userLoginStatus();

});

//加载导航头的登录状态
function userLoginStatus() {
    var regFrom = "tongshuai";
    var screenWidth = document.body.offsetWidth;
    if (screenWidth < 1120) {
        regFrom = "tsmobile";
    }
    var returnUrl = window.location.href;
    //var ehaier=$.cookie("EHaierSSOToken");//商城的cookie
    var trsidssdssotoken = "ssotoken";//同域Cookie
    var sdssotoken = $.cookie(trsidssdssotoken);
    if (sdssotoken != null && sdssotoken != '') {
        var loginUserName = "tongshuaiuser";//当前登录用户
        var ck_loginUserName = $.cookie(loginUserName);
        if (ck_loginUserName != null && ck_loginUserName != '') {
            var logusername = subHZString(ck_loginUserName, 7, '...');
            //从cookie中读取当前登录用户
            //$("#header_loginDiv .login span").before(logusername);
            $("#header_loginDiv .login").prepend(logusername);
            $("#header_logoutDiv,#header_logoutA").addClass("o_df-hide");
            $("#header_loginDiv,#header_loginDiv2").removeClass("o_df-hide");
            $("#header_logout,#header_logout2,#header_logout3").attr("href", siteConfig.userUrl+"/ids/ts/logout.jsp?regFrom=" + regFrom + "&returnUrl=" + returnUrl)

            getUserHeadImg();//获取头像
            getUserMag();//显示消息
        } else {
            //同域cookie存在，但是 haieruser 没有取出值，去请求haier_ssosession.jsp获取当前登录用户
            var surl = "http://image.tongshuai.com/ids/ts/ssosession.jsp";
            $.ajax({
                type: "post",
                dataType: "text",
                url: surl,
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                },
                success: function (returnData) {
                    if ($.trim(returnData).length > 0) {
                        var loginUser = $.trim(returnData);
                        var logusername = subHZString(loginUser, 7, '...');
                        //从cookie中读取当前登录用户
                        //$("#header_loginDiv .login span").before(logusername);
                        $("#header_loginDiv .login").prepend(logusername);
                        $("#header_logoutDiv,#header_logoutA").addClass("o_df-hide");
                        $("#header_loginDiv,#header_loginDiv2").removeClass("o_df-hide");
                        $("#header_logout,#header_logout2 ,#header_logout3").attr("href", siteConfig.userUrl+"/ids/ts/logout.jsp?regFrom=" + regFrom + "&returnUrl=" + returnUrl)

                        getUserHeadImg();//获取头像
                        getUserMag();//显示消息
                    } else {
                        // if (window.innerWidth == undefined || window.innerWidth >= 768) {
                        //     if (returnUrl.indexOf("http://image.tongshuai.com/images/club.casarte.com") > -1) {
                        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarteclub&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarteclub";
                        //     } else if (returnUrl.indexOf("http://image.tongshuai.com/images/www.casarte.com") > -1) {
                        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte";
                        //     } else {
                        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte";
                        //     }
                        //     $("#bflog").find('a:eq(1)').attr("href", loginurl);
                        //     $("#bflog").find('a:eq(2)').attr("href", registerurl);
                        // } else {
                        //     if (returnUrl.indexOf("http://image.tongshuai.com/images/club.casarte.com") > -1) {
                        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=casarteclubmobile&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarteclubmobile";
                        //     } else if (returnUrl.indexOf("http://image.tongshuai.com/images/www.casarte.com") > -1) {
                        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte";
                        //     } else {
                        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
                        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte";
                        //     }
                        //     $("#bflog").find('a:eq(0)').attr("href", loginurl);
                        //     $("#bflog").find('a:eq(2)').attr("href", registerurl);
                        // }
                        // $("#aflog").css("display", "none");
                        // $("#mflog").css("display", "none");
                        // $("#bflog").css("display", "inline-block");

                    }
                }
            });
        }
    } else {
        // if (ehaier != null && ehaier != '') {//商城的cookie
        //     /*0711-修改*/
        //     if (window.innerWidth == undefined || window.innerWidth >= 768) {
        //         if (returnUrl.indexOf("http://image.tongshuai.com/images/club.casarte.com") > -1) {
        //             window.location.href = "http://login.casarte.com/ids/login.jsp?regFrom=casarteclub&returnUrl=" + returnUrl;
        //         } else if (returnUrl.indexOf("http://image.tongshuai.com/images/www.casarte.com") > -1) {
        //             window.location.href = "http://login.casarte.com/ids/login.jsp?regFrom=casarte&returnUrl=" + returnUrl;
        //         } else if (returnUrl.indexOf("http://image.tongshuai.com/images/testuser.casarte.com") > -1) {
        //             window.location.href = "http://testuser.casarte.com/ids/login.jsp?regFrom=casarte&returnUrl=" + returnUrl;
        //         }
        //     } else {
        //         if (returnUrl.indexOf("http://image.tongshuai.com/images/club.casarte.com") > -1) {
        //             window.location.href = "http://login.casarte.com/ids/login.jsp?regFrom=casarteclubmobile&returnUrl=" + returnUrl;
        //         } else if (returnUrl.indexOf("http://image.tongshuai.com/images/www.casarte.com") > -1) {
        //             window.location.href = "http://login.casarte.com/ids/login.jsp?regFrom=camobile&returnUrl=" + returnUrl;
        //         } else if (returnUrl.indexOf("http://image.tongshuai.com/images/testuser.casarte.com") > -1) {
        //             window.location.href = "http://testuser.casarte.com/ids/login.jsp?regFrom=camobile&returnUrl=" + returnUrl;
        //         }
        //     }
        //
        // }
        // if (window.innerWidth == undefined || window.innerWidth >= 768) {
        //     /*0711-修改*/
        //     if (returnUrl.indexOf("http://image.tongshuai.com/images/club.casarte.com") > -1) {
        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarteclub&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarteclub&returnUrl=" + encodeURIComponent(returnUrl);
        //     } else if (returnUrl.indexOf("http://image.tongshuai.com/images/www.casarte.com") > -1) {
        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
        //     } else {
        //         var loginurl = $("#bflog").find('a:eq(1)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarte&returnUrl=" + encodeURIComponent(returnUrl);
        //     }
        //     $("#bflog").find('a:eq(1)').attr("href", loginurl);
        //     $("#bflog").find('a:eq(2)').attr("href", registerurl);
        // } else {
        //     /*0711-修改*/
        //     if (returnUrl.indexOf("http://image.tongshuai.com/images/club.casarte.com") > -1) {
        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=casarteclubmobile&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=casarteclubmobile&returnUrl=" + encodeURIComponent(returnUrl);
        //     } else if (returnUrl.indexOf("http://image.tongshuai.com/images/www.casarte.com") > -1) {
        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
        //     } else {
        //         var loginurl = $("#bflog").find('a:eq(0)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
        //         var registerurl = $("#bflog").find('a:eq(2)').attr("href") + "?regFrom=camobile&returnUrl=" + encodeURIComponent(returnUrl);
        //     }
        //     $("#bflog").find('a:eq(0)').attr("href", loginurl);
        //     $("#bflog").find('a:eq(2)').attr("href", registerurl);
        // }
        // // var loginurl=$("#bflog").find('a:eq(1)').attr("href");
        //
        // $("#bflog").css("display", "inline-block");
        // $("#aflog").css("display", "none");
        // $("#mflog").css("display", "none");

        //监测是否自动登陆
        // var autologin = $.cookie("idsALInfo");
        // if (autologin != null && autologin != '') {
        //     $.ajax({
        //         type: "post",
        //         dataType: "text",
        //         url: "http://image.tongshuai.com/ids/ts/autoLogin.jsp",
        //         error: function (XMLHttpRequest, textStatus, errorThrown) {
        //         },
        //         success: function (returnData) {
        //             userloginstatus();
        //         }
        //     });
        // }
        $("#header_login,#header_logoutDiv .nav-chart,#header_logoutA,.js_nav-chart2").attr("href", siteConfig.userUrl+"/ids/ts/login.jsp?regFrom=" + regFrom + "&returnUrl=" + returnUrl);
        $("#header_reg").attr("href", siteConfig.userUrl+"/ids/ts/reg.jsp?regFrom=" + regFrom + "&returnUrl=" + returnUrl)
    }
}
//导航头_截取字符串，长度以字符为单位
function subHZString(str, len, hasDot) {
    var newLength = 0;
    var newStr = '';
    var chineseRegex = /[^\x00-\xff]/g;
    var singleChar = '';
    var strLength = str.replace(chineseRegex, '**').length;
    for (var i = 0; i < strLength; i++) {
        singleChar = str.charAt(i).toString();
        if (singleChar.match(chineseRegex) != null) {
            newLength += 2;
        } else {
            newLength++;
        }
        if (newLength > len) {
            break;
        }
        newStr += singleChar;
    }

    if (strLength > len) {
        newStr += hasDot;
    }
    return newStr;
}


//时间戳转换日期 时间戳，选格式，时间戳类型
function getLocalTime(nS,val,type) {
    if(type==2)
    {
        var timestamp4 =new Date(parseInt(nS) * 1000);
    }
    else
    {
        var timestamp4 =new Date(parseInt(nS));
    }

    var y = timestamp4.getFullYear();
    var m = timestamp4.getMonth() + 1;
    var d = timestamp4.getDate();
    if(val == 2){
        return y + "." + (m < 10 ? "0" + m : m) + "." + (d < 10 ? "0" + d : d) ;
    }else if(val == 3){
        return y + "/" + (m < 10 ? "0" + m : m) + "/" + (d < 10 ? "0" + d : d) ;
    }else if(val == 4){
        return y + "-" + (m < 10 ? "0" + m : m) + "-" + (d < 10 ? "0" + d : d) ;
    }
    return y + "-" + (m < 10 ? "0" + m : m) + "-" + (d < 10 ? "0" + d : d) + " " + timestamp4.toTimeString().substr(0, 8);

}

//判断当前是否存在同域cookie
function istrsidssdssotoken(){
    var trsidssdssotoken = "ssotoken";//同域Cookie
    var sdssotoken = $.cookie(trsidssdssotoken);
    if(sdssotoken!=null || window.location.host.indexOf('localhost')>=0){
        return true;
    }else{
        return false;
    }
}

//跳转到登录页面
function jumpToLoginPage(){
    var returnUrl = window.location.href;
    if(!istrsidssdssotoken()){
        var returnUrl = window.location.href;
        window.location.href = siteConfig.userUrl+'/ids/ts/login.jsp?returnUrl=' +returnUrl;
    }
}

function getRequest() {
    var url = location.search; //获取url中"?"符后的字串
    var theRequest = new Object();
    if (url.indexOf("?") != -1) {
        var str = url.substr(1);
        strs = str.split("&");
        for (var i = 0; i < strs.length; i++) {
            theRequest[strs[i].split("=")[0]] = decodeURI(strs[i].split("=")[1]);
        }
    }
    return theRequest;
}
//获取当前用户头像
function getUserHeadImg(){
    $.ajax({
        type: "get",
        // url: siteConfig.domain+"/hshop-user/front/user/userInfo/",
        url: "/hshop-user/front/user/userInfo/",
        login:true,
        success_cb: function(data){
            if(data.isSuccess){
                if (jQuery.trim(data).length > 0) {
                    //头像
                    if(data.data.headUrl==null || data.data.headUrl=='' || data.data.headUrl=='null'){
                        $(".js_userMsgXs").prop("src",'user_img.jpg'/*tpa=http://image.tongshuai.com/images/user_img.jpg*/);
                    }
                    else{
                        $(".js_userMsgXs").prop("src",data.data.headUrl);
                    }
                }
            }

        }
    });
}
//用户消息
function getUserMag(){
    $.ajax({
        type: "get",
        url: siteConfig.domain + "/hshop-user/front/myMsgConfig/getCount/",
        login: true,
        success_cb: function (data) {
            if(data.data.unRead>0){
                $('.js_userNews').removeClass('o_df-hide');
            }else{
                $('.js_userNews').addClass('o_df-hide');
            }
        }
    });
}
