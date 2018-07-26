package com.jk.controller;

import com.jk.model.Cart;
import com.jk.model.Product;
import com.jk.service.ITelevisionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018\7\19 0019.
 */
@Controller
@RequestMapping("television")
public class TelevisionController {

      @Resource
      private ITelevisionService televisionService;

      @RequestMapping("queryTelevisionList")
      @ResponseBody
      public  List<Product>  queryTelevisionList(Model mm,Product tel){
          List<Product> list=televisionService.queryTelevisionList(tel);

          return list;
      }


    @RequestMapping("TVShowById")
    @ResponseBody
    public Product TVShowById(Model mm,String sn){
       Product pro=televisionService.TVShowById(sn);
        mm.addAttribute("pro",pro);
        return pro;
    }

   @RequestMapping("insertCart")
  @ResponseBody
    public String insertCart(Cart cart){
       televisionService.insertCart(cart);
       return "1";
   }

    @RequestMapping("queryCartAll")
    @ResponseBody
    public List<Cart> queryCartAll(String userid){
        return televisionService.queryCartAll(userid);
    }

    @RequestMapping("minusQuantity")
    @ResponseBody
    public String minusQuantity(String cartid){
        televisionService.minusQuantity(cartid);
        return "1";
    }
    @RequestMapping("plusQuantity")
    @ResponseBody
    public String plusQuantity(String cartid){
        televisionService.plusQuantity(cartid);
        return "1";
    }

    @RequestMapping("delCart")
    @ResponseBody
    public String delCart(String cartid){
        televisionService.delCart(cartid);
        return "1";
    }
}
