package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OrderMapper {
    int getOrderCount(@Param("company") String company);
    List<Order> selOrder(@Param("company") String company,@Param("pageNum") Integer pageNum, @Param("limit") Integer limit);
    Order findOrderById(String id);
    int barOrder(@Param("date") String date, @Param("company") String company);
    int lineOrder(@Param("date") String date, @Param("company") String company);
}
