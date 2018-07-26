package com.jk.controller;

import com.jk.model.Order;
import com.jk.service.IDingdanService;
import javassist.bytecode.stackmap.BasicBlock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: wangzewei
 * @Date: 2018/7/26 9:10
 * @Description:
 */
@Controller
@RequestMapping("dingdan")
public class DingdanController {

    @Autowired
    private IDingdanService dingdanService;

    @RequestMapping("queryDaiping")
    @ResponseBody
    public List<Order> queryDaiping(){
        List<Order> orderList = dingdanService.queryDaiping();
        return orderList;
    }

    @RequestMapping("queryAll")
    @ResponseBody
    public List<Order> queryAll(){
        List<Order> List = dingdanService.queryAll();
        return List;
    }

    @RequestMapping("FuKuan")
    @ResponseBody
    public Map<String,Object> FuKuan(String id){
        Map<String,Object> map = new HashMap<String,Object>();

        try {
            dingdanService.FuKuan(id);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }

    @RequestMapping("FaHuo")
    @ResponseBody
    public Map<String,Object> FaHuo(String id){
        Map<String,Object> map = new HashMap<String,Object>();

        try {
            dingdanService.FaHuo(id);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }

    @RequestMapping("ShouHuo")
    @ResponseBody
    public Map<String,Object> shouhuo(String id){
        Map<String,Object> map = new HashMap<String,Object>();

        try {
            dingdanService.ShouHuo(id);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }

    @RequestMapping("TuiHuo")
    @ResponseBody
    public Map<String,Object> TuiHuo(String id){
        Map<String,Object> map = new HashMap<String,Object>();

        try {
            dingdanService.TuiHuo(id);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }

    @RequestMapping("tongyituihuo")
    @ResponseBody
    public Map<String,Object> tongyituihuo(String id){
        Map<String,Object> map = new HashMap<String,Object>();

        try {
            dingdanService.tongyituihuo(id);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }
}
