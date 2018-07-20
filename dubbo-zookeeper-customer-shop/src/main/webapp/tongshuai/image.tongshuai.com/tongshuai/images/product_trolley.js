$(function () {

    /**
     * 服务请求
     **/
    //sku服务
    var skuServer = {
        //根据inskucode集合查询SKU相关信息
        getSkuByCodes: function (data, skuCodesObj) {
            $.ajax({
                url: siteConfig.apiUrl + "/sku/front/sku/getSkuByCodes/",
                type: 'get',
                data: data,
                success_cb: function (data) {
                    if (data.isSuccess) {
                        //测试数据
                        // var data = trolleyListData;

                        // 设置模版-填充数据并展示
                        var trolleyData = data.data;
                        jQuery.each(trolleyData, function (i, n) {
                            var cartGoodId = skuCodesObj[n.skuShowVO.inSkuCode]['cartGoodId'],
                                quantity = skuCodesObj[n.skuShowVO.inSkuCode]['quantity'];
                            n.skuShowVO['quantity'] = quantity;
                            n.skuShowVO['cartGoodId'] = cartGoodId;
                        })

                        if (trolleyData.length > 0) {
                           $('.empty-trolley-pro-list').hide();
                           $('.js-trolley-footer').show();
                        }

                        $('.js-product-num').text(trolleyData.length)
                        $(".js_trolleyListData").setTemplateElement("template-items");
                        $(".js_trolleyListData").processTemplate(trolleyData);
                        
                        
                        trolleyDatafun();
                    }

                },
                error_cb: function (jqXHR, textStatus, errorThrown) {
                    if (jqXHR.status == 401) {
//                      console.log('用户未登录');
                    }
                }
            });
        }
    };
    //购物车服务
    var trolleyServer = {
        //删除购物车商品
        deleteFun: function (data) {
            $.ajax({
                url: siteConfig.apiUrl + "/order/cartGoods/delete/",
                data: data,
                // applicationType:true,
                success_cb: function (data) {
                    trolleyServer.list();
                },
                error_cb: function (jqXHR, textStatus, errorThrown) {
                    if (jqXHR.status == 401) {
//                      console.log('用户未登录');
                    }
                }
            });
        },
        //获取购物车商品列表
        list: function () {
            $.ajax({
                url: siteConfig.apiUrl + "/order/cartGoods/list/",
                applicationType: true,
                success_cb: function (data) {
                    if (data.isSuccess) {
                        //inSkuCode集合
                        var skuCodesArray = new Array();
                        //购物车商品数量(quantity)和购物车商品id(cartGoodId)
                        var skuCodesObj = new Object();
                        jQuery.each(data.data, function (i, n) {
                            skuCodesArray.push(n.inSkuCode);
                            skuCodesObj[n.inSkuCode] = new Object();
                            skuCodesObj[n.inSkuCode]['cartGoodId'] = n.cartGoodId;
                            skuCodesObj[n.inSkuCode]['quantity'] = n.quantity;
                        });

                        var skuData = {
                            // skuCodes: skuCodesArray.join(','),
                            skuCodes: skuCodesArray.join(','),
                            regionCode: $('.js_ipAddress').attr('areaCode')
                        }
                        //根据inskucode集合查询SKU相关信息
                        skuServer.getSkuByCodes(skuData, skuCodesObj);
                    }
                },
                error_cb: function (jqXHR, textStatus, errorThrown) {
                    if (jqXHR.status == 401) {
//                      console.log('用户未登录');
                    }
                }
            });
        },
        //修改购物车商品数量
        save: function (data) {
            $.ajax({
                url: siteConfig.apiUrl + "/order/cartGoods/save/",
                csrf: true,
                data: JSON.stringify(data),
                applicationType: true,
                success_cb: function (data) {
                    if (data.isSuccess) {
                        return false;
                    }
                    return true;//终止购物车商品数量增减
                },
                error_cb: function (jqXHR, textStatus, errorThrown) {
                    // if(jqXHR.status==401){
                    //     console.log('用户未登录');
                    // }
                    return true;//终止购物车商品数量增减
                }
            });
        }
    };
    //获取用户信息
    var userServer = {
        getUserInfo: function () {
            $.ajax({
                type: "get",
                // url: siteConfig.userUrl + "/hshop-user/front/user/userInfo",
                url: siteConfig.domain + "/hshop-user/front/user/userInfo",
                login: true,
                success_cb: function (data) {
                    if (data.isSuccess) {
                        $('.js_userName').html(data.data.loginName);
                    }
                }
            });
        }
    }

    $(window).resize(function () {
        init();
    });

    function init() {
        var screenWidth = document.body.offsetWidth;
        var screenHeight = document.body.offsetHeight;
    }


    $(".js_checkbox").jq_qvote(); // 初始化多选

    /**
     * 购物车商品选择
     * 单选、多选
     */
    $(".js_checkbox").live('change', function () {
        if ($(this).hasClass('js-checked-all')) {
            if ($(this).prop('checked')) {
                $(".js_checkbox").each(function () {
                    $(this)[0].checked = true
                    $(this).prev().removeClass('c_ipt_cr_cus').addClass('c_ipt_cr_cs')
                })
                $('.trolley-product').addClass('trolley-product-selected')
            } else {
                $(".js_checkbox").each(function () {
                    $(this)[0].checked = false
                    $(this).prev().addClass('c_ipt_cr_cus').removeClass('c_ipt_cr_cs')
                })
                $('.trolley-product').removeClass('trolley-product-selected')
            }
        } else {
            if ($(this).prop('checked')) {
                $(this).parents('.trolley-product').addClass('trolley-product-selected')
                if ($('.trolley-product').length == $('.trolley-product-selected').length) {
                    $('.js-checked-all').each(function () {
                        $(this)[0].checked = true
                        $(this).prev().removeClass('c_ipt_cr_cus').addClass('c_ipt_cr_cs')
                    })
                }
            } else {
                $(this).parents('.trolley-product').removeClass('trolley-product-selected')
                if ($('.trolley-product').length > $('.trolley-product-selected').length) {
                    $('.js-checked-all').each(function () {
                        $(this)[0].checked = false
                        $(this).prev().addClass('c_ipt_cr_cus').removeClass('c_ipt_cr_cs')
                    })
                }
            }
        }

        $('.js-selectd-num').text($('.trolley-product-selected').length)
        var totalAmount = 0;

        $('.trolley-product-selected').each(function () {
            totalAmount += parseFloat($(this).find('.js_trolleyPrice').text().substring(1, 10)) * parseInt($('.js_trolleyNumber input').val())
        })
        $('.js-total-amount').html('<span>合计：</span> ￥' + totalAmount)
    })

    /**
     *   服务对接
     */

    //区分静态页面，之后去掉
    if (window.location.host.indexOf("123") > 0 || window.location.href.indexOf("product_trolley.shtml") > 0) {
        trolleyDatafun();
        return false;
    }

    function trolleyDatafun() {
        //避免checkbox重复初始化
        $(".js_checkbox").each(function (i, n) {
            $(this).siblings('.c_ipt_cr ').size() < 1 && $(this).jq_qvote();
        });

        /**
         * 商品数量加减
         */
        $('.js_trolleyNumber').numberRule({

            // plus:'.icon-plus',
            // minus:'.icon-minus',
            // input:'input',
            // preNum:1,

            beforeMinusRule: function (num, ele) {
                if (num < 1) {
                    return true;//终止操作,即终止+1
                } else {
                    var inskucode = $(ele).attr('data-inskucode'),
                        quantity = parseInt($(ele).find('input').val()) - 1;

                    // 更新价格
                    var price = parseFloat($(ele).parent().prev().find('.js_trolleyPrice').html().substring(1, 10))
                    $(ele).parent().next().find('.trolley-price-total').html('¥' + price * quantity)

                    var trolleyData = [{
                        inSkuCode: inskucode,
                        quantity: quantity,
                        regionCode: $('.js_ipAddress').attr('areaCode')
                    }]
                    return trolleyServer.save(trolleyData);
                }
            },
            beforePlusRule: function (num, ele) {
                if (num < 1) {
                    return true;//终止操作
                } else {
                    var inskucode = $(ele).attr('data-inskucode'),
                        quantity = parseInt($(ele).find('input').val()) + 1;

                    // 更新价格
                    var price = parseFloat($(ele).parent().prev().find('.js_trolleyPrice').html().substring(1, 10))
                    $(ele).parent().next().find('.trolley-price-total').html('¥' + price * quantity)

                    var trolleyData = [{
                        inSkuCode: inskucode,
                        quantity: quantity,
                        regionCode: $('.js_ipAddress').attr('areaCode')
                    }];
                    return trolleyServer.save(trolleyData);
                }
            }
        });

        $('.js_edit').on('click', function () {
            // var parent = $(this).parent().parent();
            var parent = $(this).parentsUntil('.trolley-prolist');
            if ($(this).attr('data-oppo') == 'edit') {
                parent.find('.js_trolleyNumber').removeClass('opacity-0');
                parent.find('.js_trolleyFont').addClass('opacity-0');
                parent.find('.js_trolleyPrice').addClass('opacity-0');
                parent.find('.js-mul').hide();
                parent.find('.js-product-num').hide();
                $(this).attr('data-oppo', 'finish').html('完成');
                $(this).siblings('.js_deleteXs').removeClass('opacity-0');
            } else {
                parent.find('.js_trolleyNumber').addClass('opacity-0');
                parent.find('.js_trolleyFont').removeClass('opacity-0');
                parent.find('.js_trolleyPrice').removeClass('opacity-0');
                parent.find('.js-mul').show();
                parent.find('.js-product-num').show();
                $(this).attr('data-oppo', 'edit').html('编辑');
                $(this).siblings('.js_deleteXs').addClass('opacity-0');
            }
        });

        //删除购物车商品
        $('.js_proDelete').on('click', function (event) {
            //防止事件冒泡
            event.stopPropagation();
            $this = $(this);
            if (!istrsidssdssotoken()) {
                //用户未登录时，物理删除
                return false;
            }

            leaderConfirm.open({
                info: "确定要删除这件商品么？", //提示信息
                ele: $(this), //传递对象
                callbackFn: function (ele) { //确认后执行方法
                    var cartGoodId = $this.attr('data-cartGoodId');
                    var trolleyData = {
                        cartGoodId: cartGoodId
                    }
                    trolleyServer.deleteFun(trolleyData);
                    return;
                },
            });

        });
    }

    //前台判断是否登陆
    if (!istrsidssdssotoken()) {
//      console.log('用户未登录')
        // jumpToLoginPage();
    }

    /**
     * 根据ip获取地址信息
     */
    var ipAddress = leaderServer.getIpAddress().then(function (data) {
        var params = {
            provinceName: data.data.provinceName,
            cityName: data.data.cityName
        }
        leaderServer.regionInfo(params).then(function (address) {
            var add = {
                'save': address.data.provinceName,
                'city': address.data.cityName,
                'area': address.data.areaName,
                'savecode': address.data.provinceName,
                'citycode': address.data.cityCode,
                'areacode': address.data.areaCode,
            }

            $('.js_ipAddress').attr('areaCode', address.data.areaCode).text(address.data.provinceName + ' ' + address.data.cityName + ' ' + address.data.areaName)

            /**
             * @param {*} regionData 
             * { "areaCode":2450, "areaName":"崂山区", "cityCode":173, "cityName":"青岛", "code":null, "provinceCode":16, "provinceName":"山东" }
             */
            var addressCallback = function (regionData) {
                $('.js_ipAddress').attr('areaCode', regionData.areaCode).text(regionData.provinceName + ' ' + regionData.cityName + ' ' + regionData.areaName)
                $('.js_addShadeTop').hide()
            }

            $('.js_ipAddress').on('click', function () {
                addressAlert(add, addressCallback)
            })

            // 加载购物车商品信息 一期暂时隐藏
            // skuInit()
        })

    })

    /**
     * 获取用户信息
     */
    userServer.getUserInfo();


    /**
     * 去结算
     */
    $('.js-pay').on('click', function () {
        var orderArr = []
        $('.trolley-product-selected').each(function () {
            orderArr.push({
                "regionCode": $('.js_ipAddress').attr('areaCode'),
                "cartId": $(this).parent('.trolley-prolist').attr('cartId'),
                "buyNum": $(this).find('.js_trolleyNumber').find('input').val(),
                "inSkuCode": $(this).parent('.trolley-prolist').attr('inSkuCode')
            })
        })
        var orderCode = ('' + Math.random()).substring(3, 10)
        if (orderArr.length > 0) {
            $.cookie('orderCode' + orderCode, JSON.stringify(orderArr), {
                'path': '/',
                // 'domain':'http://image.tongshuai.com/tongshuai/images/.tongshuai.com'
            });
            window.location.href = siteConfig.orderConfirmUrl + "?code=" + orderCode
        }
    })


    /**
     * 商品信息初始化
     */
    function skuInit() {
        // 查询当前 cookie 中是否有本地购物车商品
        if ($.cookie('goodsInCart') && istrsidssdssotoken()) {
            var goodsInCartArr = JSON.parse($.cookie('goodsInCart'))
            $.ajax({
                type: "post",
                // url: siteConfig.userUrl + "/buy/order/cartGoods/save",
                url: siteConfig.domain + "/buy/order/cartGoods/save",
                csrf: true,
                applicationType: true,
                data: JSON.stringify(goodsInCartArr),
                success_cb: function (data) {
                    if (data.isSuccess) {
                        // 添加成功清除历史 cookie 
                        $.cookie('goodsInCart', null)
                        //获取购物车列表
                        trolleyServer.list();
                    }
                },
                error_cb: function (jqXHR, textStatus, errorThrown) {
                    if (jqXHR.responseText) {
                        console.log(JSON.parse(jqXHR.responseText).resultMsg)
                        //获取购物车列表
                        trolleyServer.list();
                    }
                }
            });
        } else if (istrsidssdssotoken()) {
            //获取购物车列表
            trolleyServer.list();
        } else if ($.cookie('goodsInCart')) {
            var goodsInCartArr = JSON.parse($.cookie('goodsInCart'))
            //inSkuCode集合
            var skuCodesArray = new Array();
            //购物车商品数量(quantity)和购物车商品id(cartGoodId)
            var skuCodesObj = new Object();
            jQuery.each(goodsInCartArr, function (i, n) {
                skuCodesArray.push(n.inSkuCode);
            });

            var skuData = {
                skuCodes: skuCodesArray.join(','),
                regionCode: $('.js_ipAddress').attr('areaCode')
            }
            //根据inskucode集合查询SKU相关信息
            skuServer.getSkuByCodes(skuData, skuCodesObj);
        }
    }

});
