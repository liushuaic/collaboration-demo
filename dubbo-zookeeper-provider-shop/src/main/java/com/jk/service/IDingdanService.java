package com.jk.service;

import com.jk.model.Order;

import java.util.List;

/**
 * @Author: wangzewei
 * @Date: 2018/7/26 9:13
 * @Description:
 */
public interface IDingdanService {
    List<Order> queryDaiping();

    List<Order> queryAll();

    void FuKuan(String id);

    void FaHuo(String id);

    void ShouHuo(String id);

    void TuiHuo(String id);

    void tongyituihuo(String id);
}
