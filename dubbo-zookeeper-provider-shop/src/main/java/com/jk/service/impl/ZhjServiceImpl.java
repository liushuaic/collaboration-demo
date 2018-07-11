package com.jk.service.impl;


import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.ZhjMapper;
import com.jk.model.Order;
import com.jk.model.Product;
import com.jk.model.ProductCategory;
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
}
