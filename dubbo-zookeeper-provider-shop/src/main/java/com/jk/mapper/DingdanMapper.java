package com.jk.mapper;

import com.jk.model.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: wangzewei
 * @Date: 2018/7/26 9:26
 * @Description:
 */
public interface DingdanMapper {
    List<Order> queryDaiping();

    List<Order> queryAll();

    void FuKuan(@Param("id") String id);

    void FaHuo(@Param("id") String id);

    void ShouHuo(@Param("id") String id);

    void TuiHuo(@Param("id") String id);

    void tongyituihuo(@Param("id")String id);
}
