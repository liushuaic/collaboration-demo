package com.jk.service.impl.zyy;

import com.jk.mapper.zyy.ZyyMapper;
import com.jk.service.zyy.IZyyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("zyyService")
public class ZyyServiceImpl implements IZyyService {

    @Autowired
    private ZyyMapper zyyMapper;
}
