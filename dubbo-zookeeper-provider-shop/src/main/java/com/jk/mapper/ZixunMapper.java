package com.jk.mapper;

import com.jk.model.Consultation;
import com.jk.model.Review;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: wangzewei
 * @Date: 2018/7/19 17:37
 * @Description:
 */
public interface ZixunMapper {
    List<Consultation> queryZixunList();

    Consultation queryZixunBuId(@Param("id") String id);

    void BackInfo(Consultation consultation);

    Consultation queryInfoById(@Param("id")String id);

    void updateInfo(Consultation consultation);

    void delInfo(@Param("ids") String ids);

    List<Review> queryPinglunList();

    List<Review> queryByInfo(@Param("ss") String ss);

    Review queryPlInfoById(String id);

    void updatepl(Review review);
}
