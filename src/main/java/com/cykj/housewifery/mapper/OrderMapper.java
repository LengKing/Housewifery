package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Order;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderMapper {
    int getOrderCount(String company);
    List<Order> selOrder(String company, Integer pageNum, String limit);
}
