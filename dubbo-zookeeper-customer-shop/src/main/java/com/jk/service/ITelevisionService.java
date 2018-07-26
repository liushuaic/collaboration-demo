package com.jk.service;

import com.jk.model.Address;
import com.jk.model.Cart;
import com.jk.model.Order;
import com.jk.model.Product;

import java.util.List;

/**
 * Created by Administrator on 2018\7\19 0019.
 */
public interface ITelevisionService {

    List<Product> queryTelevisionList(Product tel);

    Product TVShowById(String sn);

    void insertCart(Cart cart);

    List<Cart> queryCartAll(String userid);

    void minusQuantity(String cartid);

    void plusQuantity(String cartid);

    void delCart(String cartid);

    Address queeryAddress();

    void insertOrder(Order order, String cartid);
}
