$(function() {
	//光标定位时边框为红色
	$(".js_red_border input,textarea").focus(function () {
        if(!$(this).hasClass("Validform_error")&&!$(this).hasClass("js_inputProposal")){
            $(this).addClass("red_border");
        }
	}).blur(function () {
		$(this).removeClass("red_border");
	})
    //判断ie8
    isIe8 = isIe && navigator.userAgent.indexOf("MSIE 8.0") > 0 && !isIe11;
    isIe9 = isIe && navigator.userAgent.indexOf("MSIE 9.0") > 0 && !isIe11;
    //存储session
    sessionStorage.setItem('contact', 'myContact');

    function init() {

        var screenWidth = document.body.offsetWidth;
        var screenHeight = document.body.offsetHeight;

    }
    //响应式图片
    $(".js_recPic").each(function() {
        $(this).oPicture({
            //自定义节点宽度
            //sm:544,md:700,lg:992,xl:1200,
        }).init();
    });
    //根据ip定位获取省市区
    var deprovince_code = "" //省
    var decity_code = "" //市
    var dearea_code = "" //区
    getAutoAddress()

    //下拉菜单初始化
    var productList_member = $("#js_popup_product_member").oSelect();//会员服务与支持产品下拉框
    var contact_product = $("#js_popup-type").oSelect();
    var membership_list = $("#js_popup-type_up").oSelect(); //会员服务与支持下拉
    var productList = $("#js_popup_product").oSelect();
    $("#js_popup_product_up").oSelect().init();
    var productList_find = $("#js_popup_product_find").oSelect();
    $("#js_popup-main").oSelect().init();
    var productList_operate = $("#js_popupbtn_operate").oSelect();
    var feedback_problem = $("#js_popup_feedback").oSelect();

    var find_save = $("#js_save_find").oSelect();
    var find_city = $("#js_city_find").oSelect();
    var find_area = $("#js_area_find").oSelect();

    var operate_save = $("#js_save_operate").oSelect();
    var operate_city = $("#js_city_operate").oSelect();
    var operate_area = $("#js_area_operate").oSelect();

    //售后服务反馈省市区
    var after_save = $("#js_save_after").oSelect();
    var after_city = $("#js_city_after").oSelect();
    var after_area = $("#js_area_after").oSelect();

    //弹层初始化
    var myPopup = $(".o_body").oPopupFn();
    $(".js_open_popup").click(function() {
        //下拉框内容重置
        $("#js_popup-type").html("");
        $("#js_popup_product").parents(".selectbox").find(".name").html("请选择");
        $("#js_popup_product").parents(".selectbox").find("ul li").removeClass("cur");
        $(".l-popup-title").html($(this).find("span")[0].innerText);
        $(".js_textarea textarea").css("display", "none");
        //弹窗样式改变
        if($(this).hasClass("js_popupbtn_product") || $(this).hasClass("js_popupbtn_sell") || $(this).hasClass("js_popupbtn_operate") || $(this).hasClass("js_popupbtn_after")) {
            myPopup.open({
                target: ".js_l-popup" //要弹出的弹层
            })
            $("html,body").animate({
                scrollTop: 0
            }, 500);
            $(".js_l-popup").css("top", "70px").addClass("absolute");
            resetProject();

            $("#js_popup-type").append('<option value="" valueId="0">--请选择--</option>');
            var isSelected = " ";
            var productEach = " ";
            if($(this).hasClass("js_popupbtn_product")) { //咨询销售
                productEach = '<option value="产品咨询"' + 'selected="selected"' + 'valueId=' + contactUsClass.cpzx + '>' + '产品咨询' + '</option>' +
                    '<option value="销售咨询"' + isSelected + 'valueId=' + contactUsClass.zxxs + '>' + '销售咨询' + '</option>' +
                    '<option value="售后服务反馈"' + isSelected + 'valueId=' + contactUsClass.shfwfk + '>' + '售后服务反馈' + '</option>';
                /*productEach = '<option value="产品咨询"' + 'selected="selected"' + 'valueId=' + contactUsClass.cpzx + '>' + '产品咨询' + '</option>' +
                    '<option value="销售咨询"' + isSelected + 'valueId=' + contactUsClass.zxxs + '>' + '销售咨询' + '</option>' +
                    '<option value="售后服务反馈"' + isSelected + 'valueId=' + contactUsClass.shfwfk + '>' + '售后服务反馈' + '</option>' +
                    '<option value="业务合作与咨询"' + isSelected + 'valueId=' + contactUsClass.ywhzyzx + '>' + '业务合作与咨询' + '</option>';*/
                $(".js_after_address").addClass("hide_address"); //隐藏省市下拉框
                $(".js_miaoshu").text("请将您对我们产品的疑问或使用中的问题反馈给我们，我们将尽快给您答复。"); //需改描述信息
            } else if($(this).hasClass("js_popupbtn_sell")) { //销售咨询
                productEach = '<option value="产品咨询"' + isSelected + 'valueId=' + contactUsClass.cpzx + '>' + '产品咨询' + '</option>' +
                    '<option value="销售咨询"' + 'selected="selected"' + 'valueId=' + contactUsClass.zxxs + '>' + '销售咨询' + '</option>' +
                    '<option value="售后服务反馈"' + isSelected + 'valueId=' + contactUsClass.shfwfk + '>' + '售后服务反馈' + '</option>';
               /* productEach = '<option value="产品咨询"' + isSelected + 'valueId=' + contactUsClass.cpzx + '>' + '产品咨询' + '</option>' +
                    '<option value="销售咨询"' + 'selected="selected"' + 'valueId=' + contactUsClass.zxxs + '>' + '销售咨询' + '</option>' +
                    '<option value="售后服务反馈"' + isSelected + 'valueId=' + contactUsClass.shfwfk + '>' + '售后服务反馈' + '</option>' +
                    '<option value="业务合作与咨询"' + isSelected + 'valueId=' + contactUsClass.ywhzyzx + '>' + '业务合作与咨询' + '</option>';*/
                $(".js_after_address").addClass("hide_address"); //隐藏省市下拉框
                $(".js_miaoshu").text("如果您需要大量购买我们的产品或了解产品购买渠道，请将您的需求提交给我们，我们将尽快给您答复。"); //需改描述信息
            } /*else if($(this).hasClass("js_popupbtn_operate")) { //业务合作与咨询
                productEach = '<option value="产品咨询"' + isSelected + 'valueId=' + contactUsClass.cpzx + '>' + '产品咨询' + '</option>' +
                    '<option value="销售咨询"' + isSelected + 'valueId=' + contactUsClass.zxxs + '>' + '销售咨询' + '</option>' +
                    '<option value="售后服务反馈"' + isSelected + 'valueId=' + contactUsClass.shfwfk + '>' + '售后服务反馈' + '</option>' +
                    '<option value="业务合作与咨询"' + 'selected="selected"' + 'valueId=' + contactUsClass.ywhzyzx + '>' + '业务合作与咨询' + '</option>';
                $(".js_after_address").removeClass("hide_address"); //展示省市下拉框
                $(".js_miaoshu").text("如果您有意愿与我们合作，请将合作方案或者资源信息进行提交，我们将尽快给您答复。"); //需改描述信息
                provincialUrbanArea() //售后服务反馈展示省市区
            } */
            else if($(this).hasClass("js_popupbtn_after")) { //售后服务反馈
                productEach = '<option value="产品咨询"' + isSelected + 'valueId=' + contactUsClass.cpzx + '>' + '产品咨询' + '</option>' +
                    '<option value="销售咨询"' + isSelected + 'valueId=' + contactUsClass.zxxs + '>' + '销售咨询' + '</option>' +
                    '<option value="售后服务反馈"' + 'selected="selected"' + 'valueId=' + contactUsClass.shfwfk + '>' + '售后服务反馈'; /*+ '</option>' +
                    '<option value="业务合作与咨询"' + isSelected + 'valueId=' + contactUsClass.ywhzyzx + '>' + '业务合作与咨询' + '</option>'*/
                $(".js_after_address").removeClass("hide_address"); //展示省市下拉框
                $(".js_miaoshu").text("请将您在使用我们产品过程中遇到的售后或服务问题提交给我们，我们将尽快给您答复。"); //需改描述信息
                provincialUrbanArea() //售后服务反馈展示省市区
            }
            $("#js_popup-type").append(productEach);
            contact_product.init();
            setSelect_contact();

            function setSelect_contact() {
                $("#js_popup_product").parents(".selectbox").find(".name").html("请选择");
                $("#js_popup_product").parents(".selectbox").find("ul li").removeClass("cur");
                $(".js_textarea textarea").css("display", "none");
                var selectId = $("#js_popup-type option:selected").attr("valueId");
                if(selectId == contactUsClass.cpzx) {
                    $(".js_textarea textarea").eq(0).css("display", "block");
                    $(".js_after_address").addClass("hide_address"); //隐藏省市下拉框
                } else if(selectId == contactUsClass.zxxs) {
                    $(".js_textarea textarea").eq(1).css("display", "block");
                    $(".js_after_address").addClass("hide_address"); //隐藏省市下拉框
                } else if(selectId == contactUsClass.shfwfk) {
                    $(".js_textarea textarea").eq(2).css("display", "block");
                    $(".js_after_address").removeClass("hide_address"); //展示省市下拉框
                    //provincialUrbanArea()//售后服务反馈展示省市区
                } else {
                    $(".js_textarea textarea").eq(3).css("display", "block");
                    $(".js_after_address").removeClass("hide_address"); //展示省市下拉框
                    //provincialUrbanArea()//售后服务反馈展示省市区
                }
            }
            //销售咨询，服务售后反馈等四个的咨询类型切换
            $("#js_popup-type").on('change', function() {
                if($("#js_popup-type").val() == "" || $("#js_popup-type").val() == null || typeof($("#js_popup-type").val()) == "undefined") {} else {
                    $(".l-popup-title").html($("#js_popup-type").val());

                    if($(".js_titleName").text() == "产品咨询") {
                        $(".js_miaoshu").text("请将您对我们产品的疑问或使用中的问题反馈给我们，我们将尽快给您答复。")
                    } else if($(".js_titleName").text() == "销售咨询") {
                        $(".js_miaoshu").text("如果您需要大量购买我们的产品或了解产品购买渠道，请将您的需求提交给我们，我们将尽快给您答复。")
                    } else if($(".js_titleName").text() == "售后服务反馈") {
                        $(".js_miaoshu").text("请将您在使用我们产品过程中遇到的售后或服务问题提交给我们，我们将尽快给您答复。")
                    } /*else if($(".js_titleName").text() == "业务合作与咨询") {
                        $(".js_miaoshu").text("如果您有意愿与我们合作，请将合作方案或者资源信息进行提交，我们将尽快给您答复。")
                    }*/
                    setSelect_contact();
                    $(".js_textarea textarea").css("display", "none");
                    var selectId = $("#js_popup-type option:selected").attr("valueId");
                    if(selectId == contactUsClass.cpzx) {
                        $(".js_textarea textarea").eq(0).css("display", "block");
                        $(".js_after_address").addClass("hide_address"); //隐藏省市下拉框
                    } else if(selectId == contactUsClass.zxxs) {
                        $(".js_textarea textarea").eq(1).css("display", "block");
                        $(".js_after_address").addClass("hide_address"); //隐藏省市下拉框
                    } else if(selectId == contactUsClass.shfwfk) {
                        $(".js_textarea textarea").eq(2).css("display", "block");
                        $(".js_after_address").removeClass("hide_address"); //展示省市下拉框
                        provincialUrbanArea() //售后服务反馈展示省市区
                    } else {
                        $(".js_textarea textarea").eq(3).css("display", "block");
                        $(".js_after_address").removeClass("hide_address"); //展示省市下拉框
                        provincialUrbanArea() //售后服务反馈展示省市区
                    }
                    resetProject();
                }
            })
        } else if($(this).hasClass("js_popupbtn_member")) {
            myPopup.open({
                target: ".js_l-popup_up" //要弹出的弹层
            })
            $("html,body").animate({
                scrollTop: 0
            }, 500);
            resetProject();
            $("#js_popup-type_up").html("");
            $("#js_popup-type_up").parents(".selectbox").find(".name").html("请选择");
            $("#js_popup-type_up").parents(".selectbox").find("ul li").removeClass("cur");
            $("#js_popup-type_up").append('<option value="" valueId="">--请选择--</option>');
            var productEach = '<option value="产品注册" selected="selected"' + '>' + '产品注册' + '</option>' +
                '<option value="积分获取与兑换"' + '>' + '积分获取与兑换' + '</option>' +
                '<option value="权益及使用"' + '>' + '权益及使用' + '</option>' +
                '<option value="会员入会"' + '>' + '会员入会' + '</option>';
            $("#js_popup-type_up").append(productEach);
            membership_list.init();
            select_problem();
            var check_isValid = 0; //定义是否校验
            var select_num = 0;
            var arr_select = [];
            var main_check = 0;
            var size_id = ""; //定义上一次输入变量
            var size_num = 0; //设置是否是通过选择结果列表
            var now_text = ""; //定义从列表中选中的值
            var isCheckSize = 0; //设置是否验证过型号
            $(".js_l-popup_up").css("top", "70px").addClass("absolute");
            //$("#js_popup-type_up").parents(".selectbox").find(".name").html("请选择");
            //$("#js_popup-type_up").parents(".selectbox").find("ul li").removeClass("cur");
            $('.js_write').removeClass("Validform_error");
            $(".js_img_msg").html("支持JPG、JPEG、PNG，大小不超过5M");
            $(".js_img_msg").addClass("gray");
            //会员服务验证
            $(".js_member").click(function() {
                check_isValid++;
                select_problem();
                input_size();
                select_member();

            })
            $("#js_popup-type_up").on("change", function() {
                select_problem();
            })
            $("#js_popup_product_member").on("change", function() {
                select_member();
            })

            function input_size() {
                if(main_check == "0") {
                    setProductSize();
                }

            }

            function select_problem() {
                if($("#js_popup-type_up").val() == "" || $("#js_popup-type_up").val() == null || typeof($("#js_popup-type_up").val()) == "undefined") {
                    $(".js_popup-type_msg").removeClass("Validform_right").addClass("Validform_wrong");
                    $(".js_popup-type_msg").html("<i class='iconfont icon-information-solid'></i>问题类型不能为空");
                } else {
                    $(".js_popup-type_msg").addClass("Validform_right").removeClass("Validform_wrong");
                    $(".js_popup-type_msg").html("");
                }
            }
            function select_member() {
                if($("#js_popup_product_member").val() == "" || $("#js_popup_product_member").val() == null || typeof($("#js_popup_product_member").val()) == "undefined") {
                    $(".js_member_product_msg").removeClass("Validform_right").addClass("Validform_wrong");
                    $(".js_member_product_msg").html("<i class='iconfont icon-information-solid'></i>请选择产品");
                } else {
                    $(".js_member_product_msg").addClass("Validform_right").removeClass("Validform_wrong");
                    $(".js_member_product_msg").html("");
                }
            }
            //清空产品类型
            $(".js_show_size").html("");
            $(".js_show_size").removeClass("Validform_error");
            $(".js_search_list").addClass("no_list");
            $(".js_search_input").removeClass("active");
            $(".js_show_size").hover(function() {
                $(this).css("display", "none");
            }, function() {

            })
            $(".js_write").hover(function() {}, function() {
                if($.trim($('.js_write').val()) != "" && $.trim($('.js_write').val()) != null && typeof($('.js_write').val()) != "undefined") {
                    if($(".js_search_list").hasClass("no_list")) {
                        $(".js_show_size").css("display", "block");
                    }
                    size_id = "";
                }
                $(".js_show_size").html($('.js_write').val());
            })
            //hover时隐藏搜索结果且失去焦点
            $(".js_search_serve_pup").hover(function() {}, function() {
                if(isCheckSize == "0") {
                    setProductSize();
                    isCheckSize = 1;
                }
                $('.js_write').blur();
                $(".js_show_size").html($('.js_write').val());
                //隐藏搜索列表
                $(".js_search_list").addClass("no_list");
                $(".js_search_input").removeClass("active");
            })
            if(isIe8||isIe9) {
                $('.js_write').bind('keyup', function(event) {
                    check_isValid++;
                    var keyNo = $(this).val();
                    if($.trim($('.js_write').val()) == "" || $.trim($('.js_write').val()) == null || typeof($('.js_write').val()) == "undefined") {
                        keyNo = "";
                        //隐藏搜索列表
		                $(".js_search_list").addClass("no_list");
		                $(".js_search_input").removeClass("active");
                    } else {
                        select_num++;
                        select_productSize(keyNo, select_num);
                    }
                    if(event.keyCode == "8" || event.keyCode == "46") {
                        select_productSize(keyNo, select_num);
                    }

                }).on("focus", function() {
                    isCheckSize = 0;
                    if($(".js_prod_size").hasClass("Validform_wrong")) {

                    } else {
                        $('.js_write').removeClass("Validform_error");
                    }
                    if($.trim($('.js_write').val()) == "" || $.trim($('.js_write').val()) == null || typeof($('.js_write').val()) == "undefined") {
                        check_isValid++;
                        //隐藏搜索列表
		                $(".js_search_list").addClass("no_list");
		                $(".js_search_input").removeClass("active");
                    } else {
                        check_isValid++;
                        select_num++;
                        var keyNo = $(this).val();
                        select_productSize(keyNo, select_num);
                    }
                })
            } else {
                $('.js_write').bind('input', function(event) {
                    check_isValid++;
                    var keyNo = $(this).val();
                    if($.trim($('.js_write').val()) == "" || $.trim($('.js_write').val()) == null || typeof($('.js_write').val()) == "undefined") {
                        keyNo = "";
                        //隐藏搜索列表
		                $(".js_search_list").addClass("no_list");
		                $(".js_search_input").removeClass("active");
                    } else {
                        select_num++;
                        select_productSize(keyNo, select_num);
                    }
                    if(event.keyCode == "8" || event.keyCode == "46") {
                        select_productSize(keyNo, select_num);
                    }

                }).on("focus", function() {
                    isCheckSize = 0;
                    if($(".js_prod_size").hasClass("Validform_wrong")) {

                    } else {
                        $('.js_write').removeClass("Validform_error");
                    }
                    if($.trim($('.js_write').val()) == "" || $.trim($('.js_write').val()) == null || typeof($('.js_write').val()) == "undefined") {
                        check_isValid++;
                        //隐藏搜索列表
		                $(".js_search_list").addClass("no_list");
		                $(".js_search_input").removeClass("active");
                    } else {
                        check_isValid++;
                        select_num++;
                        var keyNo = $(this).val();
                        select_productSize(keyNo, select_num);
                    }
                })
            }
            //失焦时验证搜索结果
            function setProductSize() {
                if(check_isValid != "0") {
                    check_isValid = 0;
                    $(".js_prod_size").html("");
                    $(".js_prod_size").removeClass("Validform_right");
                    $(".js_search_list").addClass("no_list");
                    $(".js_search_input").removeClass("active");
                    var strWrite = $('.js_write').val().replace(/(^\s*)|(\s*)$/g, "");
                    if(strWrite == "" || strWrite == null || typeof($('.js_write').val()) == "undefined") {
                        $(".js_search_list").addClass("no_list");
                        $(".js_search_input").removeClass("active");
                        $('.js_write').addClass("Validform_error");
                        $(".js_prod_size").removeClass("Validform_right").addClass("Validform_wrong");
                        $(".js_prod_size").html("<i class='iconfont icon-information-solid'></i>请输入产品型号");
                        //隐藏截断
                        $(".js_show_size").css("display", "none");
                    } else {
                        main_check = 1;
                        var keyNo = $('.js_write').val();
                        $(".js_show_size").html(keyNo);
                        $.ajax({
                            url: siteConfig.domain + "/interaction-search/front/searchModelNo/listNoccurate",
                            type: "get",
                            dataType: "json",
                            data: {
                                "brand": "统帅",
                                "modelNo": keyNo
                            },
                            success_cb: function(data) {
                                if(data.isSuccess) {
                                    $(".js_prod_size").addClass("Validform_right").removeClass("Validform_wrong");
                                    $(".js_prod_size").html("");
                                    $('.js_write').removeClass("Validform_error");
                                    $(".js_search_list").addClass("no_list");
                                    $(".js_search_input").removeClass("active");
                                    //展示截断且隐藏错误
                                    $(".js_show_size").css("display", "block").removeClass("Validform_error");
                                } else {
                                    $('.js_write').addClass("Validform_error");
                                    $(".js_prod_size").removeClass("Validform_right").addClass("Validform_wrong");
                                    $(".js_prod_size").html("<i class='iconfont icon-information-solid'></i>请输入正确的产品型号");
                                    //展示截断且显示错误
                                    $(".js_show_size").css("display", "block").addClass("Validform_error");
                                }
                            }
                        })
                        check_isValid = 0;
                    }
                }
            }
            //模糊查询
            function select_productSize(keyNo, select_num) {
                var select_val = $.trim($('.js_write').val());
                if(size_id == $('.js_write').val() && select_val != "" && select_val != null && typeof(select_val) != "undefined") {
                    select_num = select_num - 1;
                } else {
                    size_id = $('.js_write').val();
                    $.ajax({
                        url: siteConfig.domain + "/interaction-search/front/searchModelNo/list",
                        type: "get",
                        dataType: "json",
                        data: {
                            "brand": "统帅",
                            "modelNo": keyNo
                        },
                        select_Num: select_num,
                        success_cb: function(data) {
                            if(data.isSuccess) {
                                arr_select[select_num] = data.data;
                                var product_type = arr_select[arr_select.length - 1];
                                if(product_type == null) {
                                    $(".js_search_list").addClass("no_list");
                                    $(".js_search_input").removeClass("active");
                                } else if(product_type.pageCount == "0") {
                                    $(".js_search_list").addClass("no_list");
                                    $(".js_search_input").removeClass("active");
                                } else {
                                    var product_type_List = product_type.entities;
                                    $(".js_search_list ul").html("");
                                    if(product_type_List != null) {
                                        for(var i = 0; i < product_type_List.length; i++) {
                                            var productEach = ' <li data-name="' + product_type_List[i].productgroup + '"class="js_search_li">' + product_type_List[i].material_descrition + '</li>';
                                            $(".js_search_list ul").append(productEach);
                                        }

                                    }
                                    if(parseInt(product_type.pageCount) > 1) {
                                        $(".js_search_list ul").append(' <li data-count="' + product_type.pageCount + '"class="js_search_sheng">' + '......' + '</li>');
                                    }
                                    if($(".js_show_size").css("display") == "none") {
                                        $(".js_search_list").removeClass("no_list");
                                        $(".js_search_input").addClass("active");
                                    } else {
                                        $(".js_search_list").addClass("no_list");
                                        $(".js_search_input").removeClass("active");
                                    }
                                    //点击搜索结果展示到页面上
                                    $(".js_search_list ul").on("click", ".js_search_li", function() {
                                        $(".js_search_list").addClass("no_list");
                                        $(".js_search_input").removeClass("active");
                                        $('.js_write').blur();

                                        $(".js_search_input").val($(this)[0].innerText);
                                        $(".js_show_size").html($(this)[0].innerText);
                                        $(".js_show_size").css("display", "block");
                                        $(".js_show_size").removeClass("Validform_error");
                                        size_num = 1;
                                        $(".js_prod_size").addClass("Validform_right").removeClass("Validform_wrong");
                                        $(".js_prod_size").html("");
                                        $('.js_write').removeClass("Validform_error");
                                    })
                                }

                            } else {

                            }
                        }
                    })
                }

            }
        } else if($(this).hasClass("js_popupbtn_canvass")) {
            myPopup.open({
                target: ".js_l-popup_find" //要弹出的弹层
            })
            $("html,body").animate({
                scrollTop: 0
            }, 500);
            $(".js_l-popup_find").css("top", "70px").addClass("absolute");
            resetProject();
            $.ajax({
                url: siteConfig.domain + "/interaction-service/regionInfo/queryProvince",
                type: "get",
                dataType: "json",
                success_cb: function(data) {
                    if(data.isSuccess) {
                        var proList = data.data;
                        $("#js_save_find").html("");
                        $("#js_save_find").append('<option value="">--请选择省--</option>');
                        if(proList != null) {
                            for(var i = 0; i < proList.length; i++) {
                                var isSelected = "";
                                if(proList[i].proCode == deprovince_code) {
                                    isSelected = "selected";
                                }
                                var provinceEach = '<option value="' + proList[i].proCode + '" ' + isSelected + '>' + proList[i].province + '</option>';
                                $("#js_save_find").append(provinceEach);
                            }
                            $("#js_save_find").change();
                            //$("#js_city_find").change();

                        }
                        find_save.init();
                        $("#js_area_find").html("");
                        find_area.init();
                        find_area.lose();
                        $("#js_city_find").html("");
                        find_city.init();
                        find_city.lose();
                    }
                }
            })

            function resetCity() {
                var proSelect = $("#js_save_find option:selected").val();
                $.ajax({
                    url: siteConfig.domain + "/interaction-service/regionInfo/queryCity",
                    type: "get",
                    dataType: "json",
                    data: {
                        "provinceId": proSelect
                    },
                    success_cb: function(data) {
                        if(data.isSuccess) {
                            var cityList = data.data;
                            $("#js_city_find").html("");
                            $("#js_city_find").append('<option value="">--请选择市--</option>');
                            if(cityList != null) {
                                for(var i = 0; i < cityList.length; i++) {
                                    var s_isSelected = "";
                                    if(cityList[i].cityCode == decity_code) {
                                        s_isSelected = "selected";
                                    }
                                    var cityEach = '<option value="' + cityList[i].cityCode + '" ' + s_isSelected + '>' + cityList[i].city + '</option>';
                                    $("#js_city_find").append(cityEach);
                                }
                                $("#js_city_find").change();

                            }
                            find_city.init();
                            //省变动,市区一并重新初始化
                            $("#js_area_find").html("");
                            find_area.init();
                            find_area.lose();
                            $('.o_Dropdown').off('mouseleave'); //省市区去掉hover效果
                        }
                    },
                    error_cb: function() {}
                })
            }

            function resetArea() {
                var citySelect = $("#js_city_find option:selected").val();
                if(citySelect != "" && citySelect != undefined) {
                    $.ajax({
                        url: siteConfig.domain + "/interaction-service/regionInfo/queryRegion",
                        type: "get",
                        dataType: "json",
                        data: {
                            "cityId": citySelect
                        },
                        success_cb: function(data) {
                            if(data.isSuccess) {
                                var areaList = data.data;
                                $("#js_area_find").html("");
                                $("#js_area_find").append('<option value="">--请选择区--</option>');
                                if(areaList != null) {
                                    for(var i = 0; i < areaList.length; i++) {
                                        var q_isSelected = "";
                                        if(areaList[i].regionCode == dearea_code) {
                                            q_isSelected = "selected";
                                        }
                                        var cityEach = '<option value="' + areaList[i].regionCode + '" ' + q_isSelected + '>' + areaList[i].regionName + '</option>';
                                        $("#js_area_find").append(cityEach);
                                    }
                                }
                                find_area.init();
                            }
                        },
                        error_cb: function() {}
                    })
                }
            }
            $("#js_save_find").off('change').change(function() {
                resetCity();
            })
            $("#js_city_find").off('change').change(function() {
                resetArea();
            })

        } else if($(this).hasClass("js_popupbtn_error") || $(this).hasClass("js_popupbtn_feedback")) {
            myPopup.open({
                target: ".js_l-popup_error" //要弹出的弹层
            })
            $("html,body").animate({
                scrollTop: 0
            }, 500);
            $(".js_l-popup_error").css("top", "70px").addClass("absolute");
            if($(this).hasClass("js_popupbtn_error")) { //共用弹框更换内容
                $(".js_l-popup_error .l-popup-title").text("网站问题及建议反馈");
                $(".js_l-popup_error .l-popup-title").attr("valueId", contactUsClass.wzwtjjyfk);
                $(".js_l-popup_error .js_inputProposal").val("网站问题及建议反馈");
                $("#js_popup_feedback").html("");
                $("#js_popup_feedback").parents(".selectbox").find(".name").html("请选择");
                $("#js_popup_feedback").parents(".selectbox").find("ul li").removeClass("cur");
                $("#js_popup_feedback").append('<option value="" valueId="">--请选择--</option>');
                var productEach = '<option value="内容纠错" selected="selected"' + '>' + '内容纠错' + '</option>' +
                    '<option value="体验反馈与建议"' + '>' + '体验反馈与建议' + '</option>' +
                    '<option value="系统问题"' + '>' + '系统问题' + '</option>';
                $("#js_popup_feedback").append(productEach);
                feedback_problem.init();
            }
        }
    })
    //产品信息获取
    function resetProject() {
        $.ajax({
            url: siteConfig.domain + "/navigate/headnav/qcp/contact_us.json",
            type: "get",
            dataType: "json",
            success_cb: function(data) {
                if(typeof(data) != "undefined" && data != "" && data != null) {
                    $("#js_popup_product").html("");
                    $("#js_popupbtn_operate").html("");
                    $("#js_popup_product_find").html("");
                    $("#js_popup_product_member").html("");//会员服务与支持产品下拉框
                    var proList = data.data;
                    $("#js_popup_product").append('<option value="">--请选择--</option>');
                    $("#js_popupbtn_operate").append('<option value="">--请选择--</option>');
                    $("#js_popup_product_find").append('<option value="">--请选择--</option>');
                    $("#js_popup_product_member").append('<option value="">--请选择--</option>');//会员服务与支持产品下拉框
                    if(proList != null) {
                        for(var i = 0; i < proList.length; i++) {
                            var isSelected = "";
                            var cityEach = '<option value="' + proList[i].name + '">' + proList[i].name + '</option>';
                            $("#js_popup_product").append(cityEach);
                            $("#js_popupbtn_operate").append(cityEach);
                            $("#js_popup_product_find").append(cityEach);
                            $("#js_popup_product_member").append(cityEach);//会员服务与支持产品下拉框
                        }
                        productList_find.init();
                        productList.init();
                        productList_operate.init();
                        productList_member.init();//会员服务与支持产品下拉框
                    }
                }

            },
            error_cb: function() {}
        })
    }
    //select的验证
    //产品咨询等四个
    $(".js_customerService").click(function() {
        select_main();
        select_prod();
        if(!$(".js_after_address").hasClass("hide_address")) {
            select_address_after();
        }
    })
    $("#js_popup-type").on("change", function() {
        select_main();
    })
    $("#js_popup_product").on("change", function() {
        select_prod();
    })
    $("#js_area_after").on("change", function() {
        select_address_after();
    })

    function select_address_after() {
        if($("#js_area_after option:selected").val() == "" || $("#js_area_after option:selected").val() == null || typeof($("#js_area_after option:selected").val()) == "undefined") {
            $(".js_after_msg").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_after_msg").html("<i class='iconfont icon-information-solid'></i>请选择省市区");
        } else {
            $(".js_after_msg").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_after_msg").html("");
        }
    }

    function select_main() {
        if($("#js_popup-type").val() == "" || $("#js_popup-type").val() == null || typeof($("#js_popup-type").val()) == "undefined") {
            $(".js_main_msg").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_main_msg").html("<i class='iconfont icon-information-solid'></i>咨询类型不能为空");
        } else {
            $(".js_main_msg").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_main_msg").html("");
        }
    }

    function select_prod() {
        if($("#js_popup_product").val() == "" || $("#js_popup_product").val() == null || typeof($("#js_popup_product").val()) == "undefined") {
            $(".js_product_msg").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_product_msg").html("<i class='iconfont icon-information-solid'></i>请选择产品");
        } else {
            $(".js_product_msg").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_product_msg").html("");
        }
    }

    //招商联盟
    $(".js_join").click(function() {
        select_address();
        select_find();

    })
    $("#js_area_find").on("change", function() {
        select_address();
    })
    $("#js_popup_product_find").on("change", function() {
        select_find();
    })


    function select_address() {
        if($("#js_area_find option:selected").val() == "" || $("#js_area_find option:selected").val() == null || typeof($("#js_area_find option:selected").val()) == "undefined") {
            $(".js_region_msg").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_region_msg").html("<i class='iconfont icon-information-solid'></i>请选择详细地址");
        } else {
            $(".js_region_msg").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_region_msg").html("");
        }
    }

    function select_find() {
        if($("#js_popup_product_find").val() == "" || $("#js_popup_product_find").val() == null || typeof($("#js_popup_product_find").val()) == "undefined") {
            $(".js_popup_product_msg").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_popup_product_msg").html("<i class='iconfont icon-information-solid'></i>请选择产品");
        } else {
            $(".js_popup_product_msg").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_popup_product_msg").html("");
        }
    }
    //业务合作
    //$(".js_business").click(function() {
       //select_address_business();
        //select_prod_business();
    //})
    //$("#js_area_operate").on("change", function() {
        //select_address_business();
    //})
    //$("#js_popupbtn_operate").on("change", function() {
        //select_prod_business();
    //})

    function select_address_business() {
        if($("#js_area_operate option:selected").val() == "" || $("#js_area_operate option:selected").val() == null || typeof($("#js_area_operate option:selected").val()) == "undefined") {
            $(".js_area_msg").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_area_msg").html("<i class='iconfont icon-information-solid'></i>请选择省市区");
        } else {
            $(".js_area_msg").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_area_msg").html("");
        }
    }

    function select_prod_business() {
        if($("#js_popupbtn_operate").val() == "" || $("#js_popupbtn_operate").val() == null || typeof($("#js_popupbtn_operate").val()) == "undefined") {
            $(".js_popupbtn_msg").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_popupbtn_msg").html("<i class='iconfont icon-information-solid'></i>请选择产品");
        } else {
            $(".js_popupbtn_msg").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_popupbtn_msg").html("");
        }
    }
    //网站问题及建议反馈
    $(".js_proposal").click(function() {
        select_prod_proposal();
    })
    $("#js_popup_feedback").on("change", function() {
        select_prod_proposal();
    })

    function select_prod_proposal() {
        if($("#js_popup_feedback").val() == "" || $("#js_popup_feedback").val() == null || typeof($("#js_popup_feedback").val()) == "undefined") {
            $(".js_problem_msg").removeClass("Validform_right").addClass("Validform_wrong");
            $(".js_problem_msg").html("<i class='iconfont icon-information-solid'></i>问题类型不能为空");
        } else {
            $(".js_problem_msg").addClass("Validform_right").removeClass("Validform_wrong");
            $(".js_problem_msg").html("");
        }
    }
    //根据ip定位省市区
    function getAutoAddress() {
        $.ajax({
            url: siteConfig.domain + "/interaction-service/regionInfo/hpRegionInfoByIp",
            type: "get",
            dataType: "json",
            success_cb: function(returnData) {
                if(returnData.isSuccess) {
                    deprovince_code = returnData.data.provinceCode;
                    decity_code = returnData.data.cityCode;
                    dearea_code = returnData.data.areaCode;
                }
            }
        });
    }
    //省市获取方法
    function provincialUrbanArea() {
        $.ajax({
            url: siteConfig.domain + "/interaction-service/regionInfo/queryProvince",
            type: "get",
            dataType: "json",
            success_cb: function(data) {
                if(data.isSuccess) {
                    var proList = data.data;
                    $("#js_save_after").html(""); //售后服务
                    $("#js_save_after").append('<option value="">--请选择省--</option>');
                    if(proList != null) {
                        for(var i = 0; i < proList.length; i++) {
                            var isSelected = "";
                            if(proList[i].proCode == deprovince_code) {
                                isSelected = "selected";
                            }
                            var provinceEach = '<option value="' + proList[i].proCode + '" ' + isSelected + '>' + proList[i].province + '</option>';
                            $("#js_save_after").append(provinceEach); //售后服务
                        }
                        $("#js_save_after").change();
                        //$("#js_city_after").change();

                    }
                    //售后服务
                    after_save.init();
                    $("#js_area_after").html("");
                    after_area.init();
                    after_area.lose();
                    $("#js_city_after").html("");
                    after_city.init();
                    after_city.lose();

                }
            }
        })

        function resetCityAfter() {
            var proSelect = $("#js_save_after option:selected").val();
            $.ajax({
                url: siteConfig.domain + "/interaction-service/regionInfo/queryCity",
                type: "get",
                dataType: "json",
                data: {
                    "provinceId": proSelect
                },
                success_cb: function(data) {
                    if(data.isSuccess) {
                        var cityList = data.data;
                        $("#js_city_after").html("");
                        $("#js_city_after").append('<option value="">--请选择市--</option>');
                        if(cityList != null) {
                            for(var i = 0; i < cityList.length; i++) {
                                var s_isSelected = "";
                                if(cityList[i].cityCode == decity_code) {
                                    s_isSelected = "selected";
                                }
                                var cityEach = '<option value="' + cityList[i].cityCode + '" ' + s_isSelected + '>' + cityList[i].city + '</option>';
                                $("#js_city_after").append(cityEach);
                            }
                            $("#js_city_after").change();

                        }
                        after_city.init();
                        //省变动,市区一并重新初始化
                        $("#js_area_after").html("");
                        after_area.init();
                        after_area.lose();
                        $('.o_Dropdown').off('mouseleave'); //省市区去掉hover效果
                    }
                },
                error_cb: function() {}
            })
        }

        function resetAreaAfter() {

            var citySelect = $("#js_city_after option:selected").val();
            if(citySelect != "" && citySelect != undefined) {
                $.ajax({
                    url: siteConfig.domain + "/interaction-service/regionInfo/queryRegion",
                    type: "get",
                    dataType: "json",
                    data: {
                        "cityId": citySelect
                    },
                    success_cb: function(data) {
                        if(data.isSuccess) {
                            var areaList = data.data;
                            $("#js_area_after").html("");
                            $("#js_area_after").append('<option value="">--请选择区--</option>');
                            if(areaList != null) {
                                for(var i = 0; i < areaList.length; i++) {
                                    var q_isSelected = "";
                                    if(areaList[i].regionCode == dearea_code) {
                                        q_isSelected = "selected";
                                    }
                                    var cityEach = '<option value="' + areaList[i].regionCode + '" ' + q_isSelected + '>' + areaList[i].regionName + '</option>';
                                    $("#js_area_after").append(cityEach);
                                }
                            }
                            after_area.init();
                        }
                    },
                    error_cb: function() {}
                })
            }
        }
        $("#js_save_after").off('change').change(function() {
            resetCityAfter();
        })
        $("#js_city_after").off('change').change(function() {
            resetAreaAfter();
        })
    }
})