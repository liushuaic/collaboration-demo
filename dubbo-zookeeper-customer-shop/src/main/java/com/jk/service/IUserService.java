package com.jk.service;

import org.activiti.engine.identity.User;

import java.util.List;

public interface IUserService {
    List<User> queryUser();
}
