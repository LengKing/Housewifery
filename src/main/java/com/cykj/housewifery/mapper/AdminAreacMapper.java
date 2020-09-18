package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.ServiceArea;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface AdminAreacMapper {
    Integer selectRecord(@Param("condition") Map<String, String> condition);

    List<ServiceArea> getAreac(@Param("condition")Map<String, String> condition, @Param("curPage")Integer curPage, @Param("pageSize")Integer pageSize, Integer record);
}
