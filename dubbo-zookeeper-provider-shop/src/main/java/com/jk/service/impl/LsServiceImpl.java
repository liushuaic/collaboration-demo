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


    public List<Order> queryOrderList() throws Exception {
        List<Order> list = lsMapper.queryOrderList();
        return list;
    }

    /**
     * 查询订单列表信息
     *
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */


    /**
     * 收款管理
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */

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

    /**
     * 登陆
     * @param admin
     * @return
     * @throws Exception
     */

    public JSONObject login(Admin admin) throws Exception {
        JSONObject jsonObj = new JSONObject();
        Integer flag = 0;
        List<Admin> adminlist = lsMapper.queryAdminByName(admin.getUsername());
        if(adminlist != null && adminlist.size() > 0){
            flag = 1;
            Admin newadmin  = adminlist.get(0);
            if(admin.getPassword().equals(newadmin.getPassword())){
                flag = 2;
                jsonObj.put("newadmin", newadmin);
            }
        }
        jsonObj.put("flag", flag);
        return jsonObj;
    }

    /**
     * 电视查询
     * @return
     * @throws Exception
     */
    public List<Product> queryProduct() throws Exception {
        List<Product> list = lsMapper.queryProduct();
        return list;
    }


}
