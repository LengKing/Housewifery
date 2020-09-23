package com.cykj.housewifery.control;

import com.alibaba.fastjson.JSON;
import com.cykj.housewifery.bean.Arrange;
import com.cykj.housewifery.bean.CompanyService;
import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.service.ArrangeService;
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
@RequestMapping("/arrange")
public class ArrangeControl {

    @Autowired
    ArrangeService arrangeService;

    @RequestMapping(value = "/companyEmployees",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object companyEmployees(String companyId,String date) {
        List<Employee> employees = arrangeService.getCompanyEmployees(companyId,date);
        return new Gson().toJson(employees);
    }

    @RequestMapping(value = "/employeeArrange",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object employeeArrange(String date,String employees) {
        List<Employee> list = JSON.parseArray(employees,Employee.class);
        String result = arrangeService.addArrange(list,date);
        if (result.equals("success")){
            return new Gson().toJson(list);
        }else {
            return result;
        }
    }

    @RequestMapping(value = "/getArrange",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getArrange(String companyId,String date) {
        List<Arrange> arranges = arrangeService.getArrange(companyId,date);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(arranges);
    }

    @RequestMapping(value = "/updateArrange",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object updateArrange(String date,String number) {
        List<String> list = JSON.parseArray(number,String.class);
        String result = arrangeService.updateArrange(list,date);
        return result;
    }
}
