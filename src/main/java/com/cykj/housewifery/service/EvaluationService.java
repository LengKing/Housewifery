package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EvaluationService {
    List<Order> evaluation(@Param("pageNum") Integer pageNum, @Param("limit") Integer limit);
    int getCountCompany(String company);
}
