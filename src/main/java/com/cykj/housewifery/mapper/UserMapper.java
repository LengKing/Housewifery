package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Address;
import com.cykj.housewifery.bean.Consump;
import com.cykj.housewifery.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserMapper {

    User findUserByAccount(String account);
    public User login(User user);       //用户的登录
    public int add(User user);          //用户的注册
    int barUser(@Param("date") String date);    //用户注册统计柱状图
    int lineUser(@Param("date") String date);   //用户注册增长曲线图
    public List<User> userAddress(@Param("user") String user, @Param("pageNum") Integer pageNum, @Param("limit") Integer limit);

    int getAddressCount(@Param("user") String user);

    int getRecordsCount(String account);

    List<Consump> getRecordsList(@Param("account") String account,@Param("pageNum") Integer pageNum,@Param("limit") Integer limit);

    int setBankCard(@Param("account") String account,@Param("bankCard") String bankCard);

    int consumption(@Param("account") String account,@Param("money") String money);

    int insertRecords(Consump consump);

    int topUp(@Param("account") String account,@Param("money") String money);

    int getAddCount(@Param("account") String account);

    List<Address> getAddress(@Param("account") String account, @Param("pageNum") Integer pageNum, @Param("limit") int limit);

    int updAddress(@Param("id") Integer id, @Param("address") String address);

    int delAddress(@Param("id") Integer id);

    int addAddress(@Param("address") String address,@Param("account") String account);
}
