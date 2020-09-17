package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Employee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface EmployeeMapper {

    Employee findEmployeeById(String employeeId);

    int getEmployeesCount(@Param("companyId") String companyId,@Param("name") String name);

    List<Employee> getEmployeesByCompanyId(@Param("pageNum") Integer pageNum,@Param("limit") Integer limit,@Param("companyId") String companyId,@Param("name") String name);

    int addEmployee(Employee employee);

    int updateEmployee(Employee employee);

    int deleteEmployeeById(String number);

    int updateSkill(Employee employee);
}
