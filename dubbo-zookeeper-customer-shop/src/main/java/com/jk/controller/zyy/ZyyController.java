package com.jk.controller.zyy;

import com.jk.service.zyy.IZyyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("zyyController")
public class ZyyController {
    @Autowired
    private IZyyService zyyService;

}
