package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.CompanyService;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ServiceType;
import com.cykj.housewifery.service.Service;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/service")
public class ServiceControl {

    @Autowired
    private Service service;

    @RequestMapping(value = "/serviceList",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getServiceList(String page,String limit,String companyId) throws IOException {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = service.getServiceCount();
        List<CompanyService> types = service.getServiceList(companyId,pageNum,limit);
        layuiJson.setData(types);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

    @RequestMapping(value = "/serviceTypeList",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getServiceTypeList(String page,String limit,String companyId) throws IOException {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = service.getServiceTypeCount();
        List<CompanyService> types = service.getServiceTypeList(companyId,pageNum,limit);
        layuiJson.setData(types);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

    @RequestMapping(value = "/updateServiceState",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object updateServiceState(String companyId,String id,String event,String type){
        String result = service.updateServiceState(companyId,id,event,type);
        return result;
    }

    @RequestMapping(value = "/serviceType",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getServiceTypeByCompanyId(String companyId){
        List<ServiceType> types = service.getServiceTypeByCompanyId(companyId);
        return new Gson().toJson(types);
    }

    @RequestMapping(value = "/findAllServiceType",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object findAllServiceType(String companyId){
        List<ServiceType> types = service.findAllServiceType();
        return new Gson().toJson(types);
    }
}
