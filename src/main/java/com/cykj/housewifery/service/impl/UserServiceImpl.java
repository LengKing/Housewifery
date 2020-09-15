package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.User;
import com.cykj.housewifery.mapper.UserMapper;
import com.cykj.housewifery.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("UserService")
public class UserServiceImpl implements UserService {
    @Autowired
    public UserMapper userMapper;


    @Override

    public User login(User user) {
        User userLogin = null;
        userLogin = userMapper.login(user);
        return userLogin;
    }

    @Override
    public boolean add(User user) {
        int a = 0;
        a = userMapper.add(user);
        return a > 0;

    }

    @Override
    public User findUserByAccount(String account) {
        User user = userMapper.findUserByAccount(account);
        return user;
    }
}
