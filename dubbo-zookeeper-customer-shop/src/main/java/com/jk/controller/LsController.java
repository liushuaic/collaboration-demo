package com.jk.controller;



import com.alibaba.fastjson.JSONObject;
import com.jk.model.Order;
import com.jk.model.User;
import com.jk.service.ILsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("lsController")
public class LsController {

    @Resource
    private ILsService lsService;

    @RequestMapping("queryUserList")
    @ResponseBody
    public List<User> queryUserList(User user){
        List<User> list = lsService.queryUserList(user);
        return list;
    }

    /**
     * 查询订单管理跳转页面
     * @return
     */
   @RequestMapping("orderList")
    public String orderList(){
        return "lsJsp/showOrder";
   }

    /**
     * 查询订单列表信息
     * @param
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    @RequestMapping("queryOrderList")
    @ResponseBody
    public JSONObject queryOrderList(int page, int rows) throws Exception{
        JSONObject orderList = lsService.queryOrderList(page,rows);
          return orderList;
    }




}
