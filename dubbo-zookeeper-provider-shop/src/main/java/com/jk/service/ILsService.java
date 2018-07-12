package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Order;
import com.jk.model.User;


import java.util.List;

public interface ILsService {

    List<User> queryUserList(User user);

    /**
     * 查询订单列表信息
     *
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    public JSONObject queryOrderList(int page, int rows,Order order) throws Exception;

}
