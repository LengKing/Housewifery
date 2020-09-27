package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface AdminManageMapper {
    Integer selectRecord(@Param("condition")Map<String, String> condition);

    List<User> getManage(@Param("condition")Map<String, String> condition, @Param("curPage")Integer curPage, @Param("pageSize")Integer pageSize, Integer record);

    public int updateState(@Param("user")User user);

    Integer selectRecords(@Param("condition")Map<String, String> condition);

    List<User> getNeed(@Param("condition")Map<String, String> condition, @Param("curPage")Integer curPage, @Param("pageSize")Integer pageSize, Integer record);

//    public int pays(@Param("order")Order order);
}
