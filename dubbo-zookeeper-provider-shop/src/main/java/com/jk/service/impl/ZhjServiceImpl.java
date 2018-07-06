package com.jk.service.impl;


import com.jk.mapper.ZhjMapper;
import com.jk.service.IZhjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("zhjService")
public class ZhjServiceImpl implements IZhjService {

    @Autowired
    private ZhjMapper zhjMapper;

}
