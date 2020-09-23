package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Admin;
import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.MapBean;
import com.cykj.housewifery.bean.ReportDataBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface CompanyMapper {
   List<String> allDate(@Param("startDate") String startDate, @Param("endDate") String endDate);
   int totalCompany(@Param("date") String date);
   int lineCompany(@Param("date") String date);
   List<MapBean> companyMap();
   int CompanyAdd(Company company);
   public Company loginCompany(Company company);//公司的登录
   Admin LoginPT(Admin admin);
}
