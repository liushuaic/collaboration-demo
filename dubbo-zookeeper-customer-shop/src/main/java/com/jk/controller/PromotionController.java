package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.*;
import com.jk.service.IPromotionService;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("promotionController")
public class PromotionController {
	@Resource
	private IPromotionService promotionService;
	//查询
	@RequestMapping("getPromotion")
	@ResponseBody
	public String getPromotion(int page, int rows, Promotion promotion){
		JSONObject json = promotionService.getPromotion(page,rows,promotion);
		return json.toJSONStringWithDateFormat(json,"yyyy-MM-dd");
	}

	//单删+批删
	@RequestMapping("delPromotion")
	@ResponseBody
	public Map<String, Object> delPromotion(String ids){
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			promotionService.delPromotion(ids);
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);
		}
		return map;
	}

	//新增之跳转页面
	@RequestMapping("toAddPro")
	public String toAddPro(){
		return "promotion/saveOrUpdate";
	}

	//查询之
	//查询复选框
	@RequestMapping("getMember")
//	@ResponseBody
	public String   getMember(Model model){
		//会员等级
		List<MemberRank> memberList = promotionService.getMember();
		//商品分类
		List<ProductCategory> proList = promotionService.getpro();
		//品牌
		List<Brand> brandList = promotionService.getBrand();
		//会员等级
		model.addAttribute("memberList", memberList);
		//商品分类
		model.addAttribute("proList",proList);
		//品牌
		model.addAttribute("brandList",brandList);
		return "promotion/saveOrUpdate";
	}
	//新增
	@RequestMapping("addPro")
	public ModelAndView addPro(Promotion promotion){
		ModelAndView mv = new ModelAndView("promotion/list");
		promotionService.addPro(promotion);
		return mv;
	}

	//修改之
	//查询复选框
	@RequestMapping("toUpdatePro")
	public String  toUpdatePro(Model model,String proid){
		//会员等级
		List<MemberRank> memberList = promotionService.getMember();
		//商品分类
		List<ProductCategory> proList = promotionService.getpro();
		//品牌
		List<Brand> brandList = promotionService.getBrand();
		//修改回显
		Promotion pro = promotionService.toUpdatePro(proid);
		//会员等级
		model.addAttribute("memberList", memberList);
		//商品分类
		model.addAttribute("proList",proList);
		//品牌
		model.addAttribute("brandList",brandList);
		//修改回显
		model.addAttribute("pro", pro);
		return "promotion/saveOrUpdate";
	}

	//修改
	@RequestMapping("updatePro")
	public ModelAndView updatePro(Promotion promotion){
		ModelAndView mv = new ModelAndView("promotion/list");
		promotionService.updatePro(promotion);
		return mv;
	}

	/*
	//修改之回显
	@RequestMapping("toUpdatePro")
	@ResponseBody
	public ModelAndView toUpdatePro(String proid){
		ModelAndView mv= new ModelAndView();
		Promotion pro = promotionService.toUpdatePro(proid);
		mv.addObject("pro", pro);
		mv.setViewName("promotion/saveOrUpdate");
		return mv;
	}
	*/


}
