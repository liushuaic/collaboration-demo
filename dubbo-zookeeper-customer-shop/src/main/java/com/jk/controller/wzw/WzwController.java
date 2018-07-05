package com.jk.controller.wzw;

import com.jk.service.wzw.IWzwService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("wzwController")
public class WzwController {

    @Resource
    private IWzwService wzwService;
}
