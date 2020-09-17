package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.mapper.EmployeeMapper;
import com.cykj.housewifery.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    EmployeeMapper employeeMapper;

    @Override
    public Object isExistsEmployee(String employeeId) {
        Employee employee = employeeMapper.findEmployeeById(employeeId);
        if (employee != null){
            return "exist";
        }else {
            return "inexistence";
        }
    }

    @Override
    public int getEmployeesCount(String companyId, String name) {
        int count = employeeMapper.getEmployeesCount(companyId,name);
        return count;
    }

    @Override
    public List<Employee> getEmployeesByCompanyId(Integer pageNum, String limit, String companyId, String name) {
        List<Employee> employees = employeeMapper.getEmployeesByCompanyId(pageNum,Integer.valueOf(limit),companyId,name);
        return employees;
    }

    @Override
    public String addEmployee(Employee employee) {
        int n = employeeMapper.addEmployee(employee);
        if (n>0){
            return "新增成功";
        }else{
            return "新增失败，编号已存在";
        }

    }

    @Override
    public String updateEmployee(Employee employee) {
        int n = employeeMapper.updateEmployee(employee);
        if (n>0){
            return "保存成功";
        }else{
            return "保存失败，请重试";
        }
    }

    @Override
    public String deleteEmployeeById(String number) {
        int n = employeeMapper.deleteEmployeeById(number);
        if (n>0){
            return "删除成功";
        }else{
            return "删除失败，请重试";
        }
    }

    @Override
    public String updateSkill(Employee employee) {
        int n = employeeMapper.updateSkill(employee);
        if (n>0){
            return "分配成功";
        }else{
            return "分配失败，请重试";
        }
    }
}
