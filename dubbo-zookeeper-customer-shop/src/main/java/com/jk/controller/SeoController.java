package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Seo;
import com.jk.service.ISeoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
@RequestMapping("seoController")
public class SeoController {
	@Autowired
	private ISeoService seoService;

	@RequestMapping("getSeo")
	@ResponseBody
	public JSONObject getSeo(int page,int rows,Seo seo){
		JSONObject json= seoService.getSeo(page,rows,seo);
		return json;
	}
	//回显
	@RequestMapping("toUpdateSeo")
	@ResponseBody
	public ModelAndView toUpdateSeo(String  seoid){
		ModelAndView mv= new ModelAndView();
		Seo list = seoService.toUpdateSeo(seoid);
		mv.addObject("list", list);
		mv.setViewName("seo/updateSeo");
		return mv;
	}
	//修改
	@RequestMapping("updateSeo")
	public ModelAndView updateType(Seo seo){
		ModelAndView mv = new ModelAndView("seo/list");
		seoService.updateSeo(seo);
		return mv;
	}
}
