package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Arrange;
import com.cykj.housewifery.bean.Employee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ArrangeMapper {
    List<Employee> getCompanyEmployees(@Param("companyId") String companyId,@Param("date") String date);

    int addArrange(@Param("list") List<Employee> list,@Param("date") String date);

    List<Arrange> getArrange(@Param("companyId") String companyId,@Param("date") String date);

    int updateArrange(@Param("list") List<String> list,@Param("date") String date);
}
