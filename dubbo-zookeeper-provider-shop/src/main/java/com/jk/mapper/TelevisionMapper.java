package com.jk.mapper;

import com.jk.model.Address;
import com.jk.model.Cart;
import com.jk.model.Order;
import com.jk.model.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018\7\19 0019.
 */
public interface TelevisionMapper {

    List<Product> queryTelevisionList(Product tel);

    Product TVShowById(@Param("sn") String sn);

    void insertCart(Cart cart);

    Cart queryCart(@Param("productid") String productid);

    void addCount(@Param("cartid")String cartid);

    List<Cart> queryCartAll(@Param("userid") String userid);

    void minusQuantity(@Param("cartid")String cartid);

    void plusQuantity(@Param("cartid")String cartid);

    void delCart(@Param("cartid") String cartid);

    Address queeryAddress();

    void insertOrder(Order order);

    Cart queryCartById(@Param("cartid") String s);

    void updateShu(Cart cart);
}
