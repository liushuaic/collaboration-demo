package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Order;
import com.jk.model.User;


import java.util.List;

public interface ILsService {

    List<User> queryUserList(User user);

    /**
     * 查询订单列表信息
     * @param
     * @param page
     * @param rows
     * @param order
     * @return
     * @throws Exception
     */
    public JSONObject queryOrderList(int page, int rows, Order order) throws Exception;

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
     * @param page
     * @param rows
     * @return
     * @throws Exception
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
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    JSONObject queryReturnsList(int page, int rows) throws Exception;
}
