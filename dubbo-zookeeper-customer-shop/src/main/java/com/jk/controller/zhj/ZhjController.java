package com.jk.controller.zhj;


import com.jk.service.zhj.IZhjService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("zhjController")
public class ZhjController {
    @Resource
    private IZhjService zhjService;
}
