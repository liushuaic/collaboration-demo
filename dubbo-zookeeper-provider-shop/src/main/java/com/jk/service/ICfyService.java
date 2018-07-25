package com.jk.service;

import com.jk.model.*;

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

    Admin queryPhone(String phone);

    void zhucusuccess(Admin user);
 }
