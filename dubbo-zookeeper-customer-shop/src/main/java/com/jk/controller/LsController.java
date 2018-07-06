package com.jk.controller;


import com.jk.model.User;
import com.jk.service.ILsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("lsController")
public class LsController {

    @Resource
    private ILsService lsService;

    @RequestMapping("queryUserList")
    @ResponseBody
    public List<User> queryUserList(){
        List<User> list = lsService.queryUserList();
        return list;
    }


}
