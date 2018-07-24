package com.jk.service.impl;

import com.jk.mapper.ZixunMapper;
import com.jk.model.Consultation;
import com.jk.model.Review;
import com.jk.service.IZixunService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: wangzewei
 * @Date: 2018/7/19 17:36
 * @Description:
 */
@Service("zixunService")
public class ZixunServiceImpl implements IZixunService{

    @Autowired
    private ZixunMapper zixunMapper;

    @Override
    public List<Consultation> queryZixunList() {
        return zixunMapper.queryZixunList();
    }

    @Override
    public Consultation queryZixunBuId(String id) {
        return zixunMapper.queryZixunBuId(id);
    }

    @Override
    public void BackInfo(Consultation consultation) {
        zixunMapper.BackInfo(consultation);
    }

    @Override
    public Consultation queryInfoById(String id) {
        return zixunMapper.queryInfoById(id);
    }

    @Override
    public void updateInfo(Consultation consultation) {
        zixunMapper.updateInfo(consultation);
    }

    @Override
    public void delInfo(String ids) {
        zixunMapper.delInfo(ids);
    }

    @Override
    public List<Review> queryPinglunList() {
        return zixunMapper.queryPinglunList();
    }

    @Override
    public List<Review> queryByInfo(String ss) {
        return zixunMapper.queryByInfo(ss);
    }

    @Override
    public Review queryPlInfoById(String id) {
        return zixunMapper.queryPlInfoById(id);
    }

    @Override
    public void updatepl(Review review) {
        zixunMapper.updatepl(review);
    }

    @Override
    public void delPl(String ids) {
        zixunMapper.delPl(ids);
    }
}
