package com.jk.mapper;

import com.jk.model.Product;
import com.jk.model.ProductCategory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ZhjMapper {

    List<Product> queryProductList(@Param("start") int start, @Param("end") int end, @Param("pro") Product pro);

    Long queryCount(@Param("pro") Product pro);

    List<ProductCategory> queryProductCategory(@Param("pid") String pid);
}
