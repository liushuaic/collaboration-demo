package com.jk.mapper;

import com.jk.model.Article;
import com.jk.model.ArticleCategory;
import com.jk.model.Navigation;
import com.jk.model.Tag;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CfyMapper {
    List<Navigation> queryNavigation();

    void deleteNavigation(@Param("id") String id);

    Navigation huixianNavigation(@Param("id")String id);

    void updateNavigation(Navigation navigation);

    void saveNav(Navigation navigation);

    List<Article> queryAtricle(@Param("title") String title);

    void saveArticle(Article article);

    Article huixianArticle(@Param("id")String id);

    void updateArticle(Article article);

    void deleteArticle(@Param("id")String id);

    List<ArticleCategory> queryAtricleCategory();

    List<Tag> queryLabel();
}
