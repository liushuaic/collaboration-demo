package com.jk.mapper;

import com.jk.model.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018\7\19 0019.
 */
public interface TelevisionMapper {

    List<Product> queryTelevisionList(Product tel);

    Product TVShowById(@Param("sn") String sn);
}
