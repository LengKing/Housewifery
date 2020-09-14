package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.mapper.EmployeeMapper;
import com.cykj.housewifery.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
