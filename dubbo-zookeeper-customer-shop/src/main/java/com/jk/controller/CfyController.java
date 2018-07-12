package com.jk.controller;

import com.jk.model.Article;
import com.jk.model.Navigation;
import com.jk.service.ICfyService;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/cfyController")
public class CfyController {
    @Autowired
    private ICfyService cfyService;

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
        mav.addObject("lsit",list);
        mav.setViewName("cfyjsp/article/queryArticle");
        return mav;
    }

    //x新增 文章管理
    @RequestMapping("/saveArticle")
    @ResponseBody
    public  String saveArticle(Article article){
        cfyService.saveArticle(article);
        return "success";
    }

    //查询 文章管理
    @RequestMapping("/queryAtricle")
    @ResponseBody
    public List<Article> queryAtricle(){
        List<Article> list = cfyService.queryAtricle();
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
