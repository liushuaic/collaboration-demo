package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Admin;
import com.jk.model.Order;
import com.jk.model.Product;
import com.jk.model.User;


import java.util.List;

public interface ILsService {

    List<User> queryUserList(User user);

    /**
     * 查询订单列表信息
     *
     * @param
     * @param
     * @return
     * @throws Exception
     */
    public List<Order> queryOrderList() throws Exception;

    /**
     * 收款管理
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    JSONObject queryPaymentList(int page, int rows) throws Exception;

    /**
     * 退款管理
     */
    JSONObject queryRefundsList(int page, int rows) throws Exception;

    /**
     * 发货管理
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    JSONObject queryShippingList(int page, int rows) throws Exception;


    /**
     * 退货管理
     */
    JSONObject queryReturnsList(int page, int rows) throws Exception;

    /**
     * 登陆
     */
    JSONObject login(Admin admin) throws Exception;

    /**
     * 电视查询
     */
    List<Product> queryProduct() throws Exception;
}
