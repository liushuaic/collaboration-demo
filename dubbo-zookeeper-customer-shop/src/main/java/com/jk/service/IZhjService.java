package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.*;

import java.util.List;

public interface IZhjService {

    JSONObject queryProductList(int page, int rows, Product pro);

    List<ProductCategory> queryProductCategory(String pid);

    JSONObject queryPamaterList(int page, int rows, Parameter parm);

    JSONObject queryAttribute(int page, int rows, Attribute att);

    JSONObject querySpecificationList(int page, int rows, Specification spe);

    JSONObject queryBrandList(int page, int rows, Brand brand);

    JSONObject queryProductNotifyList(int page, int rows, ProductNotify pro);

    List<Brand> queryBrand();
}
