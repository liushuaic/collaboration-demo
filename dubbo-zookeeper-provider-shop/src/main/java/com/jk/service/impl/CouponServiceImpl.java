package com.jk.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.CouponMapper;
import com.jk.model.Coupon;
import com.jk.service.ICouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("couponService")
public class CouponServiceImpl implements ICouponService{
	@Autowired
	private CouponMapper couponMapper;

	@Override
	public JSONObject getCoupon(int page, int rows, Coupon coupon) {
		//总条数
		long total = couponMapper.getCouponCount(coupon);
		//起始位置=(当前页-1)*每页条数
		int start = (page - 1) * rows;
		//结束位置=起始位置 * 每页条数
		int end = start + rows;
		//总条数必须叫total 当前展示条数必须叫rows
		List<Coupon> list = couponMapper.getCoupon(start,end,coupon);
		JSONObject json = new JSONObject();
		//总条数
		json.put("total",total);
		//每页条数
		json.put("rows",list);
		return json;
	}

	@Override
	public void delCoupon(String ids) {

		couponMapper.delCoupon(ids);
	}

	@Override
	public void addCoupon(Coupon coupon) {
		coupon.setCouid(UUID.randomUUID().toString());
		if(coupon.getIsEnabled() == null || "".equals(coupon.getIsEnabled())){
			coupon.setIsEnabled("0");
		}
		if(coupon.getIsexchange() == null || "".equals(coupon.getIsexchange())){
			coupon.setIsexchange("0");
		}
		couponMapper.addCoupon(coupon);
	}

	@Override
	public Coupon toUpdateCoupon(String couid) {
		return couponMapper.toUpdateCoupon(couid);
	}

	@Override
	public void updateCoupon(Coupon coupon) {

		if (coupon.getIsEnabled() == null || "".equals(coupon.getIsEnabled())){
			coupon.setIsEnabled("0");
		}
		if (coupon.getIsexchange() == null || "".equals(coupon.getIsexchange())){
			coupon.setIsexchange("0");
		}
		couponMapper.updateCoupon(coupon);
	}

	@Override
	public List<Coupon> coudaochu() {
		return couponMapper.coudaochu();
	}


}
