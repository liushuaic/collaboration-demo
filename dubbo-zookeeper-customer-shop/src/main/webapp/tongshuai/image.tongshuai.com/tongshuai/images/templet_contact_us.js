$(function() {
    var templet_isSubmiting = false;
    //产品咨询，销售咨询，售后服务反馈，业务合作与咨询提交 表单验证
    var demo = $(".js_popup_validFormCustomer").Validform({
        tiptype: 3,
        label: ".label",
        showAllError: true,
        ignoreHidden:true,
        datatype: {
            "phone": /^[1][3-9][0-9]{9}$/,
            "name":function(gets, obj, curform, regxp) {
                var reg1 = /^[A-Za-z0-9\u4e00-\u9fa5]{1,10}$/,
                    reg2=/^[0-9]*$/;

                if(reg1.test(gets)&& !reg2.test(gets)) {
                    return true;
                }else if(gets.length>10){
                    return "<i class='iconfont icon-information-solid'></i>请输入10个以内字符";
                }else{
                    return "<i class='iconfont icon-information-solid'></i>姓名须为汉字或字母";
                }
            },
            "myTextarea_product": function(gets, obj, curform, regxp) {
                if(obj.css("display") == "none") {
                    return true;
                } else {
                    if(gets == "产品咨询" || gets == "") {
                        return "<i class='iconfont icon-information-solid'></i>请输入咨询/反馈内容";
                    } else {
                        return true;
                    }
                }

            },
            "myTextarea_sell": function(gets, obj, curform, regxp) {
                if(obj.css("display") == "none") {
                    return true;
                } else {
                    if(gets == "销售咨询" || gets == "") {
                        return "<i class='iconfont icon-information-solid'></i>请输入咨询/反馈内容";
                    } else {
                        return true;
                    }
                }

            },
            "myTextarea_after": function(gets, obj, curform, regxp) {
                if(obj.css("display") == "none") {
                    return true;
                } else {
                    if(gets == "售后服务反馈"  || gets == "") {
                        return "<i class='iconfont icon-information-solid'></i>请输入咨询/反馈内容";
                    } else {
                        return true;
                    }
                }

            },
            "myTextarea_operate": function(gets, obj, curform, regxp) {
                if(obj.css("display") == "none") {
                    return true;
                } else {
                    if(gets == "业务合作与咨询"  || gets == "") {
                        return "<i class='iconfont icon-information-solid'></i>请输入咨询/反馈内容";
                    } else {
                        return true;
                    }
                }

            }
        },
        btnSubmit: '.js_customerService',
        callback: function(form) {
            //这里是所有验证都通过以后，执行的回调函数

            //表单验证
            if($(".js_main_msg").hasClass("Validform_wrong")||$(".js_product_msg").hasClass("Validform_wrong")) {

            } else if($(".js_main_msg").hasClass("Validform_right")&&$(".js_product_msg").hasClass("Validform_right")){
                if(!$(".js_after_address").hasClass("hide_address")){
                    if($(".js_after_msg").hasClass("Validform_wrong")) {

                    } else if($(".js_after_msg").hasClass("Validform_right")){
                        customerService();//提交表单
                    }
                }else{
                    customerService();//提交表单
                }

            }

            return false; //最后加上这个，这个必须写
        },
    });

    //产品咨询，销售咨询，售后服务反馈，业务合作与咨询提交
    function customerService (){
        if(templet_isSubmiting) { //正在提交
            globalShade2('正在提交，请稍后', '3');
            return;
        }
        var name = $("#js_name").val(); //姓名
        var email = $("#js_email").val(); //邮箱
        var phone = $("#js_phone").val(); //电话
        var address = $("#js_address").val(); //地址
        var procategroy = $("#js_popup_product option:selected").attr("value"); //产品类别
        var categoryId = $.trim($("#js_popup-type option:selected").attr("valueid")); //分类id
        var formcategroy = ""; //咨询信息
        var province=$('#js_save_after').find("option:selected").text();//省
        var city=$('#js_city_after').find("option:selected").text();//市
        var district=$('#js_area_after').find("option:selected").text();//区
        var data ="";//传参数
        var dataUrl="";//链接
        if(categoryId == contactUsClass.cpzx) {//产品咨询
            formcategroy = $(".js_textarea_prodct").val();
            dataUrl="/interaction-service/contactUs/contactUsInfoSave";
            data = {
                "address": address,
                "categoryId": categoryId,
                "contactInfo": formcategroy,
                "email": email,
                "mobilePhone": phone,
                "productCategory": procategroy,
                "realName": name
            }
        } else if(categoryId == contactUsClass.zxxs) {//销售咨询
            formcategroy = $(".js_textarea_sell").val();
            dataUrl="/interaction-service/contactUs/contactUsInfoSave";
            data = {
                "address": address,
                "categoryId": categoryId,
                "contactInfo": formcategroy,
                "email": email,
                "mobilePhone": phone,
                "productCategory": procategroy,
                "realName": name
            }
        } else if(categoryId == contactUsClass.shfwfk) {//售后服务反馈
            formcategroy = $(".js_textarea_after").val();
            dataUrl="/interaction-service/contactUs/afterSaleBackInfoSave";
            data = {
                "address": address,
                "categoryId": categoryId,
                "contactInfo": formcategroy,
                "email": email,
                "mobilePhone": phone,
                "productCategory": procategroy,
                "realName": name,
                "province":province,
                "city":city,
                "district":district
            }
        }else if(categoryId == contactUsClass.ywhzyzx){//业务合作与咨询
            formcategroy = $(".js_textarea_operate").val();
            dataUrl="/interaction-service/contactUs/webJoinInfoSave";
            data = {
                "address": address,
                "categoryId": categoryId,
                "contactInfo": formcategroy,
                "email": email,
                "mobilePhone": phone,
                "productCategory": procategroy,
                "realName": name,
                "province":province,
                "city":city,
                "district":district
            }
        }

        templet_isSubmiting = true;
        $.ajax({
            url: siteConfig.domain + dataUrl,
            type: "post",
            data: JSON.stringify(data),
            applicationType: true,
            //login: true,
            csrf: true,
            success_cb: function(responseT) {
                if(responseT.isSuccess) {
                    $(".js_popupClose").click();//关闭表单
                    globalShade2("提交成功", 1, 2000);
                    templet_isSubmiting = false;

                } else { //添加地址失败
                    globalShade2("提交失败", 2, 2000);
                    templet_isSubmiting = false;
                }

            },
            error_cb: function(responseT) {
                var responseT = JSON.parse(responseT.responseText); //由JSON字符串转换为JSON对象
                globalShade2("提交失败", 2, 2000);
                templet_isSubmiting = false;
            }
        });
    }

    //招商联盟 表单验证
    var joindemo = $(".js_popup_validFormJoin").Validform({
        tiptype: 3,
        label: ".label",
        showAllError: true,
        datatype: {
            "phone": /^[1][3-9][0-9]{9}$/,
            "name":function(gets, obj, curform, regxp) {
                var reg1 = /^[A-Za-z0-9\u4e00-\u9fa5]{1,10}$/,
                    reg2=/^[0-9]*$/;

                if(reg1.test(gets)&& !reg2.test(gets)) {
                    return true;
                }else if(gets.length>10){
                    return "<i class='iconfont icon-information-solid'></i>请输入10个以内字符";
                }else{
                    return "<i class='iconfont icon-information-solid'></i>姓名须为汉字或字母";
                }
            },

        },
        btnSubmit: '.js_join',
        callback: function(form) {
            //			这里是所有验证都通过以后，执行的回调函数

            //表单验证
            if($(".js_popup_product_msg").hasClass("Validform_wrong")||$(".js_region_msg").hasClass("Validform_wrong")) {

            } else if($(".js_popup_product_msg").hasClass("Validform_right")&&$(".js_region_msg").hasClass("Validform_right")){
                join();//提交表单
            }

            return false; //最后加上这个，这个必须写
        },
    });
    //招商加盟
    function join (){
        if(templet_isSubmiting) { //正在提交
            globalShade2('正在提交，请稍后', '3');
            return;
        }
        var name = $("#js_joinName").val(); //姓名
        var email = $("#js_joinEmail").val(); //邮箱
        var phone = $("#js_joinPhone").val(); //电话
        var formcategroy = $("#js_joinInro").val(); //备注信息
        var save = $("#js_save_find").find("option:selected").text();//省
        var city = $("#js_city_find").find("option:selected").text();//市
        var area = $("#js_area_find").find("option:selected").text();//区
        var procategroy = $("#js_popup_product_find option:selected").attr("value"); //加盟产品
        var categoryId = contactUsClass.zslm; //分类id


        var data = {
            "province":save,
            "city":city,
            "district":area,
            "realName": name,
            "email": email,
            "mobilePhone": phone,
            "categoryId": categoryId,
            "contactInfo": formcategroy,
            "productCategory": procategroy
        }
        templet_isSubmiting = true;
        $.ajax({
            url: siteConfig.domain + "/interaction-service/contactUs/merchantsInfoSave",
            type: "post",
            data: JSON.stringify(data),
            applicationType: true,
            //login: true,
            csrf: true,
            success_cb: function(responseT) {
                if(responseT.isSuccess) {
                    $(".js_popupClose").click();//关闭表单
                    globalShade2("提交成功", 1, 2000);
                    templet_isSubmiting = false;
                } else { //添加地址失败
                    globalShade2("提交失败", 2, 2000);
                    templet_isSubmiting = false;
                }

            },
            error_cb: function(responseT) {
                var responseT = JSON.parse(responseT.responseText); //由JSON字符串转换为JSON对象
                globalShade2("提交失败", 2, 2000);
                templet_isSubmiting = false;
            }
        });
    }

    //业务合作与咨询 表单验证
    /*var businessdemo = $(".js_popup_validFormBusiness").Validform({
        tiptype: 3,
        label: ".label",
        showAllError: true,
        datatype: {
            "phone": /^[1][3-9][0-9]{9}$/,
            "name":function(gets, obj, curform, regxp) {
                var reg1 = /^[A-Za-z0-9\u4e00-\u9fa5]{1,10}$/,
                    reg2=/^[0-9]*$/;

                if(reg1.test(gets)&& !reg2.test(gets)) {
                    return true;
                }else if(gets.length>10){
                    return "<i class='iconfont icon-information-solid'></i>请输入10个以内字符";
                }else{
                    return "<i class='iconfont icon-information-solid'></i>姓名须为汉字或字母";
                }
            },
            "myTextarea_operater": function(gets, obj, curform, regxp) {
                if(obj.css("display") == "none") {
                    return true;
                } else {
                    if(gets == "任何意见或建议..." || gets == "") {
                        return "<i class='iconfont icon-information-solid'></i>请输入咨询/反馈内容";
                    } else {
                        return true;
                    }
                }

            }
        },
        btnSubmit: '.js_business',
        callback: function(form) {
            //			这里是所有验证都通过以后，执行的回调函数

            //表单验证
            if($(".js_area_msg").hasClass("Validform_wrong")|| $(".js_popupbtn_msg").hasClass("Validform_wrong")) {

            } else if($(".js_area_msg").hasClass("Validform_right")&&$(".js_popupbtn_msg").hasClass("Validform_right")){
                business();//提交表单
            }
            return false; //最后加上这个，这个必须写
        },
    });*/

    //业务合作与咨询
    /*function business (){
        if(templet_isSubmiting) { //正在提交
            globalShade2('正在提交，请稍后', '3');
            return;
        }
        var name = $("#js_businessName").val(); //姓名
        var email = $("#js_businessEmail").val(); //邮箱
        var phone = $("#js_businessPhone").val(); //电话
        var address = $("#js_businessAddress").val(); //地址
        var formcategroy = $("#js_businessInro").val(); //咨询信息
        var save = $("#js_save_operate").find("option:selected").text();//省
        var city = $("#js_city_operate").find("option:selected").text();//市
        var area = $("#js_area_operate").find("option:selected").text();//区
        var productCategory=$("#js_popupbtn_operate option:selected").attr("value"); //产品信息
        var categoryId = contactUsClass.ywhzyzx; //分类id

        var data = {
            "realName": name,
            "province":save,
            "district":area,
            "city":city,
            "email": email,
            "address": address,
            "mobilePhone": phone,
            "categoryId": categoryId,
            "contactInfo": formcategroy,
            "productCategory":productCategory
        }
        templet_isSubmiting = true;
        $.ajax({
            url: siteConfig.domain + "/interaction-service/contactUs/webJoinInfoSave",
            type: "post",
            data: JSON.stringify(data),
            applicationType: true,
            //login: true,
            csrf: true,
            success_cb: function(responseT) {
                if(responseT.isSuccess) {
                    $(".js_popupClose").click();//关闭表单
                    globalShade2("提交成功", 1, 2000);
                    templet_isSubmiting = false;
                } else { //添加地址失败
                    globalShade2("提交失败", 2, 2000);
                    templet_isSubmiting = false;
                }

            },
            error_cb: function(responseT) {
                var responseT = JSON.parse(responseT.responseText); //由JSON字符串转换为JSON对象
                globalShade2("提交失败", 2, 2000);
                templet_isSubmiting = false;
            }
        });
    }
*/
    //网站问题及建议反馈 表单验证
    var proposaldemo = $(".js_popup_validFormProposal").Validform({
        tiptype: 3,
        label: ".label",
        showAllError: true,
        datatype: {
            "phone": /^[1][3-9][0-9]{9}$/,
            "name":function(gets, obj, curform, regxp) {
                var reg1 = /^[A-Za-z0-9\u4e00-\u9fa5]{1,10}$/,
                    reg2=/^[0-9]*$/;

                if(reg1.test(gets)&& !reg2.test(gets)) {
                    return true;
                }else if(gets.length>10){
                    return "<i class='iconfont icon-information-solid'></i>请输入10个以内字符";
                }else{
                    return "<i class='iconfont icon-information-solid'></i>姓名须为汉字或字母";
                }
            },
        },
        btnSubmit: '.js_proposal',
        callback: function(form) {
            //			这里是所有验证都通过以后，执行的回调函数
            if($(".js_problem_msg").hasClass("Validform_wrong")) {

            } else if($(".js_problem_msg").hasClass("Validform_right")){
                proposal();//提交表单
            }

            return false; //最后加上这个，这个必须写
        },
    });

    //网站问题及建议反馈
    function proposal (){
        if(templet_isSubmiting) { //正在提交
            globalShade2('正在提交，请稍后', '3');
            return;
        }
        var email = $("#js_proposalEmail").val(); //邮箱
        var feedBackUrl = $("#js_proposalUrl").val(); //相关页面地址
        var mobilePhone=$("#js_bug_phone").val();//电话
        var formcategroy = $("#js_proposalInro").val(); //内容
        var vipQuestionType=$("#js_popup_feedback option:selected").attr("value");//问题类型
        var categoryId = contactUsClass.wzwtjjyfk;  //分类id
        var data = {
            "email": email,
            "feedBackUrl": feedBackUrl,
            "contactInfo": formcategroy,
            "categoryId": categoryId,
            "mobilePhone":mobilePhone,
            "vipQuestionType":vipQuestionType
        }
        templet_isSubmiting = true;
        $.ajax({
            url: siteConfig.domain + "/interaction-service/contactUs/webFeedBackInfoSave",
            type: "post",
            data: JSON.stringify(data),
            applicationType: true,
            //login: true,
            csrf: true,
            success_cb: function(responseT) {
                if(responseT.isSuccess) {
                    $(".js_popupClose").click();//关闭表单
                    globalShade2("提交成功", 1, 2000);
                    templet_isSubmiting = false;
                } else { //添加地址失败
                    globalShade2("提交失败", 2, 2000);
                    templet_isSubmiting = false;
                }

            },
            error_cb: function(responseT) {
                var responseT = JSON.parse(responseT.responseText); //由JSON字符串转换为JSON对象
                globalShade2("提交失败", 2, 2000);
                templet_isSubmiting = false;
            }
        });
    }

    //会员服务与支持 表单验证
    var memberdemo = $(".js_popup_validFormMember").Validform({
        tiptype: 3,
        label: ".label",
        showAllError: true,
        datatype: {
            "phone": /^[1][3-9][0-9]{9}$/,
            "name":function(gets, obj, curform, regxp) {
                var reg1 = /^[A-Za-z0-9\u4e00-\u9fa5]{1,10}$/,
                    reg2=/^[0-9]*$/;

                if(reg1.test(gets)&& !reg2.test(gets)) {
                    return true;
                }else if(gets.length>10){
                    return "<i class='iconfont icon-information-solid'></i>请输入10个以内字符";
                }else{
                    return "<i class='iconfont icon-information-solid'></i>姓名须为汉字或字母";
                }
            },

        },
        btnSubmit: '.js_member',
        callback: function(form) {
            //			这里是所有验证都通过以后，执行的回调函数
            if($(".js_popup-type_msg").hasClass("Validform_wrong")||$(".js_img_msg").hasClass("Validform_wrong")||$(".js_prod_size").hasClass("Validform_wrong")||$(".js_member_product_msg").hasClass("Validform_wrong")) {

            }else if($(".js_prod_size").hasClass("Validform_right")&&$(".js_popup-type_msg").hasClass("Validform_right")&&$(".js_member_product_msg").hasClass("Validform_right")){
                member();//提交表单
            }
            return false; //最后加上这个，这个必须写
        },
    });

    //会员服务与支持
    function member (){
        if(templet_isSubmiting) { //正在提交
            globalShade2('正在提交，请稍后', '3');
            return;
        }
        var name = $("#js_memberName").val(); //姓名
        var email = $("#js_memberEmail").val(); //邮件
        var phone = $("#js_memberPhone").val(); //电话
        var model=$(".js_search_input").val();//型号
        var formcategroy=$("#js_memberProblem").val();//内容
        var picUrl=$(".js_show_pic .js_up_pic").attr("src");//pic路径
        var vipQuestionType=$("#js_popup-type_up").find("option:selected").text()//获取子分类
        var memberPro = $("#js_popup_product_member option:selected").attr("value"); //加盟产品
        var categoryId =  contactUsClass.hyfwyzc; //分类id


        var data = {
            "email": email,
            "realName": name,
            "mobilePhone": phone,
            "businessId": model,
            "feedBackPicPath":picUrl,
            "contactInfo": formcategroy,
            "vipQuestionType":vipQuestionType,
            "categoryId": categoryId,
            "productCategory":memberPro
        }
        templet_isSubmiting = true;
        $.ajax({
            url: siteConfig.domain + "/interaction-service/contactUs/vipSupportInfoSave",
            type: "post",
            data: JSON.stringify(data),
            applicationType: true,
            //login: true,
            csrf: true,
            success_cb: function(responseT) {
                if(responseT.isSuccess) {
                    $(".js_popupClose").click();//关闭表单
                    globalShade2("提交成功", 1, 2000);
                    templet_isSubmiting = false;

                } else { //添加地址失败
                    globalShade2("提交失败", 2, 2000);
                    templet_isSubmiting = false;
                }

            },
            error_cb: function(responseT) {
                var responseT = JSON.parse(responseT.responseText); //由JSON字符串转换为JSON对象
                globalShade2("提交失败", 2, 2000);
                templet_isSubmiting = false;
            }
        });
    }

    $(".js_popupClose").click(function(){
        demo.resetForm();//产品重置表单
        joindemo.resetForm();//招商加盟重置表单
        //businessdemo.resetForm();//业务合作与咨询重置表单
        proposaldemo.resetForm();//网站问题及建议反馈重置表单
        memberdemo.resetForm();//会员服务与支持重置表单
        $(".Validform_checktip").html("");//重置提示信息
        $(".js_show_pic .js_up_pic").attr("src","");//清除图片
        $(".js_show_pic").css("display","none");//清除图片
        $('.js_write').removeClass("Validform_error");//清除产品型号边框
        $(".js_after_address").addClass("hide_address");//隐藏省市下拉框
    });
    $("#js_popup-type").change(function(){//产品咨询等重置错误提示
        var now_id=$("#js_popup-type option:selected").val();
        if(now_id=="产品咨询"){
            demo.resetForm();//产品重置表单
            $(".js_popupbtn_product").click();
        }else if(now_id=="销售咨询"){
            demo.resetForm();//产品重置表单
            $(".js_popupbtn_sell").click();
        }else if(now_id=="售后服务反馈"){
            demo.resetForm();//产品重置表单
            $(".js_popupbtn_after").click();
        }else if(now_id=="业务合作与咨询"){
            demo.resetForm();//产品重置表单
            $(".js_popupbtn_operate").click();
        }else{
            demo.resetForm();//产品重置表单
        }
        $(".Validform_checktip").html("");//重置提示信息
        $('.js_write').removeClass("Validform_error");//清除产品型号边框
        $(".js_after_address").addClass("hide_address");//隐藏省市下拉框

    })


})
