package com.jk.service.impl;

import com.jk.mapper.LsMapper;
import com.jk.model.User;
import com.jk.service.ILsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("lsService")
public class LsServiceImpl implements ILsService {

    @Autowired
    private LsMapper lsMapper;

 public List<User> queryUserList(User user) {
        return lsMapper.queryUserList(user);
    }
}
