package com.jk.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.SeoMapper;
import com.jk.model.Seo;
import com.jk.service.ISeoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("seoService")
public class SeoServiceImpl implements ISeoService{
	@Autowired
	private SeoMapper seoMapper;


	public JSONObject getSeo(int page, int rows, Seo seo) {
		//总条数
		long total = seoMapper.getSeoCount(seo);
		//起始位置 = （当前页-1）*每页条数
		int start = (page - 1) * rows;
		//结束位置 = 起始位置 + 每页条数
		int end = start + rows;

		List<Seo> list = seoMapper.getSeo(start,end,seo);
		//easyui 查询分页数据时 必须返回总条数（总条数必须叫total）  当前页展示数据（当前页展示数据必须叫 rows）
		JSONObject json = new JSONObject();
		//总条数
		json.put("total", total);
		//每页条数
		json.put("rows", list);

		return json;
	}

	public Seo toUpdateSeo(String  seoid) {
		return seoMapper.toUpdateSeo(seoid);
	}

	public void updateSeo(Seo seo) {
		seoMapper.updateSeo(seo);
	}
}
