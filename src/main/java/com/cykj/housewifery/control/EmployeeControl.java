package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Documents;
import com.cykj.housewifery.service.EmployeeService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/employee")
public class EmployeeControl {

    @Autowired
    EmployeeService employeeService;

    @RequestMapping(value = "/findEmployeeById",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object findEmployeeById(String employeeId) {
        Object o = employeeService.isExistsEmployee(employeeId);
        return o;
    }
}
