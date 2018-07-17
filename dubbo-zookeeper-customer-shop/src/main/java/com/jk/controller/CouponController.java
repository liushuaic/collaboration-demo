package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Coupon;
import com.jk.service.ICouponService;
import com.jk.util.ExportExcel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("couponController")
public class CouponController {
	@Autowired
	private ICouponService couponService;
	//查询
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
	//新增之跳转页面
	@RequestMapping("toAddCoupon")
	public String toAddCoupon(){

		return "coupon/addCoupon";
	}
	//新增
	@RequestMapping("addCoupon")
	public ModelAndView addCoupon(Coupon coupon){
		ModelAndView mav = new ModelAndView("coupon/list");
		couponService.addCoupon(coupon);
		return mav;
	}
	//修改之回显
	@RequestMapping("toUpdateCoupon")
	@ResponseBody
	public ModelAndView toUpdateCoupon(String couid){
		ModelAndView mv= new ModelAndView();
		Coupon cou = couponService.toUpdateCoupon(couid);
		mv.addObject("cou", cou);
		mv.setViewName("coupon/addCoupon");
		return mv;
	}
	//修改
	@RequestMapping("updateCoupon")
	public ModelAndView updateCoupon(Coupon coupon){
		ModelAndView mv = new ModelAndView("coupon/list");
		couponService.updateCoupon(coupon);
		return mv;
	}
	//导出
	@RequestMapping("coudaochu")
	@ResponseBody
	public void coudaochu(Coupon coupon, HttpServletResponse response) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		List<Coupon> list = couponService.coudaochu();
		System.out.println(list);
		//poi导出数据
		String title = "组织机构信息";
		String[] rowsName = new String[]{"序号","姓名","起始日期","结束日期","最小商品数量","最大商品数量","最小商品价格","最大商品价格","价格运算表达式","是否启用","是否允许积分兑换","积分兑换数","介绍"};
		List<Object[]>  dataList = new ArrayList<Object[]>();
		Object[] objs = null;
		for (int i = 0; i < list.size(); i++) {
			objs = new Object[rowsName.length];
			Coupon cou = list.get(i);
			objs[0] = cou.getCouid();
			objs[1] = cou.getName();
			objs[2] = cou.getBegindate();
			objs[3] = cou.getEnddate();
			objs[4] = cou.getMinimumquantity();
			objs[5] = cou.getMaximumquantity();
			objs[6] = cou.getMinimumprice();
			objs[7] = cou.getMaximumprice();
			objs[8] = cou.getPriceexpression();
			objs[9] = cou.getIsEnabled();
			objs[10] = cou.getIsexchange();
			objs[11] = cou.getPoint();
			objs[12] = cou.getIntroduction();
			dataList.add(objs);
		}
		ExportExcel exportExcel = new ExportExcel(title, rowsName, dataList, response);
		try {
			exportExcel.export();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
