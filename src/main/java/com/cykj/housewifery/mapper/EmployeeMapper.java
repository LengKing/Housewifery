package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Employee;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EmployeeMapper {

    Employee findEmployeeById(String employeeId);
}
