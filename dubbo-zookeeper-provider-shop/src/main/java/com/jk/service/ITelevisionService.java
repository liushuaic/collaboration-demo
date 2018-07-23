package com.jk.service;

import com.jk.model.Product;

import java.util.List;

/**
 * Created by Administrator on 2018\7\19 0019.
 */
public interface ITelevisionService {

    List<Product> queryTelevisionList(Product tel);

    Product TVShowById(String sn);
}
