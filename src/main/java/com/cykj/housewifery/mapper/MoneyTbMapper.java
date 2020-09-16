package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
//我的订单 个人中心的用户
import java.util.List;
@Mapper
public interface MoneyTbMapper {
   public List<Order> selOrder(@Param("company") String company,@Param("pageNum") Integer pageNum, @Param("limit") Integer limit);
   int getCountCompany(@Param("company")String company);
}
