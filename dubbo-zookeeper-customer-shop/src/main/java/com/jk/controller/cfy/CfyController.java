package com.jk.controller.cfy;

import com.jk.service.cfy.ICfyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("cfyController")
public class CfyController {

    @Resource
    private ICfyService cfyService;

}
