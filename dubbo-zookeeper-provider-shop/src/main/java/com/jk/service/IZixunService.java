package com.jk.service;

import com.jk.model.Consultation;
import com.jk.model.Review;

import java.util.List;

/**
 * @Author: wangzewei
 * @Date: 2018/7/19 17:34
 * @Description:
 */
public interface IZixunService {

    List<Consultation> queryZixunList();

    Consultation queryZixunBuId(String id);

    void BackInfo(Consultation consultation);

    Consultation queryInfoById(String id);

    void updateInfo(Consultation consultation);

    void delInfo(String ids);

    List<Review> queryPinglunList();

    List<Review> queryByInfo(String ss);

    Review queryPlInfoById(String id);

    void updatepl(Review review);

    void delPl(String ids);
}
