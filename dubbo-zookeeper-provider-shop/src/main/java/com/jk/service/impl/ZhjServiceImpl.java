package com.jk.service.impl;


import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.ZhjMapper;
import com.jk.model.*;
import com.jk.service.IZhjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("zhjService")
public class ZhjServiceImpl implements IZhjService {

    @Autowired
    private ZhjMapper zhjMapper;

    @Override
    public JSONObject queryProductList(int page, int rows, Product pro) {
        long total = zhjMapper.queryCount(pro);
        int strat = (page - 1) * rows;
        int end = strat + rows;
        List<Product> list = zhjMapper.queryProductList(strat,end,pro);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }

    @Override
    public List<ProductCategory> queryProductCategory(String pid) {
        return zhjMapper.queryProductCategory(pid);
    }

    @Override
    public JSONObject queryPamaterList(int page, int rows, Parameter parm) {
        long total = zhjMapper.queryParamCount(parm);
        int strat = (page - 1) * rows;
        int end = strat + rows;
        List<Product> list = zhjMapper.queryPamaterList(strat,end,parm);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }

    @Override
    public JSONObject queryAttribute(int page, int rows, Attribute att) {
        long total = zhjMapper.queryAttributeCount(att);
        int strat = (page - 1) * rows;
        int end = strat + rows;
        List<Product> list = zhjMapper.queryAttribute(strat,end,att);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }

    @Override
    public JSONObject querySpecificationList(int page, int rows, Specification spe) {
        long total = zhjMapper.querySpecificationCount(spe);
        int strat = (page - 1) * rows;
        int end = strat + rows;
        List<Product> list = zhjMapper.querySpecificationList(strat,end,spe);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }

    @Override
    public JSONObject queryBrandList(int page, int rows, Brand brand) {
        long total = zhjMapper.queryBrandCount(brand);
        int start = (page - 1) * rows;
        int end = start + rows;
        List<Brand> list = zhjMapper.queryBrandList(start,end,brand);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }

    @Override
    public JSONObject queryProductNotifyList(int page, int rows, ProductNotify pro) {
        long total = zhjMapper.queryProductNotifyCount(pro);
        int start = (page - 1) * rows;
        int end = start + rows;
        List<ProductNotify> list = zhjMapper.queryProductNotifyList(start,end,pro);
        JSONObject json = new JSONObject();
        json.put("total",total);
        json.put("rows",list);
        return json;
    }

    @Override
    public List<Brand> queryBrand() {
        return zhjMapper.queryBrand();
    }
}
