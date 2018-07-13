package com.jk.mapper;

import com.jk.model.Coupon;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CouponMapper {

	long getCouponCount(Coupon coupon);

	List<Coupon> getCoupon(@Param("start") int start, @Param("end") int end, @Param("coupon") Coupon coupon);

	void delCoupon(@Param("ids") String ids);

	void addCoupon(Coupon coupon);
}
