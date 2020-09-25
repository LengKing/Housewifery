package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.*;
import com.cykj.housewifery.service.AfterSalesService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/afterSales")
public class AfterSalesControl {

    @Autowired
    AfterSalesService afterSalesService;

    @RequestMapping(value = "/afterSalesList",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object afterSalesList(String page,String limit,String companyId,String state,String startDate,String endDate){
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = afterSalesService.getafterSalesCount(companyId,state,startDate,endDate);
        List<AfterSales> types = afterSalesService.afterSalesList(companyId,pageNum,limit,state,startDate,endDate);
        layuiJson.setData(types);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }
    @RequestMapping(value = "/afterSalesAudit",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object afterSalesAudit(String id,String type){
        String result = afterSalesService.afterSalesAudit(id,type);
        return result;
    }

    @RequestMapping(value = "/seeDetails",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object seeDetails(String id){
        Employee employee = afterSalesService.seeDetailsById(id);
        return new Gson().toJson(employee);
    }

    @RequestMapping(value = "/arrangeAfterSales",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object arrangeAfterSales(String id,String number){
        String result = afterSalesService.arrangeAfterSales(id,number);
        return result;
    }

    @RequestMapping(value = "/selAfter", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object selAfter(String company, String page, String limit) {
        Integer pageNum = (Integer.valueOf(page) - 1) * Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = afterSalesService.getAfterCount(company);
        List<AfterSales> afterSales = afterSalesService.selAfter(company, pageNum, limit);
        layuiJson.setData(afterSales);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

    @RequestMapping(value = "/findAfterById", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object findAfterById(String id) {
        AfterSales afterSales = afterSalesService.findAfterById(id);
        return new Gson().toJson(afterSales);
    }
    @RequestMapping(value = "/selAfterByUser", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object selAfterByUser(String company, String page, String limit, HttpServletRequest request) {
        Integer pageNum = (Integer.valueOf(page) - 1) * Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        User user=(User) request.getSession().getAttribute("user1");
        int count = afterSalesService.getAfterCountByUser(company,user.getAccount());
        List<AfterSales> afterSales = afterSalesService.selAfterByUser(company, pageNum, limit,user.getAccount());
        layuiJson.setData(afterSales);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

}
