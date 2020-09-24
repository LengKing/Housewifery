package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {

    User findUserByAccount(String account);
    public User login(@Param("user") User user);       //用户的登录
    public int add(User user);          //用户的注册
    int barUser(@Param("date") String date);    //用户注册统计柱状图
    int lineUser(@Param("date") String date);   //用户注册增长曲线图

}
