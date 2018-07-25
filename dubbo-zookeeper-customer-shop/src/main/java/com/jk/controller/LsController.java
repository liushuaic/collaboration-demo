package com.jk.controller;



import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jk.model.Admin;
import com.jk.model.Order;
import com.jk.model.User;
import com.jk.service.ILsService;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

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
     * 收款管理
     */

    @RequestMapping("queryPayment")
    public String queryReceipt(){
        return "lsJsp/showPayment";
    }

    /**
     * 退款管理
     */
    @RequestMapping("queryRefunds")
    private String queryRefunds(){
        return "lsJsp/showRefunds";
    }

    /**
     * 发货管理
     */
    @RequestMapping("queryShipping")
     private String queryDeliveryCorp(){
         return "lsJsp/showShipping";
     }

    /**
     * 退货管理
     */
      @RequestMapping("queryReturns")
      public String queryReturns(){
          return "lsJsp/showReturns";
      }

    /**
     * 查询订单列表信息
     * @param
     * @param
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("queryOrderList")
    @ResponseBody
    public List<Order> queryOrderList() throws Exception{
        List<Order> orderList = lsService.queryOrderList();
          return orderList;
    }

    /**
     * 收款管理
     */
    @RequestMapping("queryPaymentList")
    @ResponseBody
    public JSONObject queryPaymentList(int page,int rows) throws Exception{
        JSONObject paymentList = lsService.queryPaymentList(page,rows);
       return paymentList;
    }

    /**
     * 退款管理
     */

    @RequestMapping("queryRefundsList")
    @ResponseBody
    public JSONObject queryRefundsList(int page,int rows) throws Exception{
        JSONObject refundsList = lsService.queryRefundsList(page,rows);
        return refundsList;
    }

    /**
     * 发货管理
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    @RequestMapping("queryShippingList")
    @ResponseBody
    public JSONObject queryShippingList(int page,int rows) throws Exception{
        JSONObject shippingList = lsService.queryShippingList(page,rows);
        return shippingList;
    }

    /**
     * 退货管理
     */
    @RequestMapping("queryReturnsList")
    @ResponseBody
    public JSONObject queryReturnsList(int page,int rows) throws Exception{
        JSONObject returnslist = lsService.queryReturnsList(page,rows);
        return returnslist;
    }


//登陆
    @RequestMapping("login")
    @ResponseBody
    public String login(Admin admin, HttpSession session) throws Exception {
        JSONObject json = lsService.login(admin);
        Admin newAdmin = (Admin) json.get("newadmin");
        if(newAdmin != null){
            session.setAttribute("loginAdmin", newAdmin);
        }
        return json.getString("flag");
    }








}
