package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Promotion;

public interface IPromotionService {
	JSONObject getPromotion(int page, int rows, Promotion promotion);
	void delPromotion(String ids);
}
