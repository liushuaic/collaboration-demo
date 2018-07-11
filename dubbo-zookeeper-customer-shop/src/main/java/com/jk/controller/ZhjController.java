package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Product;
import com.jk.model.ProductCategory;
import com.jk.service.IZhjService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("zhjController")
public class ZhjController {
    @Resource
    private IZhjService zhjService;

    @RequestMapping("queryProduct")
    public String queryProduct(){
        return "product/showProduct";
    }

    @RequestMapping("queryProductList")
    @ResponseBody
    public JSONObject queryProductList(int page, int rows, Product pro){
        JSONObject json= new JSONObject();
        json= zhjService.queryProductList(page,rows,pro);

        return json;
    }


    @RequestMapping("toCategoryPage")
    public String toCategoryPage(){

        return "product/showCategory";
    }

    @RequestMapping("queryProductCategoryList")
    @ResponseBody
    public List<ProductCategory>   queryProductCategoryList(){
        String pid="0";
        List<ProductCategory> list  =   queryProductCategory(pid);
        return list;
    }
   /*  private   List<ProductCategory>    queryProductCategory( String pid){
         List<ProductCategory> list=zhjService.queryProductCategory(pid);
         for (ProductCategory category : list) {
             String id = category.getId();
             List<ProductCategory> mcateList = queryProductCategory(id);
             if (mcateList!=null && mcateList.size()>0) {
                 category.setChlidren(mcateList);
             }
         }
         return list;
    }*/

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

}
