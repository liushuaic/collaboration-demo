<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/7/16
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录 - 迷糊官网</title>

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
    <link rel="stylesheet" type="text/css" href="http://image.tongshuai.com/images/login.css">
</head>

<body>
<div class="o_body">
    <div class="o_main">
        <div class="login_bg_left o_df-show o_md-hide o_sm-hide o_xs-hide">
            <img src="http://image.tongshuai.com/images/login_bg_df.png"/>
        </div>
        <div class="login_bg_left o_df-hide o_md-show">
            <img src="http://image.tongshuai.com/images/login_bg_df.png"/>
        </div>
        <div class="o_g login_height">
            <div class="login">
                <div class="login-conbox">
                    <div class="o_u o_df_2-3 o_lg_5-6 o_md_5-6 o_sm_2-2 o_xs_2-2">
                        <div class="login-box js_center">
                            <div class="o_g">
                                <div class="o_u o_df_1-2 login_bg">
                                    <img src="http://image.tongshuai.com/images/login_bg.jpg"/>
                                </div>
                                <div class="o_u o_df_1-2 o_md_2-2 o_sm_2-2 o_xs_2-2 login-con">
                                    <div class="logon-tab o_md-hide o_sm-hide o_xs-hide">
                                        <a class="login-shade js_loginType" data-login=1></a>
                                        <i class="iconfont icon-phone js_loginType_tab"></i>
                                        <!-- <i class="iconfont icon-computer"></i> -->
                                    </div>
                                    <div><img src="<%=request.getContextPath()%>/images/mih.png"></div>
                                    <div class="login-tit js_loginType_tit">登录迷糊</div>
                                    <div class="login-form js_loginType_pc">
                                        <form id="login_form_id">
                                        <div class="l-input login-input">
                                            <input onfocus="yonghu()" type="text" name="username" ph="手机号 / 邮箱 / 用户名"
                                                   id="loginName" maxlength="40"/>
                                            <i class="iconfont icon-member"></i>
                                            <p class="Validform_checktip" id="loginName_error"></p>
                                        </div>
                                            <br>
                                            <span id="span1"></span><br>
                                        <div class="l-input login-input">
                                            <input onfocus="mima()" type="password" name="password" ph="密码"
                                                   id="pwd" maxlength="16"/>
                                            <i class="iconfont icon-lock-solid"></i>
                                            <p class="Validform_checktip" id="pwd_error"></p>
                                        </div>
                                            <br>
                                            <span id="span2"></span><br>
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
                                               href="http://user.tongshuai.com/ids/ts/password_find.jsp?regFrom=tongshuai&returnUrl=http://www.tongshuai.com">忘记密码</a>
                                            <p class="Validform_checktip"></p>
                                        </div>
                                        <a href="javascript:denglu()" class="">登录</a>

                                        <a href="javascript:;"
                                           class="l-btn-lg l-btn-line1 o_df-hide o_md-show o_sm-show o_xs-show login-btn-line js_loginType"
                                           data-login=1>使用动态密码登录</a>
                                        <div class="login-reg">
                                            <a href="<%=request.getContextPath()%>/background/zhuce.jsp">立即注册</a>
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
                                            <a href="http://user.tongshuai.com/ids/ts/reg.jsp?regFrom=tongshuai&returnUrl=http://www.tongshuai.com">立即注册</a>
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

<script id="_trs_ta_js" src="//net.haier.com/c/js/ta.js?mpid=1112&cPrefix=ta.trs.cn/c" async="async" defer="defer"></script>

<script id="_trs_glc_js_" src="//c.haier.com/trscookie/images/trs_cookie.js" data-mpId="37" defer="defer"></script>


<script type="text/javascript" src="http://image.tongshuai.com/images/validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="http://image.tongshuai.com/images/login.js"></script>
<script type="text/javascript" src="/ids/ts/login.js"></script>
<script type="text/javascript">
    var returnUrl = 'http://www.tongshuai.com';
    var regFrom = 'tongshuai';
    var wxAppName = 'tongshuai';
    var openId = '';
    var wxId = '';






    function denglu(){
       $.ajax({
           url:'<%=request.getContextPath()%>/lsController/login.jhtml',
           type:'post',
           data:$("#login_form_id").serialize(),
           async:true,
           success:function(msg){
              // 0:用户名不存在 1：密码错误 2：登录成功
               var str = "<font color='red'>登陆成功</font>";
               if(msg == 0){
                   str = "<font color='red'>用户不存在！请去注册</font>";
                   $("#span1").html(str);
               }
               if(msg == 1){
                   str = "<font color='red'>密码错误</font>";
                   $("#span2").html(str);
               }
               if(msg == 2){
                   location.href="<%=request.getContextPath()%>/lsJsp/loginyes.jsp";
               }
               $.messager.show({
                   title:'你有一个新消息',
                   msg:str,
                   timeout:2000,// 单位：毫秒
                   showType:'slide'
               });
           }
       })
    }

    function yonghu(){
        $("#span1").html("");
    }

    function mima(){
        $("#span2").html("");
    }



</script>
</body>
</html>
