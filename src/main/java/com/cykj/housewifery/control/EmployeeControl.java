package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Documents;
import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.service.EmployeeService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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

    @RequestMapping(value = "/allEmployee",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object allEmployee(String page,String limit,String companyId,String name) throws IOException {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = employeeService.getEmployeesCount(companyId,name);
        List<Employee> employees = employeeService.getEmployeesByCompanyId(pageNum,limit,companyId,name);
        layuiJson.setData(employees);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }
}
