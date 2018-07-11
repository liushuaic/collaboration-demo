package com.jk.controller;

import com.jk.model.MemberRank;
import com.jk.service.IMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("memberrank")
public class MemberController {

    @Autowired
    private IMemberService service;

    @RequestMapping("queryMenberList")
    @ResponseBody
    public  Map<String ,Object> queryMenberList(Integer page, Integer rows, MemberRank memberRank){
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("total", service.queryMenberCount(memberRank).size());
        map.put("rows", service.queryMenberList(page,rows,memberRank));
        return map;
    }
    @RequestMapping("toAddMember")
    public ModelAndView toAddMember(String id){
        ModelAndView mav = new ModelAndView("addMember");
        if (id != null && id != ""){
            mav.addObject("mr",service.queryMemberById(id));
        }
        return mav;
    }

    @RequestMapping("addMember")
    @ResponseBody
    public Map<String ,Object> addMember(MemberRank memberRank){
        Map<String ,Object> map = new HashMap<String,Object>();
        try {
            if (memberRank.getMrid() != "" && memberRank.getMrid() != null){
                service.updateMember(memberRank);
            }else{
                service.addMember(memberRank);
            }
            map.put("success",true);
        } catch (Exception e) {
            System.out.println( e.getLocalizedMessage());
            System.out.println( e.getMessage());
            map.put("success",false);
        }
        return map;
    }
    @RequestMapping("delMember")
    @ResponseBody
    public Map<String , Object> delRole(String ids){
        Map<String , Object> map = new HashMap<String, Object>();
        try {
            service.delMember(ids);
            map.put("success",true);
        } catch (Exception e) {
            System.out.println( e.getLocalizedMessage());
            System.out.println( e.getMessage());
            map.put("success",false);
        }
        return map;
    }
}
