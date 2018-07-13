package com.jk.controller;

import com.jk.model.Article;
import com.jk.model.ArticleCategory;
import com.jk.model.Navigation;
import com.jk.model.Tag;
import com.jk.service.ICfyService;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cfyController")
public class CfyController {
    @Autowired
    private ICfyService cfyService;

    //查询 标签管理
    @RequestMapping("/queryLabel")
    @ResponseBody
    public List<Tag> queryLabel(){
        List<Tag> list=cfyService.queryLabel();
        return list;
    }

    //查询 文章分类
    @RequestMapping("/queryAtricleCategory")
    @ResponseBody
    public List<ArticleCategory> queryAtricleCategory(){
        List<ArticleCategory> list=cfyService.queryAtricleCategory();
        return list;
    }

    //删除 文章管理
    @RequestMapping("/deleteArticle")
    @ResponseBody
    public String deleteArticle(String id){
        cfyService.deleteArticle(id);
        return "success";
    }

    //修改 文章管理
    @RequestMapping("/updateArticle")
    @ResponseBody
    public  String updateArticle(Article article){
        cfyService.updateArticle(article);
        return "success";
    }

    //回显 文章管理
    @RequestMapping("/huixianArticle")
    public ModelAndView huixianArticle(String id){
        ModelAndView mav=new ModelAndView();
        Article list=cfyService.huixianArticle(id);
        mav.addObject("list",list);
        mav.setViewName("cfyjsp/article/huixian");
        return mav;
    }

    //x新增 文章管理
    @RequestMapping("/saveArticle")
    @ResponseBody
    public Map<String ,Object> saveArticle(Article article){
        Map<String ,Object> map = new HashMap<String ,Object>();
        try {
            cfyService.saveArticle(article);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            e.getMessage();
            e.getLocalizedMessage();
            map.put("success",false);
        }
        return map;
    }

    //查询 文章管理
    @RequestMapping("/queryAtricle")
    @ResponseBody
    public List<Article> queryAtricle(String title){
        List<Article> list = cfyService.queryAtricle(title);
        return list;
    }

    //查询 导航管理
    @RequestMapping("/queryNavigation")
    @ResponseBody
    public List<Navigation> queryNavigation(){
        List<Navigation> list = cfyService.queryNavigation();
        return list;
    }

    //删除 导航管理
    @RequestMapping("/deleteNavigation")
    @ResponseBody
    public  String  deleteNavigation(String id){
        cfyService.deleteNavigation(id);
        return "succerss";
    }

    //回显 导航管理
    @RequestMapping("/huixianNavigation")
    public ModelAndView huixianNavigation(String id){
        ModelAndView mav= new ModelAndView();
        Navigation list = cfyService.huixianNavigation(id);
        mav.addObject("list",list);
        mav.setViewName("cfyjsp/content/huixian");
        return mav;
    }

    //修改 导航管理
    @RequestMapping("/updateNavigation")
    @ResponseBody
    public String updateNavigation(Navigation navigation){
        cfyService.updateNavigation(navigation);
        return "success";
    }

    //新增 导航管理
    @RequestMapping("/saveNav")
    @ResponseBody
    public  String  saveNav(Navigation navigation){
        cfyService.saveNav(navigation);
        return "success";
    }

}
