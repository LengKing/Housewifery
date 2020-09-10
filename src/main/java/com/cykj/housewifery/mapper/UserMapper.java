package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {

public User login(User user);//用户的登录
public int add(User user);//用户的注册
}
