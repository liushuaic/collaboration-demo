<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/18
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册 - 迷糊官网</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.min.js"></script>
<!-- 引入EasyUI -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.easyui.min.js"></script>
<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/util-js.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui"/>
    <meta name="format-detection" content="telephone=no, email=no"/>
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/images/iconfont.css">
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/images/l_base.css">
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/images/l_module.css">

    <script type="text/javascript">
        // 站点服务配置
        var siteConfig = {
            domain: "http://www.tongshuai.com",
            userUrl: "http://user.tongshuai.com"
        };

    </script>
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/images/registration.css">
</head>

<body>
<div class="o_body">
    <div class="o_main">
        <div class="reg_bg_left o_df-show o_lg-hide o_md-hide o_sm-hide o_xs-hide">
            <img src="http://image.tongshuai.com/images/reg_bg_left1.jpg"/>
        </div>
        <div class="reg_bg_left o_df-hide o_lg-show">
            <img src="http://image.tongshuai.com/images/reg_bg_left2.jpg"/>
        </div>
        <div class="reg_bg_right o_df-show o_md-hide o_sm-hide o_xs-hide">
            <img src="http://image.tongshuai.com/images/reg_bg_right.jpg"/>
        </div>
        <div class="o_g register_height">
            <div class="reg">
                <div class="reg-conbox">
                    <div class="">
                        <div class="reg-box">
                            <div class="reg-login o_md-hide o_sm-hide o_xs-hide">
                                <span>已经注册，</span><a
                                    href="http://user.tongshuai.com/ids/ts/login.jsp?regFrom=tongshuai&returnUrl=http://www.tongshuai.com/air_conditioners/">立即登录</a>
                            </div>
                            <div class="o_g">
                                <div class="o_u o_df_2-2 reg-con">
                                    <div class="reg-tab o_md-hide o_sm-hide o_xs-hide">
                                        <div class="reg-float">
                                            <div class="l-float">
                                                <span class="js_regType_float">使用邮箱注册</span>
                                                <i></i>
                                            </div>
                                        </div>
                                        <a class="reg-shade js_regType" data-reg=1></a>
                                        <i class="iconfont icon-mail js_regType_tab"></i>
                                    </div>
                                   <div><img src="<%=request.getContextPath()%>/images/mih.png"></div>
                                    <div class="reg-tit js_regType_tit">手机注册</div>
                                    <!-- 手机号注册begin -->
                                    <div class="reg-form js_regType_phone">
                                        <form id="zhuce_form">
                                        <div class="reg-input">
                                            <div class="l-input">
                                                <input type="text" name="username"  ph="请输入常用手机号" maxlength="11"
                                                       id="phoneid" onblur="phoneshijian()" onfocus="huode()"/>
                                                <p class="Validform_checktip" id="mobile_error"></p>
                                                <span id="sp1"></span>
                                            </div>
                                        </div>
                                        <div class="reg-input">
                                            <div class="l-input">
                                                <input type="text" name="password" maxlength="16" ph="6-16位数字、字母或符号的组合"  id="phonepwd" onblur="pwd()" onfocus="foupwd()"/>
                                                <input type="password" name="password" class="o_df-hide" ph="" maxlength="16" id="mobilePwd"/>
                                                <p class="Validform_checktip" id="mobilePwd_error"></p>
                                                <span id="sp2"></span>
                                            </div>
                                        </div>
                                        <div class="reg-input o_df-hide">
                                            <div class="l-input o_borderbox">
                                                <input type="text" class="o_borderbox" name="" ph="图形验证码"
                                                       maxlength="4" id="mobileSysCode"/>
                                                <a href="javascript:;" class="exchange">换一换</a>
                                                <a href="javascript:;" class="l-btn-sm l-btn-red l-btn-disable code">
                                                    <img src="" id="mobileVerifyCode"/>
                                                </a>
                                                <p class="Validform_checktip" id="mobileSysCode_error"></p>
                                            </div>
                                        </div>
                                        <div class="reg-input">
                                            <div class="l-input">
                                                <input type="text" name="" ph="短信验证码" maxlength="6"/>
                                                <a href="javascript:duanxin()" class="easyui-linkbutton" style="height: 35px"><font color="red">发送验证短信</font></a>
                                                <p class="Validform_checktip" id="mobileCode_error"></p>
                                            </div>
                                        </div>
                                        <a onclick="zhucea()">注册</a>

                                        <a href="javascript:;"
                                           class="l-btn-lg l-btn-line1 o_df-hide o_md-show o_sm-show o_xs-show reg-btn-line js_regType"
                                           data-reg=1>使用邮箱注册</a>
                                        <div class="reg-info">
                                            点击"注册"，即表示您同意并愿意遵守<br><a href="http://www.tongshuai.com/RegServiceTerms/" target="_Blank">《迷糊用户注册协议》</a>和
                                            <a href="http://account.haier.com/html/privacypolicy.html" target="_Blank">《隐私政策》</a>
                                        </div>
                                        <div class="reg-login-bottom o_df-hide o_md-show o_sm-show o_xs-show">
                                            <span>已经注册，<a href="http://user.tongshuai.com/ids/ts/login.jsp?regFrom=tongshuai&returnUrl=http://www.tongshuai.com/air_conditioners/">立即登录</a></span>
                                        </div>
                                        </form>
                                    </div>
                                    <!-- 手机号注册end -->
                                    <!-- 邮件注册begin -->
                                    <div class="reg-form js_regType_email" style="display: none;">
                                        <div class="reg-input">
                                            <div class="l-input">
                                                <input type="text" name="username" ph="请输入常用邮箱" maxlength="40"
                                                       id="email"/>
                                                <i class="iconfont icon-member"></i>
                                                <p class="Validform_checktip" id="email_error"></p>
                                            </div>
                                        </div>
                                        <div class="reg-input">
                                            <div class="l-input">
                                                <input type="text" name="password" ph="6-16位数字、字母或符号的组合" maxlength="16" id="emailPwd2"/>
                                                <input type="password" name="password" class="o_df-hide" maxlength="16" id="emailPwd"/>
                                                <i class="iconfont icon-eye-close-solid js_passwordSwitch_email"></i>
                                                <p class="Validform_checktip" id="emailPwd_error"></p>
                                            </div>
                                        </div>
                                        <div class="reg-input">
                                            <div class="l-input o_borderbox">
                                                <input type="text" class="o_borderbox" name="" ph="图形验证码"
                                                       maxlength="4" id="emailSysCode"/>
                                                <a href="javascript:;" class="exchange">换一换</a>
                                                <a href="javascript:;" class="l-btn-sm l-btn-red l-btn-disable code">
                                                    <img src="" id="emailVerifyCode"/>
                                                </a>
                                                <p class="Validform_checktip" id="emailSysCode_error"></p>
                                            </div>
                                        </div>
                                        <!--<div class="reg-input">
                                            <div class="l-input">
                                                <input type="text" name="password" ph="邮箱验证码" maxlength="16"
                                                       id="emailCode"/>
                                                <a href="javascript:;" id="emailSendCodeBtn"
                                                   class="l-btn-sm l-btn-red l-btn-disable">发送验证邮件</a>
                                                <p class="Validform_checktip" id="emailCode_error"></p>
                                            </div>
                                        </div>-->
                                        <a href="javascript:;" id="emailRegBtn"
                                           class="l-btn-lg l-btn-red l-btn-disable reg-btn">注册</a>
                                        <a href="javascript:;"
                                           class="l-btn-lg l-btn-line1 o_df-hide o_md-show o_sm-show o_xs-show reg-btn-line js_regType"
                                           data-reg=0>使用手机注册</a>
                                        <div class="reg-info">
                                            点击"注册"，即表示您同意并愿意遵守<br>
                                            <a href="http://www.tongshuai.com/RegServiceTerms/ " target="_Blank">《迷糊用户注册协议》</a>和
                                            <a href="http://account.haier.com/html/privacypolicy.html" target="_Blank">《隐私政策》</a>
                                        </div>
                                        <div class="reg-login-bottom o_df-hide o_md-show o_sm-show o_xs-show">
                                            <span>已经注册，<a href="http://user.tongshuai.com/ids/ts/login.jsp?regFrom=tongshuai&returnUrl=http://www.tongshuai.com/air_conditioners/">立即登录</a></span>
                                        </div>
                                    </div>
                                    <!-- 邮件注册end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="o_u o_df_2-2 reg_footer">
                <div class="o_g login_footer">
                    <div class="o_u o_df_1-12"></div>
                    <div class="o_u o_df_4-12 o_xs_2-2 o_sm_2-2 o_md_2-2">
                        <a class="footer-link" href="http://www.tongshuai.com">首页</a>
                        <span class="footer-line"></span>
                        <a class="footer-link" href="http://www.tongshuai.com/service/help/">帮助中心</a>
                        <span class="footer-line"></span>
                        <a class="footer-link" href="http://www.tongshuai.com/contact/">联系我们</a>
                        <span class="footer-line"></span>
                        <a class="footer-link" href="http://www.tongshuai.com/terms_conditions/">法律声明</a>
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
<script type="text/javascript" src="http://image.tongshuai.com/images/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/jquery.cookie.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_obox.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_module.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/l_base.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/validform_v5.3.2_min.js"></script>
<script type="text/javascript">
    function phoneshijian(){
       var arr = $("#phoneid").val();
        var yz = /^[1][3-9][0-9]{9}$/;
        if(yz.test(arr)){
            return true
        }else{
           $("#sp1").html("<font color='red'>手机号码格式不正确 请重新输入</font>");
           return false;
        }
    }
    function huode(){
        $("#sp1").html("");
    }

    function pwd(){
       var arr = $("#phonepwd").val();
       var stt = /^\w{6,16}$/
        if(arr.length<6){
            $("#sp2").html("<font color='red'>密码太短啦，还不到6位呢</font>");
            return false;
        }else if(arr.length>16){
            $("#sp2").html("<font color='red'>密码太长啦，已经超过16位啦!记不住啦！</font>");
            return false;
        }
        if(stt.test(arr)){
           return true;
        }else{
          $("#sp2").html("<font color='red'>密码须为6-16位，数字、字母或符号的组合</font>");
        }
    }
    function foupwd(){
        $("#sp2").html("");
    }

    function duanxin(){
        $.ajax({
            url:"<%=request.getContextPath()%>/lsController/message.jhtml",
            data : {phone : $("#phoneid").val()},
            type : "post",
            success : function(result) {
            }
        })
    }

</script>

<script id="_trs_ta_js" src="//net.haier.com/c/js/ta.js?mpid=1112&cPrefix=ta.trs.cn/c" async="async" defer="defer"></script>

<script id="_trs_glc_js_" src="//c.haier.com/trscookie/images/trs_cookie.js" data-mpId="37" defer="defer"></script>


<script type="text/javascript" src="http://image.tongshuai.com/images/registration.js"></script>
<script type="text/javascript" src="/ids/ts/reg.js"></script>
<script type="text/javascript">
    var returnUrl = 'http://www.tongshuai.com/air_conditioners/';
    var regFrom = 'tongshuai';
    var wxAppName = 'tongshuai';
    var openId = '';
    var wxId = '';
    var loginUrl = 'http://user.tongshuai.com/ids/ts/login.jsp?regFrom=tongshuai&returnUrl=http://www.tongshuai.com/air_conditioners/';
    var regFromUrl = 'http://www.tongshuai.com/air_conditioners/';
    var IDSEXT_EXTRALABEL = '';
</script>
</body>
</html>
