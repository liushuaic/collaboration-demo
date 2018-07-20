package com.jk.controller;

import com.jk.model.Member;
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
    public  List<MemberRank> queryMenberList(){
        return service.queryMenberList();
    }

    @RequestMapping("queryMenberList1")
    @ResponseBody
    public  List<MemberRank> queryMenberList1(){
        return service.queryMenberList();
    }

    @RequestMapping("queryMenberList2")
    @ResponseBody
    public  List<MemberRank> queryMenberList2(){
        return service.queryMenberList();
    }

    @RequestMapping("toAddMember")
    public ModelAndView toAddMember(String id){
        ModelAndView mav = new ModelAndView("wzw/addMember");
        if (id != null && id != ""){
            mav.addObject("mr",service.queryMemberById(id));
        }
        return mav;
    }
    @RequestMapping("toAddRemember")
    public ModelAndView toAddRemember(String id){
        ModelAndView mav = new ModelAndView("wzw/addRemember");
        if (id != null && id != ""){
            mav.addObject("me",service.queryRememberById(id));
            mav.setViewName("wzw/updateRemember");
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
    @RequestMapping("delRemember")
    @ResponseBody
    public Map<String , Object> delRemember(String ids){
        Map<String , Object> map = new HashMap<String, Object>();
        try {
            service.delRemember(ids);
            map.put("success",true);
        } catch (Exception e) {
            System.out.println( e.getLocalizedMessage());
            System.out.println( e.getMessage());
            map.put("success",false);
        }
        return map;
    }

    @RequestMapping("queryRememberList")
    @ResponseBody
    public  List<Member> queryRememberList(){
        List<Member> mlist = service.queryRememberList();
        return mlist;
    }
    @RequestMapping("addRemember")
    @ResponseBody
    public Map<String ,Object> addRemember(Member member){
        Map<String ,Object> map = new HashMap<String,Object>();
        try {
            service.addRemember(member);
            map.put("success",true);
        } catch (Exception e) {
            System.out.println( e.getLocalizedMessage());
            System.out.println( e.getMessage());
            map.put("success",false);
        }
        return map;
    }

    @RequestMapping("updateRemember")
    @ResponseBody
    public Map<String ,Object> updateRemember(Member member){
        Map<String ,Object> map = new HashMap<String,Object>();
        try {
            service.updateRemember(member);
            map.put("success",true);
        } catch (Exception e) {
            System.out.println( e.getLocalizedMessage());
            System.out.println( e.getMessage());
            map.put("success",false);
        }
        return map;
    }

    @RequestMapping("queryInfo")
    @ResponseBody
    public  ModelAndView queryInfo(String id){
        ModelAndView mav = new ModelAndView("wzw/info");
        mav.addObject("mm", service.queryInfo(id));
        return mav;
    }
}
