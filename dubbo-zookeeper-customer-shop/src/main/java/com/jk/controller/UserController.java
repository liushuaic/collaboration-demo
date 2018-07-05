package com.jk.controller;

import com.jk.service.IUserService;
import org.activiti.engine.identity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("userController")
public class UserController {
    @Resource
    private IUserService userService;
    @RequestMapping("queryUser")
    @ResponseBody
    public List<User> queryUser(){
       List<User> userlist = userService.queryUser();
       return userlist;
    }
}
