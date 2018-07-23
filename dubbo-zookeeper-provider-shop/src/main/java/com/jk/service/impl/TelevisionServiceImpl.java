package com.jk.service.impl;



import com.jk.mapper.TelevisionMapper;
import com.jk.model.Product;
import com.jk.service.ITelevisionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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
}
