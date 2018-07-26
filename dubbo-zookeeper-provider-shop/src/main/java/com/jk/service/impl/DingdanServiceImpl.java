package com.jk.service.impl;

import com.jk.mapper.DingdanMapper;
import com.jk.model.Order;
import com.jk.service.IDingdanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: wangzewei
 * @Date: 2018/7/26 9:19
 * @Description:
 */
@Service("orderService")
public class DingdanServiceImpl implements IDingdanService{

    @Autowired
    private DingdanMapper dingdanMapper;

    @Override public List<Order> queryDaiping() {
        return dingdanMapper.queryDaiping();
    }

    @Override
    public List<Order> queryAll() {
        return dingdanMapper.queryAll();
    }

    @Override
    public void FuKuan(String id) {
        dingdanMapper.FuKuan(id);
    }

    @Override
    public void FaHuo(String id) {
        dingdanMapper.FaHuo(id);
    }

    @Override
    public void ShouHuo(String id) {
        dingdanMapper.ShouHuo(id);
    }

    @Override
    public void TuiHuo(String id) {
        dingdanMapper.TuiHuo(id);
    }

    @Override
    public void tongyituihuo(String id) {
        dingdanMapper.tongyituihuo(id);
    }

}

