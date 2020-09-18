package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.ServiceType;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface AdminServerTypeMapper {
    Integer selectRecord(@Param("condition")Map<String, String> condition);

    List<ServiceType> getType(@Param("condition")Map<String, String> condition, @Param("curPage")Integer curPage, @Param("pageSize")Integer pageSize, Integer record);

    int updatesType(@Param("serviceType")ServiceType serviceType);

    int updateServers(@Param("serviceType")ServiceType serviceType);

    int addType(@Param("serviceType")ServiceType serviceType);

    int deleteType(int id);

    int deleteTypes(int id1);
}
