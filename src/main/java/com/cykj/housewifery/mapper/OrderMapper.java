package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Demand;
import com.cykj.housewifery.bean.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.sql.Date;
import java.util.List;

@Mapper
public interface OrderMapper {
    int getOrderCount(@Param("company") String company);
    List<Order> selOrder(@Param("company") String company,@Param("pageNum") Integer pageNum, @Param("limit") Integer limit);
    Order findOrderById(String id);
    int orderCount(@Param("companyId") String companyId,@Param("type") String type);

    int getDemandCount();

    List<Demand> getDemands(@Param("pageNum") Integer pageNum,@Param("limit") Integer limit);

    Demand selectDemandById(String id);

    int updateDemandById(String id);

    Order createOrderByDemandId(@Param("id") String id);

    int insertOrder(Order order);

    List<Order> companyOrder(@Param("pageNum") Integer pageNum,@Param("limit") Integer limit,@Param("companyId") String companyId,@Param("type") String type);

    List<com.cykj.housewifery.bean.Param> allOrderState();

    int barOrder(@Param("date") String date, @Param("company") String company);

    int lineOrder(@Param("date") String date, @Param("company") String company);

    List<Order> orderCountByYear(String companyId);

    List<Order> orderCountByMonth(String companyId);

    List<Order> orderCountByWeek(String companyId);

    List<Order> orderCountByDay(String companyId);

    int insertEmployeeNumber(@Param("orderId") String orderId,@Param("number") String number,@Param("serviceTime") Date time);

    int updateOrderState(@Param("orderId") String orderId,@Param("stateName") String stateName);

    int updateEmployeeState(@Param("number") String number,@Param("stateName") String stateName);
}
