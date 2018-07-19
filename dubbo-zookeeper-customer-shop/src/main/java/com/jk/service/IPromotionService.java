package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Brand;
import com.jk.model.MemberRank;
import com.jk.model.ProductCategory;
import com.jk.model.Promotion;

import java.util.List;

public interface IPromotionService {
	JSONObject getPromotion(int page, int rows, Promotion promotion);

	void delPromotion(String ids);

	List<MemberRank> getMember();

	List<ProductCategory> getpro();

	List<Brand> getBrand();

	void addPro(Promotion promotion);

	Promotion toUpdatePro(String proid);

	void updatePro(Promotion promotion);
}
