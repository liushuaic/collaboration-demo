package com.jk.mapper;

import com.jk.model.Seo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SeoMapper {
	long getSeoCount(Seo seo);

	List<Seo> getSeo(@Param("start") int start,@Param("end") int end,@Param("seo") Seo seo);

	Seo toUpdateSeo(@Param("seoid") String seoid);

	void updateSeo(Seo seo);
}
