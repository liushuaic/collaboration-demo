<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018\7\21 0021
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset=utf-8"UTF-8">
    <title>登录 - 统帅官网</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui"/>
    <meta name="format-detection" content="telephone=no, email=no"/>
    <link rel="stylesheet" type="text/css" href="../image.tongshuai.com/images/iconfont.css" tppabs="http://image.tongshuai.com/images/iconfont.css">
    <link rel="stylesheet" type="text/css" href="../image.tongshuai.com/images/l_base.css" tppabs="http://image.tongshuai.com/images/l_base.css">
    <link rel="stylesheet" type="text/css" href="../image.tongshuai.com/images/l_module.css" tppabs="http://image.tongshuai.com/images/l_module.css">

    <script type="text/javascript">
        // 站点服务配置
        var siteConfig = {
            domain: "http://www.tongshuai.com/",
            userUrl: "http://user.tongshuai.com/"
        };

    </script>
    <link rel="stylesheet" type="text/css" href="../image.tongshuai.com/images/login.css" tppabs="http://image.tongshuai.com/images/login.css">
</head>

<body>
<div class="o_body">
    <div class="o_main">
        <div class="login_bg_left o_df-show o_md-hide o_sm-hide o_xs-hide">
            <img src="../image.tongshuai.com/images/login_bg_df.png" tppabs="http://image.tongshuai.com/images/login_bg_df.png"/>
        </div>
        <div class="login_bg_left o_df-hide o_md-show">
            <img src="../image.tongshuai.com/images/login_bg_df.png" tppabs="http://image.tongshuai.com/images/login_bg_df.png"/>
        </div>
        <div class="o_g login_height">
            <div class="login">
                <div class="login-conbox">
                    <div class="o_u o_df_2-3 o_lg_5-6 o_md_5-6 o_sm_2-2 o_xs_2-2">
                        <div class="login-box js_center">
                            <div class="o_g">
                                <div class="o_u o_df_1-2 login_bg">
                                    <img src="..//image.tongshuai.com/images/login_bg.jpg" tppabs="http://image.tongshuai.com/images/login_bg.jpg"/>
                                </div>
                                <div class="o_u o_df_1-2 o_md_2-2 o_sm_2-2 o_xs_2-2 login-con">
                                    <div class="logon-tab o_md-hide o_sm-hide o_xs-hide">
                                        <a class="login-shade js_loginType" data-login=1></a>
                                        <i class="iconfont icon-phone js_loginType_tab"></i>
                                        <!-- <i class="iconfont icon-computer"></i> -->
                                    </div>
                                    <a href="javascript:if(confirm('http://www.tongshuai.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.tongshuai.com/'" tppabs="http://www.tongshuai.com/">
                                        <div class="login-logo"></div>
                                    </a>
                                    <div class="login-tit js_loginType_tit">登录统帅</div>
                                    <div class="login-form js_loginType_pc">
                                        <form id="login_form_id">
                                        <div class="l-input login-input">
                                            <input type="text" name="username" ph="手机号 / 邮箱 / 用户名"
                                                   id="loginName" maxlength="40"/>
                                            <i class="iconfont icon-member"></i>
                                            <p class="Validform_checktip" id="loginName_error"></p>
                                        </div>
                                        <div class="l-input login-input">
                                            <input type="password" name="password" ph="密码"
                                                   id="pwd" maxlength="16"/>
                                            <i class="iconfont icon-lock-solid"></i>
                                            <p class="Validform_checktip" id="pwd_error"></p>
                                        </div>
                                        <div class="l-input login-input o_borderbox o_df-hide">
                                            <input type="text" class="o_borderbox" name="" ph="图形验证码" maxlength="4"
                                                   id="sysCode"/>
                                            <a href="javascript:;" class="exchange" id="exchange">换一换</a>
                                            <a href="javascript:;" class="l-btn-sm l-btn-red l-btn-disable code">
                                                <img src="" id="verifyCode"/>
                                            </a>
                                            <p class="Validform_checktip" id="sysCode_error"></p>
                                        </div>
                                        <div class="login-role">
                                                <span>
                                                  <input class="js_checkbox" type="checkbox" checked="true"
                                                         data-notnull="true" value="2周内免登录" id="twoWeeksLogin">
                                                </span>
                                            <i class="iconfont icon-problem-solid l-fr"></i>
                                            <a class="forget-psw l-fr"
                                               href="javascript:if(confirm('http://user.tongshuai.com/ids/ts/password_find.jsp?regFrom=tongshuai&returnUrl=http://www.tongshuai.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���Ѿ���վ���������ų���������ų���·����ַ��(��ϵͳ�� Teleport Ultra �����ǿ�ѡ��; �μ���Ŀ����, �������ǡ�)  \n\n�����ڷ������ϴ���?'))window.location='http://user.tongshuai.com/ids/ts/password_find.jsp?regFrom=tongshuai&returnUrl=http://www.tongshuai.com/'" tppabs="http://user.tongshuai.com/ids/ts/password_find.jsp?regFrom=tongshuai&returnUrl=http://www.tongshuai.com/">忘记密码</a>
                                            <p class="Validform_checktip"></p>
                                        </div>
                                        <a href="javascript:;" class="l-btn-lg l-btn-red l-btn-disable login-btn"
                                           id="login">登录</a>
                                        <a href="javascript:;"
                                           class="l-btn-lg l-btn-line1 o_df-hide o_md-show o_sm-show o_xs-show login-btn-line js_loginType"
                                           data-login=1>使用动态密码登录</a>
                                        <div class="login-reg">
                                            <a href="<%=request.getContextPath()%>/tongshuai/user.tongshuai.com/reg.jsp">立即注册</a>
                                        </div>
                                        </form>
                                    </div>
                                    <div class="login-form js_loginType_phone" style='display:none'>
                                        <div class="l-input login-input">
                                            <input type="text" name="username" ph="手机号" id="mobile" maxlength="11"/>
                                            <i class="iconfont icon-phone-solid"></i>

                                            <p class="Validform_checktip" id="mobile_error"></p>
                                        </div>
                                        <div class="l-input login-input">
                                            <input type="text" name="" ph="图形验证码"
                                                   maxlength="4" id="sysCode2"/>
                                            <a href="javascript:;" class="exchange" id="exchange2">换一换</a>
                                            <a href="javascript:;" class="l-btn-sm l-btn-red l-btn-disable code">
                                                <img src="" id="verifyCode2"/>
                                            </a>
                                            <p class="Validform_checktip" id="sysCode2_error"></p>
                                        </div>
                                        <div class="l-input login-input">
                                            <input type="text" name="password" ph="动态密码" id="mobileCode" maxlength="6"/>
                                            <a href="javascript:;" class="l-btn-sm l-btn-red l-btn-disable"
                                               id="sendCodeBtn">发送动态密码</a>
                                            <p class="Validform_checktip" id="mobileCode_error"></p>
                                        </div>
                                        <div class="login-role">&nbsp;</div>
                                        <a href="javascript:;" class="l-btn-lg l-btn-red l-btn-disable login-btn"
                                           id="loginBtn2">登录</a>
                                        <a href="javascript:;"
                                           class="l-btn-lg l-btn-line1 o_df-hide o_md-show o_sm-show o_xs-show login-btn-line js_loginType"
                                           data-login=1>使用账号密码登录</a>
                                        <div class="login-reg">
                                            <a href="<%=request.getContextPath()%>/tongshuai/user.tongshuai.com/reg.jsp">立即注册</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="o_u o_df_2-2 login_footer-box">
                <div class="o_g login_footer">
                    <div class="o_u o_df_1-12"></div>
                    <div class="o_u o_df_4-12 o_xs_2-2 o_sm_2-2 o_md_2-2">
                        <a class="footer-link" href="javascript:if(confirm('http://www.tongshuai.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.tongshuai.com/'" tppabs="http://www.tongshuai.com/">首页</a>
                        <span class="footer-line"></span>
                        <a class="footer-link" href="javascript:if(confirm('http://www.tongshuai.com/service/help/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.tongshuai.com/service/help/'" tppabs="http://www.tongshuai.com/service/help/">帮助中心</a>
                        <span class="footer-line"></span>
                        <a class="footer-link" href="javascript:if(confirm('http://www.tongshuai.com/contact/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.tongshuai.com/contact/'" tppabs="http://www.tongshuai.com/contact/">联系我们</a>
                        <span class="footer-line"></span>
                        <a class="footer-link" href="javascript:if(confirm('http://www.tongshuai.com/terms_conditions/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.tongshuai.com/terms_conditions/'" tppabs="http://www.tongshuai.com/terms_conditions/">法律声明</a>
                    </div>
                    <div class="o_u o_df_6-12 o_xs_2-2 o_sm_2-2 o_md_2-2 footer-info">
                        <span class="footer-link footer-mar0">Copyright &copy; 2017 Haier Group Leader.<br class="o_df-hide o_xs-show"/> All rights reserved 鲁ICP备09096283</span>
                    </div>
                    <div class="o_u o_df_1-12"></div>
                </div>
            </div>
        </div>

    </div>
