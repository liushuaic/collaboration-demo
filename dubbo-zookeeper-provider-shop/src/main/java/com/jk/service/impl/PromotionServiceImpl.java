package com.jk.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.PromotionMapper;
import com.jk.model.*;
import com.jk.service.IPromotionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.convert.LongToBooleanConverter;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("promotionService")
public class PromotionServiceImpl implements IPromotionService{
	@Autowired
	private PromotionMapper promotionMapper;

	public JSONObject getPromotion(int page, int rows, Promotion promotion) {

		long total = promotionMapper.getPromotionCount(promotion);
		//起始位置 = （当前页-1）*每页条数
		int start = (page - 1) * rows;
		//结束位置 = 起始位置 + 每页条数
		int end = start + rows;

		List<Promotion> list = promotionMapper.getPromotion(start,end,promotion);
		//easyui 查询分页数据时 必须返回总条数（总条数必须叫total）  当前页展示数据（当前页展示数据必须叫 rows）
		JSONObject json = new JSONObject();
		//总条数
		json.put("total", total);
		//每页条数
		json.put("rows", list);

		return json;
	}

	public void delPromotion(String ids) {
		promotionMapper.delPromotion(ids);
	}

	@Override
	public List<MemberRank> getMember() {
		return promotionMapper.getMember();
	}

	@Override
	public List<ProductCategory> getpro() {
		return promotionMapper.getpro();
	}

	@Override
	public List<Brand> getBrand() {
		return promotionMapper.getBrand();
	}

	@Override
	public void addPro(Promotion promotion) {
		promotion.setProid(UUID.randomUUID().toString());
		if (promotion.getIsfreeshipping() == null || "".equals(promotion.getIsfreeshipping())){

			promotion.setIsfreeshipping("0");
		}
		if (promotion.getIscouponallowed() == null || "".equals(promotion.getIscouponallowed())){
			promotion.setIscouponallowed("0");
		}
		promotionMapper.addPro(promotion);
	}
}
