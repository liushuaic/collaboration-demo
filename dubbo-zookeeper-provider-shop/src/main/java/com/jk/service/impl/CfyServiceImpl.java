package com.jk.service.impl;

import com.jk.mapper.CfyMapper;
import com.jk.model.Article;
import com.jk.model.Navigation;
import com.jk.service.ICfyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("cfyService")
public class CfyServiceImpl implements ICfyService {

    @Autowired
    private CfyMapper cfyMapper;

    public List<Navigation> queryNavigation() {
        return  cfyMapper.queryNavigation();
    }

    public void deleteNavigation(String id) {
        cfyMapper.deleteNavigation(id);
    }

    public Navigation huixianNavigation(String id) {
        return cfyMapper.huixianNavigation(id);
    }

    public void updateNavigation(Navigation navigation) {
        cfyMapper.updateNavigation(navigation);
    }

    public void saveNav(Navigation navigation) {
        String uuid=UUID.randomUUID().toString();
        navigation.setNid(uuid);
        cfyMapper.saveNav(navigation);
    }

    public List<Article> queryAtricle() {
        return cfyMapper.queryAtricle();
    }

    public void saveArticle(Article article) {
        String uuid = UUID.randomUUID().toString();
        article.setArid(uuid);
        cfyMapper.saveArticle(article);
    }

    public Article huixianArticle(String id) {
        return cfyMapper.huixianArticle(id);
    }

    public void updateArticle(Article article) {
        cfyMapper.updateArticle(article);
    }

    public void deleteArticle(String id) {
        cfyMapper.deleteArticle(id);
    }
}
