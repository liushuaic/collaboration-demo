package com.jk.mapper;

import com.jk.model.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ZhjMapper {

    List<Product> queryProductList(@Param("start") int start, @Param("end") int end, @Param("pro") Product pro);

    Long queryCount(@Param("pro") Product pro);

    List<ProductCategory> queryProductCategory(@Param("pid") String pid);

    long queryParamCount(@Param("parm") Parameter parm);

    List<Product> queryPamaterList(@Param("start")int strat, @Param("end") int end, @Param("parm") Parameter parm);

    long queryAttributeCount(@Param("att")Attribute att);

    List<Product> queryAttribute(@Param("start")int strat,@Param("end") int end,@Param("att") Attribute att);

    long querySpecificationCount(@Param("spe")Specification spe);

    List<Product> querySpecificationList(@Param("start")int strat,@Param("end") int end,@Param("spe") Specification spe);

    long queryBrandCount(@Param("brand")Brand brand);

    List<Brand> queryBrandList(@Param("start")int start,@Param("end") int end,@Param("brand") Brand brand);

    long queryProductNotifyCount(@Param("pro")ProductNotify pro);

    List<ProductNotify> queryProductNotifyList(@Param("start")int start,@Param("end") int end,@Param("pro") ProductNotify pro);

    List<Brand> queryBrand();
}
