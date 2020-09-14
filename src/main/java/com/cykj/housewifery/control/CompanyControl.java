package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.service.CompanyService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/company")
public class CompanyControl {

    @Autowired
    private CompanyService companyService;

    @RequestMapping(value = "/barCompany",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object barCompany(String startDate,String endDate){
        ReportDataBean dataBeans=companyService.totalCompany(startDate,endDate);
        System.out.println(new Gson().toJson(dataBeans));
        return new Gson().toJson(dataBeans);
    }

    @RequestMapping(value = "/lineCompany",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object lineCompany(String startDate,String endDate){
        ReportDataBean dataBeans=companyService.lineCompany(startDate,endDate);
        System.out.println(new Gson().toJson(dataBeans));
        return new Gson().toJson(dataBeans);
    }

}
