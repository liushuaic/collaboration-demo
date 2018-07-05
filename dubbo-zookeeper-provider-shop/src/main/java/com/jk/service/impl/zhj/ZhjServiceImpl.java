package com.jk.service.impl.zhj;

import com.jk.mapper.zhj.ZhjMapper;
import com.jk.service.zhj.IZhjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("zhjService")
public class ZhjServiceImpl implements IZhjService {

    @Autowired
    private ZhjMapper zhjMapper;
}
