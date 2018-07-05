package com.jk.controller.ls;


import com.jk.service.ls.ILsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("lsController")
public class LsController {

    @Resource
    private ILsService lsService;

}
