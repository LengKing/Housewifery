package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Employee;

import java.util.List;

public interface EmployeeService {
    Object isExistsEmployee(String employeeId);

    int getEmployeesCount(String companyId, String name);

    List<Employee> getEmployeesByCompanyId(Integer pageNum, String limit, String companyId, String name);

    String addEmployee(Employee employee);
}
