package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface EvaluationMapper {
    List<Order> evaluation( @Param("account") String company,@Param("pageNum") Integer pageNum, @Param("limit") Integer limit);
    int getCountCompany(@Param("account")String company);
    int delEvaluation(@Param("id") String id);
    String findEvaluation(@Param("id") String id);
    int updateEvaState(@Param("id") String id);
    int addEvaluation(@Param("id") int id, @Param("comment") String comment);
    void updateState(@Param("id") String id);
}
