package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.CompanyService;
import com.cykj.housewifery.bean.Documents;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.service.HomeMarkingService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/homemarking")
public class HomeMarkingControl {

    @Autowired
    private HomeMarkingService homeMarkingService;

    @RequestMapping(value = "/basicInformation",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getBasicInformation(String companyId) throws IOException {
        Company company = homeMarkingService.findCompanyById(companyId);
        return new Gson().toJson(company);
    }

    @RequestMapping(value = "/updateInformation",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object updateInformation(Company company) throws IOException {
        String result = homeMarkingService.updateInformation(company);
        return result;
    }

    @RequestMapping(value = "/companyData",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getCompanyData(String page,String limit,String companyId) throws IOException {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = homeMarkingService.getCompanyDataCount();
        List<Documents> data = homeMarkingService.getCompanyData(companyId,pageNum,limit);
        layuiJson.setData(data);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        return new Gson().toJson(layuiJson);
    }

    @RequestMapping(value = "/employeeData",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getEmployeeData(String page,String limit,String companyId) throws IOException {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = homeMarkingService.getEmployeeDataCount();
        List<Documents> data = homeMarkingService.getEmployeeData(companyId,pageNum,limit);
        layuiJson.setData(data);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        return new Gson().toJson(layuiJson);
    }
}
