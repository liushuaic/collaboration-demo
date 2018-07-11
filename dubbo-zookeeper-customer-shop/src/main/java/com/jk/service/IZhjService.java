package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Product;
import com.jk.model.ProductCategory;

import java.util.List;

public interface IZhjService {

    JSONObject queryProductList(int page, int rows, Product pro);

    List<ProductCategory> queryProductCategory(String pid);
}
