package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.AfterSales;
import com.cykj.housewifery.bean.Employee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AfterSalesMapper {

    int getafterSalesCount(@Param("companyId") String companyId,@Param("state") String state,@Param("startDate") String startDate,@Param("endDate") String endDate);

    List<AfterSales> getAfterSalesList(@Param("companyId") String companyId,@Param("pageNum") Integer pageNum,@Param("limit") Integer limit,@Param("state") String state,@Param("startDate") String startDate,@Param("endDate") String endDate);

    int updateAfterSalesState(@Param("id") String id,@Param("stateName") String stateName);

    Employee seeDetailsById(String id);

    int arrangeAfterSales(@Param("id") String id,@Param("number") String number);

    int getAfterCount(@Param("company") String company);

    List<AfterSales> selAfter(@Param("company") String company, @Param("pageNum") Integer pageNum, @Param("limit") Integer limit);

    AfterSales findAfterById(Integer id);
}
