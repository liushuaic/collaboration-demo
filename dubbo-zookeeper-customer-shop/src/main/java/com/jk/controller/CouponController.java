package com.jk.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jk.model.Coupon;
import com.jk.service.ICouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("couponController")
public class CouponController {
	@Autowired
	private ICouponService couponService;
	@RequestMapping("getCoupon")
	@ResponseBody
	public String getCoupon(int page, int rows, Coupon coupon){

		JSONObject json = couponService.getCoupon(page,rows,coupon);

		return json.toJSONStringWithDateFormat(json,"yyyy-MM-dd");
	}
	//单删+批删
	@RequestMapping("delCoupon")
	@ResponseBody
	public Map<String, Object> delCoupon(String ids){
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			couponService.delCoupon(ids);
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);
		}
		return map;
	}
	//跳转新增页面
	@RequestMapping("toAddCoupon")
	public String toAddCoupon(){

		return "coupon/addCoupon";
	}

	@RequestMapping("addCoupon")
	public ModelAndView addCoupon(Coupon coupon){
		ModelAndView mav = new ModelAndView("coupon/list");
		couponService.addCoupon(coupon);
		return mav;
	}
	//修改
	/*@RequestMapping("toUpdateType")
	@ResponseBody
	public ModelAndView toUpdateType(Integer ptid){
		ModelAndView mv= new ModelAndView();
		PetType type = ptservice.toUpdateType(ptid);
		mv.addObject("type0", type);
		mv.setViewName("updatePetType");
		return mv;
	}
	@RequestMapping("updateType")
	public ModelAndView updateType(PetType PetType){
		ModelAndView mv = new ModelAndView("petTypeList");
		ptservice.updateType(PetType);
		return mv;
	}*/
}
