package com.jk.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.LsMapper;
import com.jk.model.Order;
import com.jk.model.User;
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
    public JSONObject queryOrderList(int page, int rows,Order order) throws Exception {
        long total = lsMapper.queryOrderCount(order);
        int strat = (page - 1) * rows;
        int end = strat + rows;
        List<Order> list = lsMapper.queryOrderList(strat,end,order);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }






}
