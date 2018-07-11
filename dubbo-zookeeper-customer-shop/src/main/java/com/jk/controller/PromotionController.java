package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Promotion;
import com.jk.service.IPromotionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("promotionController")
public class PromotionController {
	@Resource
	private IPromotionService promotionService;
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
}
