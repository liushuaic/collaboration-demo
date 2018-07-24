package com.jk.controller;

import com.jk.model.Consultation;
import com.jk.model.Review;
import com.jk.service.IZixunService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: wangzewei
 * @Date: 2018/7/19 17:33
 * @Description:
 */
@Controller
@RequestMapping("zixun")
public class ZixunController {

    @Autowired
    private IZixunService zixunService;

    @RequestMapping("queryZixunList")
    @ResponseBody
    public List<Consultation> queryZixunList(){
        List<Consultation> consultationList = zixunService.queryZixunList();
        return consultationList;
    }

    @RequestMapping("toBack")
    public ModelAndView toBack(String id){
        ModelAndView mav = new ModelAndView("wzw/back");
        mav.addObject("b",zixunService.queryZixunBuId(id));
        return mav;
    }

    @RequestMapping("BackInfo")
    @ResponseBody
    public Map<String ,Object> BackInfo(Consultation consultation){
        Map<String ,Object> map = new HashMap<String, Object>();
        try {
            zixunService.BackInfo(consultation);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }
    @RequestMapping("queryInfoById")
    public ModelAndView queryInfoById(String id){
        ModelAndView mav = new ModelAndView("wzw/update");
        mav.addObject("c",zixunService.queryInfoById(id));
        return mav;
    }

    @RequestMapping("updateInfo")
    @ResponseBody
    public Map<String ,Object> updateInfo(Consultation consultation){
        Map<String ,Object> map = new HashMap<String, Object>();
        try {
            zixunService.updateInfo(consultation);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }

    @RequestMapping("delInfo")
    @ResponseBody
    public Map<String ,Object> delInfo(String ids){
        Map<String ,Object> map = new HashMap<String, Object>();
        try {
            zixunService.delInfo(ids);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }

    @RequestMapping("delPl")
    @ResponseBody
    public Map<String ,Object> delPl(String ids){
        Map<String ,Object> map = new HashMap<String, Object>();
        try {
            zixunService.delPl(ids);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }

    @RequestMapping("queryPinglunList")
    @ResponseBody
    public List<Review> queryPinglunList(){
        List<Review> ReviewList = zixunService.queryPinglunList();
        return ReviewList;
    }

    @RequestMapping("queryByInfo")
    @ResponseBody
    public Map<String ,Object> queryByInfo(String ss){
        Map<String ,Object> map = new HashMap<String, Object>();
        try {
            List<Review> reviewList = zixunService.queryByInfo(ss);
            map.put("a",reviewList);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }

    @RequestMapping("queryPlInfoById")
    public ModelAndView queryPlInfoById(String id){
        ModelAndView mav = new ModelAndView("wzw/updatepl");
        mav.addObject("c",zixunService.queryPlInfoById(id));
        return mav;
    }

    @RequestMapping("updatepl")
    @ResponseBody
    public Map<String ,Object> updatepl(Review review){
        Map<String ,Object> map = new HashMap<String, Object>();
        try {
            zixunService.updatepl(review);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }
}
