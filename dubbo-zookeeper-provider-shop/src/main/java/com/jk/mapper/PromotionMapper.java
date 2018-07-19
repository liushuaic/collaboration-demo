package com.jk.mapper;

import com.jk.model.Brand;
import com.jk.model.MemberRank;
import com.jk.model.ProductCategory;
import com.jk.model.Promotion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PromotionMapper {
	Long getPromotionCount(Promotion promotion);

	List<Promotion> getPromotion(@Param("start") int start, @Param("end") int end, @Param("promotion") Promotion promotion);

	void delPromotion(@Param("ids") String ids);

	List<MemberRank> getMember();

	List<ProductCategory> getpro();

	List<Brand> getBrand();

	void addPro(Promotion promotion);


	Promotion toUpdatePro(@Param("proid") String proid);

	void updatePro(Promotion promotion);
}
