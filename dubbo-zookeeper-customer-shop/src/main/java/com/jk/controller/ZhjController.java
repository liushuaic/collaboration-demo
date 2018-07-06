package com.jk.controller;

import com.jk.service.IZhjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("zhjController")
public class ZhjController {
    @Resource
    private IZhjService zhjService;


}
