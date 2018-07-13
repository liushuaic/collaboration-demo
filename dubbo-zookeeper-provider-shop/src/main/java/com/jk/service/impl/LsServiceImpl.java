package com.jk.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.LsMapper;
import com.jk.model.*;
import com.jk.service.ILsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("lsService")
public class LsServiceImpl implements ILsService {

    @Autowired
    private LsMapper lsMapper;

 public List<User> queryUserList(User user) {
        return lsMapper.queryUserList(user);
    }

    /**
     * 查询订单列表信息
     *
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    public JSONObject queryOrderList(int page, int rows, Order order) throws Exception {
        long total = lsMapper.queryOrderCount(order);
        int strat = (page - 1) * rows;
        int end = strat + rows;
        List<Order> list = lsMapper.queryOrderList(strat,end,order);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }

    /**
     * 收款管理
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    @Override
    public JSONObject queryPaymentList(int page, int rows) throws Exception {
        long total = lsMapper.queryPaymentcount();
        int start = ( page - 1) * rows;
        int end = start + rows;
        List<Payment> list = lsMapper.queryPaymentList(start,end);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }

    /**
     * 退款管理
     */
    @Override
    public JSONObject queryRefundsList(int page, int rows) throws Exception {
        long total = lsMapper.queryRefundscount();
        int start = ( page - 1) * rows;
        int end = start + rows;
        List<Refunds> list = lsMapper.queryRefundsList(start,end);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }

    /**
     * 发货管理
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    @Override
    public JSONObject queryShippingList(int page, int rows) throws Exception {
        long total = lsMapper.queryShippingcount();
        int start = ( page - 1) * rows;
        int end = start + rows;
        List<Shipping> list = lsMapper.queryShippingList(start,end);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }

    @Override
    public JSONObject queryReturnsList(int page, int rows) throws Exception {
        long total = lsMapper.queryReturnscount();
        int start = ( page - 1) * rows;
        int end = start + rows;
        List<Returns> list = lsMapper.queryReturnsList(start,end);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }


}
