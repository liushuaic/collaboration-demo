package com.jk.service.impl;



import com.jk.mapper.TelevisionMapper;
import com.jk.model.Address;
import com.jk.model.Cart;
import com.jk.model.Order;
import com.jk.model.Product;
import com.jk.service.ITelevisionService;
import org.joda.time.DateTime;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

/**
 * Created by Administrator on 2018\7\19 0019.
 */

@Service("televisionService")
public class TelevisionServiceImpl implements ITelevisionService {

    @Resource
    private TelevisionMapper televisionMapper;


    public List<Product> queryTelevisionList(Product tel) {
        return televisionMapper.queryTelevisionList(tel);
    }

    public Product TVShowById(String sn) {
        return televisionMapper.TVShowById(sn);
    }


    public void insertCart(Cart cart) {
        cart.setCartid(UUID.randomUUID().toString());
        if(cart.getUserid()==null|| "".equals(cart.getUserid())){
            cart.setUserid("null");
        }
        Cart cc =televisionMapper.queryCart(cart.getProductid());
        if(cc!=null){
            televisionMapper.addCount(cc.getCartid());
        }else{
            televisionMapper.insertCart(cart);
        }


    }


    public List<Cart> queryCartAll(String userid) {
        List<Cart> list= televisionMapper.queryCartAll(userid);
        return list;
    }


    public void minusQuantity(String cartid) {
        televisionMapper.minusQuantity(cartid);
    }


    public void plusQuantity(String cartid) {
        televisionMapper.plusQuantity(cartid);
    }


    public void delCart(String cartid) {
        televisionMapper.delCart(cartid);
    }

    public Address queeryAddress() {
        return televisionMapper.queeryAddress();
    }

    public void insertOrder(Order order, String cartid) {
        order.setOrderid(UUID.randomUUID().toString()); //id
        Date date = new Date();
        Long time = date.getTime();
        order.setOrdercode(date.getYear()+date.getMonth()+date.getDate()+time.toString());//code
        televisionMapper.insertOrder(order );



        String[] arr=cartid.split(",");

        for (int i=0;i<arr.length;i++){
         Cart cart = televisionMapper.queryCartById(arr[i]);
            if(cart!=null){
                televisionMapper.updateShu(cart);
                televisionMapper.delCart(arr[i]);
            }

        }


    }



}
