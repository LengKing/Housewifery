package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.ReportDataBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CompanyMapper {
   List<String> allDate(@Param("startDate") String startDate, @Param("endDate") String endDate);
   int totalCompany(@Param("date") String date);
   int lineCompany(@Param("date") String date);
}