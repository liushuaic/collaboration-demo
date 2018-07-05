package com.jk.service.impl.ls;

import com.jk.mapper.ls.LsMapper;
import com.jk.service.ls.ILsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("lsService")
public class LsServiceImpl implements ILsService {

    @Autowired
    private LsMapper lsMapper;

}
