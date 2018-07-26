package com.jk.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jk.model.Admin;
import com.jk.model.Order;
import com.jk.model.Product;
import com.jk.model.User;
import com.jk.service.ILsService;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.SolrInputDocument;
import org.apache.solr.common.util.NamedList;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
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

    /**
     * 电视查询
     * @return
     * @throws Exception
     */

    // solr 部署的url
    private static final String url ="http://192.168.3.168:8080/solr";
    // home
    private static final String uri = "my_core";
     @RequestMapping("queryProduct")
     @ResponseBody
     public String queryProduct(String searchValue,String sort) throws Exception{
         List<Product> list = lsService.queryProduct();
         SolrClient sc = getSolrClient();
         for(Product product : list){
             SolrInputDocument doc = new SolrInputDocument();
             doc.addField("id",product.getSn());
             doc.addField("name",product.getName());
             doc.addField("seotitle",product.getSeotitle());
             doc.addField("title",product.getTitle());
             doc.addField("marketprice",product.getMarketprice());
             sc.add(doc);
             sc.commit();
         }
         SolrQuery query = new SolrQuery();
       /*  query.setHighlight(true);//开启高亮
         query.setQuery(searchValue);//设置查询关键字
         query.addHighlightField(searchValue);//高亮字段
         query.setHighlightSimplePre("<font color='red'>");
         query.setHighlightSimplePost("</font>");
         query.setHighlightFragsize(1);*/
         if(searchValue!=null && !"".equals(searchValue)){
             query.setQuery(searchValue);
          }else{
                        //如果没有查询的关键字，则默认查询所有商品数据：
             query.setQuery("*:*");
          }

         SolrDocumentList results = sc.query(query).getResults();
       /*  QueryResponse solrQueryuery = solrClient.query(query);
         SolrDocumentList results = solrQueryuery.getResults();
         NamedList<Object> response = solrQueryuery.getResponse();
         NamedList highlighting = (NamedList) response.get("highlighting");
         for (int i = 0; i <highlighting.size() ; i++) {
             System.out.println(highlighting.getName(i)+"："+highlighting.getVal(i));
         }*/

         System.err.println(results);
         return JSON.toJSONString(results);
     }

    public static SolrClient getSolrClient() {
        return new HttpSolrClient(url + "/" + uri);
    }


    /**
     * 点击编辑时回显
     */
    @RequestMapping("queryOrderAll")
   public ModelAndView queryOrderAll(String orderid) throws Exception{
        Order list = lsService.queryOrderAll(orderid);
        ModelAndView mav = new ModelAndView();
        mav.addObject("order",list);
        mav.setViewName("lsJsp/dayin/bianji");
      return mav;
   }


    /**
     * 点击查看时回显
     */
    @RequestMapping("queryOrderChaKan")
    public ModelAndView queryOrderChaKan(String orderid) throws Exception{
        Order order = lsService.queryOrderAll(orderid);
        ModelAndView mav = new ModelAndView();
        mav.addObject("order",order);
        mav.setViewName("lsJsp/orderDetail");
        return mav;
    }

    /**
     * 修改编辑状态
     */
    @RequestMapping("updateStatus")
    @ResponseBody
    public Integer updateStatus(String orderid) throws Exception{
       Integer i = lsService.updateStatus(orderid);
        return i;
    }



    @RequestMapping("updateOrderById")
    @ResponseBody
    public Integer updateOrderById(Order order) throws Exception{
        Integer i = lsService.updateOrderById(order);
        return i;
    }


}
