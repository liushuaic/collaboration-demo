package com.jk.service.impl;



import com.jk.mapper.TelevisionMapper;
import com.jk.model.Cart;
import com.jk.model.Product;
import com.jk.service.ITelevisionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
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

    @Override
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

    @Override
    public List<Cart> queryCartAll(String userid) {
        List<Cart> list= televisionMapper.queryCartAll(userid);
        return list;
    }

    @Override
    public void minusQuantity(String cartid) {
        televisionMapper.minusQuantity(cartid);
    }

    @Override
    public void plusQuantity(String cartid) {
        televisionMapper.plusQuantity(cartid);
    }

    @Override
    public void delCart(String cartid) {
        televisionMapper.delCart(cartid);
    }
}
