package com.jk.service;

import com.jk.model.Article;
import com.jk.model.ArticleCategory;
import com.jk.model.Navigation;
import com.jk.model.Tag;

import java.util.List;

public interface ICfyService {
    List<Navigation> queryNavigation();

    void deleteNavigation(String id);

    Navigation huixianNavigation(String id);

    void updateNavigation(Navigation navigation);

    void saveNav(Navigation navigation);

    List<Article> queryAtricle(String title);

    void saveArticle(Article article);

    Article huixianArticle(String id);

    void updateArticle(Article article);

    void deleteArticle(String id);

    List<ArticleCategory> queryAtricleCategory();

    List<Tag> queryLabel();
}