</div>
<script type="text/javascript" src="../image.tongshuai.com/images/jquery-1.8.3.min.js" tppabs="http://image.tongshuai.com/images/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../image.tongshuai.com/images/jquery.cookie.js" tppabs="http://image.tongshuai.com/images/jquery.cookie.js"></script>
<script type="text/javascript" src="../image.tongshuai.com/images/l_obox.js" tppabs="http://image.tongshuai.com/images/l_obox.js"></script>
<script type="text/javascript" src="../image.tongshuai.com/images/l_module.js" tppabs="http://image.tongshuai.com/images/l_module.js"></script>
<script type="text/javascript" src="../image.tongshuai.com/images/l_base.js" tppabs="http://image.tongshuai.com/images/l_base.js"></script>
<script type="text/javascript" src="../image.tongshuai.com/images/validform_v5.3.2_min.js" tppabs="http://image.tongshuai.com/images/validform_v5.3.2_min.js"></script>
<script type="text/javascript">

    $("#login").click(function(){

        $.ajax({
            url: '<%=request.getContextPath()%>/lsController/login.jhtml',
            type: 'post',
            data: $("#login_form_id").serialize(),
            async: true,
            success: function (msg) {
             alert(msg);
                 if(msg==2){
                     location.href="../www.tongshuai.com/life/index.jsp";
                 }
            }
        })

    })

    /**
     * 非空校验
     */
    function isNull(value) {
        if ("" != value && 'null' != value && null != value && typeof(value) != "undefined") {
            return false;
        } else {
            return true;
        }
    }
    /**
     * 判断格式是否正确
     * @param type
     * @param value
     * @returns {boolean}
     */
    function checkFormatIsRight(type, value) {
        var result = false;
        if ("mobile" == type) {
            var mobile_regexp = /^[1][3-9][0-9]{9}$/ ;
            if (mobile_regexp.test(value)) {
                result = true;
            }
        } else {
            var email_regexp = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            if (email_regexp.test(value)) {
                result = true;
            }
        }
        return result;
    }
    //验证密码格式正确性
    function checkPwdFormat(_sPwd) {
        var result = "200";
        if (_sPwd.length < 6) {
            //密码长度小于6
            result = "密码太短啦，还不到6位呢！";
            return result;
        } else if (_sPwd.length > 16) {
            //密码长度大于16
            result = "密码太长啦，已经超过16位啦！";
            return result;
        }
        var regqj = /[^\x00-\xff]/;   //[^\x00-\xff]全角字符   //[\u4e00-\u9fa5]汉字
        var regchina = /^[\u2E80-\uFE4F]+$/;
        var space = /[ ]/g;
        var str = _sPwd;
        if (regchina.test(str) || regqj.test(str) || space.test(str)) {
            result = "全角、中文、空格是不能用在密码中的~";
            return result;
        }
        var reghasNum = /[0-9]+/;
        var reghasABC = /[a-zA-Z]+/;
        var reghasXXX = /[_`~!@#$%^&*()+=|{}':;',\[\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]+/;
        var flag = 0;

        if (reghasNum.test(str)) {
            flag++;
        }
        if (reghasABC.test(str)) {
            flag++;
        }
        if (reghasXXX.test(str)) {
            flag++;
        }
        if (flag < 2) {
            result = "密码须为6-16位，数字、字母或符号的组合";
        }
        return result;
    }
</script>

<script id="_trs_ta_js" src="../net.haier.com/c/js/ta.js-mpid=1112&cPrefix=ta.trs.cn-c" tppabs="http://net.haier.com/c/js/ta.js?mpid=1112&cPrefix=ta.trs.cn/c" async="async" defer="defer"></script>

<script id="_trs_glc_js_" src="../c.haier.com/trscookie/images/trs_cookie.js" tppabs="http://c.haier.com/trscookie/images/trs_cookie.js" data-mpId="37" defer="defer"></script>


<div class="o_g footer_cookie js_footer_cookie o_df-hide">
    <div class="bottom_cookie_text">
        <img src="../image.tongshuai.com/images/cookies_pic.png" tppabs="http://image.tongshuai.com/images/cookies_pic.png">
        <div class="bottom_box">
            本网站会使用Cookies以提升您的访问体验。如继续浏览本网站，则表示您同意我们使用Cookies。更多Cookies政策请见本网站的<a href="javascript:if(confirm('http://account.haier.com/html/privacypolicy.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://account.haier.com/html/privacypolicy.html'" tppabs="http://account.haier.com/html/privacypolicy.html" target="_blank" class="go_open">隐私权政策</a>。
            <div class="bottom_cookie_button">
                <a href="javascript:;" class="l-btn-sm l-btn-line2 js_cookies_confirm">确定</a>
            </div>
        </div>
    </div>
</div>
<script>
    $(function() {
        var cookieVal = getCookie('authorize');
        if (cookieVal) {
            $(".js_footer_cookie").addClass("o_df-hide");
        } else {
            $(".js_footer_cookie").removeClass("o_df-hide");
        }

        $(".js_cookies_confirm").on('click', function () {//按钮
            $(".js_footer_cookie").addClass("o_df-hide");
            setCookie('authorize','1');
            $.ajax({
                type: "post",
                url: siteConfig.domain + "/interaction-service/userCookieInfo/saveInfo"
            });
        })
        //cookie方法
        function setCookie(cookieName,value){//设置cookie时间
            var liveDate = new Date();
            liveDate.setTime(liveDate.getTime() + 100 * 365 * 24 * 60 * 60);
            document.cookie=cookieName+"="+value+";path=/;domain=tongshuai.com;expires="+liveDate.toGMTString();
        }

        function getCookie(name){//获取cookie
            var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
            if(arr=document.cookie.match(reg))
                return unescape(arr[2]);
            else
                return null;
        }
    });
</script>
<script type="text/javascript" src="../image.tongshuai.com/images/validform_v5.3.2_min.js" tppabs="http://image.tongshuai.com/images/validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="../image.tongshuai.com/images/login.js" tppabs="http://image.tongshuai.com/images/login.js"></script>
<script type="text/javascript" src="login.js" tppabs="http://user.tongshuai.com/ids/ts/login.js"></script>
<script type="text/javascript">
    var returnUrl = 'http://www.tongshuai.com/';
    var regFrom = 'tongshuai';
    var wxAppName = 'tongshuai';
    var openId = '';
    var wxId = '';
</script>
</body>
</html>
