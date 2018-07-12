package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.*;
import com.jk.service.IZhjService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("zhjController")
public class ZhjController {
    @Resource
    private IZhjService zhjService;


    /**  跳转到商品管理页面  */
    @RequestMapping("queryProduct")
    public String queryProduct(){
        return "product/showProduct";
    }


    /**  商品管理列表查询  */
    @RequestMapping("queryProductList")
    @ResponseBody
    public JSONObject queryProductList(int page, int rows, Product pro){
        JSONObject json= new JSONObject();
        json= zhjService.queryProductList(page,rows,pro);

        return json;
    }

    /**  跳转到商品分类页面  */
    @RequestMapping("toCategoryPage")
    public String toCategoryPage(){

        return "product/showCategory";
    }
    /**  查询商品分类列表  */
    @RequestMapping("queryProductCategoryList")
    @ResponseBody
    public List<ProductCategory>   queryProductCategoryList(){
        String pid="0";
        List<ProductCategory> list  =   queryProductCategory(pid);
        return list;
    }
    /**  商品分类列表递归查询  */
    private List<ProductCategory> queryProductCategory(String pid) {
        List<ProductCategory> list=zhjService.queryProductCategory(pid);
        for (ProductCategory moduleModel : list) {
            List<ProductCategory> moduleList = queryProductCategory(moduleModel.getId());
            if (moduleList!=null && moduleList.size()>0) {
                moduleModel.setChildren(moduleList);
            }
        }
        return list;
    }

    /* 商品参数列表*/
    @RequestMapping("queryPamaterList")
    @ResponseBody
    public  JSONObject queryPamaterList(int page, int rows, Parameter parm){
        JSONObject json= new JSONObject();
        json= zhjService.queryPamaterList(page,rows,parm);
        return json;
    }

       /* 商品属性列表*/
    @RequestMapping("queryAttribute")
    @ResponseBody
    public  JSONObject queryAttribute(int page, int rows,Attribute att){
        JSONObject json= new JSONObject();
        json= zhjService.queryAttribute(page,rows,att);
        return json;
    }

    /* 商品属性列表*/
    @RequestMapping("querySpecificationList")
    @ResponseBody
    public  JSONObject querySpecificationList(int page, int rows,Specification spe){
        JSONObject json= new JSONObject();
        json= zhjService.querySpecificationList(page,rows,spe);
        return json;
    }

      /* 商品品牌列表*/
    @RequestMapping("queryBrandList")
    @ResponseBody
    public  JSONObject queryBrandList(int page, int rows,Brand brand){
        JSONObject json= new JSONObject();
        json= zhjService.queryBrandList(page,rows,brand);
        return json;
    }

        /* 商品到货通知列表*/
    @RequestMapping("queryProductNotifyList")
    @ResponseBody
    public  JSONObject queryProductNotifyList(int page, int rows,ProductNotify pro){
        JSONObject json= new JSONObject();
        json= zhjService.queryProductNotifyList(page,rows,pro);
        return json;
    }


    /*跳转到商品分类新增页面*/
    /**  跳转到商品管理页面  */
    @RequestMapping("toAddProductCategoryPage")
    public String toAddProductCategoryPage(Model model){
       List<Brand> list= zhjService.queryBrand();
        model.addAttribute("list",list);
        return "product/addProductCategoryPage";
    }

    @RequestMapping("queryCateTree")
    @ResponseBody
    public List<ProductCategory> queryCateTree(){
        String pid="0";
        List<ProductCategory> list  =   queryProductCategory(pid);
        return list;
    }
}
