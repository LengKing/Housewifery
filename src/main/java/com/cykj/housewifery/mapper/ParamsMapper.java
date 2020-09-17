package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Param;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ParamsMapper {
    List<Object> findParams(String type);
    List<Object> findTime();
    List<Object> findJobs();

    List<Param> findAllAfterSalesState();
}
