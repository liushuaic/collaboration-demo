package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.*;
import com.jk.service.IZhjService;

import com.jk.util.FileUtillll;
import com.jk.util.FtpFileUtil;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
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

    /**  商品管理列表查询  */
    @RequestMapping("querycyhList")
    @ResponseBody
    public List querycyhList(){
       List Product=zhjService.querycyhList();
        return Product;
    }
    private static final String url ="http://192.168.3.151:8080/solr";
    // home
    private static final String uri = "my_core";
    /**
     * 删除
     * @return
     */
    @RequestMapping("delcyhList")
    @ResponseBody
    public String delcyhList(String sn) throws IOException, SolrServerException {
        zhjService.delcyhList(sn);
        return "success";
    }

    /**
     * 添加
     * @return
     */
   @RequestMapping("addFrom")
    @ResponseBody
    public String addFrom(Product product,HttpServletRequest request, @RequestParam("file") MultipartFile file){
        String fileName = file.getOriginalFilename();
        InputStream inputStream= null;
        try {
            inputStream = file.getInputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }
        String filePath=null;
        Boolean flag= FtpFileUtil.uploadFile(fileName,inputStream);
        if(flag==true){
            System.out.println("ftp上传成功！");
            filePath=fileName;
        }
        product.setTitle("ftp://test:123@127.0.0.1/"+fileName);
         zhjService.addFrom(product);
        return "1";
    }
    /*@RequestMapping("addFrom")
    @ResponseBody
    public String uploadUserImg(MultipartFile userimg,HttpServletRequest req){
        String folderName = "upload";
        String folderPath = req.getSession()
                .getServletContext()
                .getRealPath("/")+folderName+"/";
        String imgName = FileUtillll.uploadFile(userimg, folderPath, folderName);

        return  imgName;
    }*/
    @RequestMapping("querycyhByid")
    public String querycyhByid(String sn,Model model){
        Product product=zhjService.querycyhByid(sn);
        model.addAttribute("product",product);
       return "product/updateCommodity";
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

    @RequestMapping("loginOut")
    @ResponseBody
    public  String loginOut(HttpServletRequest request){
        request.getSession().removeAttribute("loginAdmin");

        return "1";
    }

    public static SolrClient getSolrClient() {
        return new HttpSolrClient(url + "/" + uri);
    }



}
