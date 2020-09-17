package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper

public interface EvaluationMapper {
    List<Order> evaluation( @Param("pageNum") Integer pageNum, @Param("limit") Integer limit);
    int getCountCompany(@Param("company")String company);
}
