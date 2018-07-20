$(function () {
    //点击展开问题详情
    $(".js_show").click(function () {
        if($(this).hasClass("icon-plus")){
            $(this).removeClass("icon-plus").addClass("icon-minus");
            $(this).parents(".serve_class").find(".serve_name").addClass("show");
            $(this).parents(".serve_class").find(".normal_line").addClass("show");
        }else{
            $(this).removeClass("icon-minus").addClass("icon-plus");
            $(this).parents(".serve_class").find(".serve_name").removeClass("show");
            $(this).parents(".serve_class").find(".normal_line").removeClass("show");
        }
    })
    $(".js_show_bottom").click(function () {
        if($(this).hasClass("icon-plus")){
            $(this).removeClass("icon-plus").addClass("icon-minus");
            $(this).parents(".problem_group").find(".problem_group_item").addClass("show");
        }else{
            $(this).removeClass("icon-minus").addClass("icon-plus");
            $(this).parents(".problem_group").find(".problem_group_item").removeClass("show");
        }
    })
    //点击问题下拉菜单
    $(".js_select_problem").click(function () {
        if($(this).find(".select_list").css("display")=="none"){
            $(this).find(".select_list").css("display","block");
            $("body").click(function (e) {
                var size1 = $(e.target).parents('.js_select_problem').size();
                if($(e.target).hasClass('js_show_bottom')){
                    $(".js_select_problem .select_list").css("display","block");
                }else if($(e.target).hasClass('js_select_problem')||size1){
                }else{
                    $(".js_select_problem .select_list").css("display","none");
                }
            })
        }else{
            $(this).find(".select_list").css("display","none");
        }
    })
    $(".js_select_problem .select_list .problem_group_item").click(function () {
        $(".select_bottom .select_list .problem_group_item").removeClass("active");
        $("http://image.tongshuai.com/tongshuai/images/.select_bottom .name").text($(this).text());
        $(this).addClass("active");
    })

})
