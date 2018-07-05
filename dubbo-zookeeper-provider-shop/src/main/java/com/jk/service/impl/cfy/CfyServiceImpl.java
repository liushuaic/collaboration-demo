package com.jk.service.impl.cfy;

import com.jk.mapper.cfy.CfyMapper;
import com.jk.service.cfy.ICfyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("cfyService")
public class CfyServiceImpl implements ICfyService {

    @Autowired
    private CfyMapper cfyMapper;

}
