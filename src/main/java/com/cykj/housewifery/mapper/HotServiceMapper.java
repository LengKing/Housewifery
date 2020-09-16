package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface HotServiceMapper {


    public Integer selectRecord(@Param("condition")Map<String, String> condition);

    public List<Order> getHot(@Param("condition")Map<String, String> condition, @Param("curPage")Integer curPage, @Param("pageSize")Integer pageSize, Integer record);
}
