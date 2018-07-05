package com.jk.service.impl.wzw;

import com.jk.mapper.wzw.WzwMapper;
import com.jk.service.wzw.IWzwService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("wzwService")
public class WzwServiceImpl implements IWzwService {

    @Autowired
    private WzwMapper wzwMapper;
}
