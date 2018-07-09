package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Seo;

public interface ISeoService {

	JSONObject getSeo(int page, int rows, Seo seo);

	Seo toUpdateSeo(String seoid);

	void updateSeo(Seo seo);
}
