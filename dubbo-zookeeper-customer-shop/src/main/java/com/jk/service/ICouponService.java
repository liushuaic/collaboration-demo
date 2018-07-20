package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Coupon;

import java.util.List;

public interface ICouponService {
	JSONObject getCoupon(int page, int rows, Coupon coupon);

	void delCoupon(String ids);

	void addCoupon(Coupon coupon);

	Coupon toUpdateCoupon(String couid);

	void updateCoupon(Coupon coupon);

	List<Coupon> coudaochu();
}
