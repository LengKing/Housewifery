package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.CompanyService;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ServiceType;
import com.cykj.housewifery.mapper.ServiceMapper;
import com.cykj.housewifery.service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@org.springframework.stereotype.Service("service")
@Transactional
public class ServiceImpl implements Service {

    @Autowired
    public ServiceMapper serviceMapper;

    @Override
    public int getServiceTypeCount() {
        int count = 0;
        count = serviceMapper.getServiceTypeCount();
        return count;
    }

    @Override
    public List<CompanyService> getServiceTypeList(String companyId, Integer pageNum, String limit) {
        List<CompanyService> list = new ArrayList<>();
        HashMap<String,Object> condition = new HashMap<>();
        condition.put("companyId",companyId);
        LayuiJson layuiJson = new LayuiJson();
        layuiJson.setPageNum(pageNum);
        layuiJson.setLimit(Integer.valueOf(limit));
        layuiJson.setCondition(condition);
        list = serviceMapper.getServiceTypeList(layuiJson);
        return list;
    }

    @Override
    public int getServiceCount() {
        int count = 0;
        count = serviceMapper.getServiceCount();
        return count;
    }

    @Override
    public List<CompanyService> getServiceList(String companyId, Integer pageNum, String limit) {
        List<CompanyService> list = new ArrayList<>();
        HashMap<String,Object> condition = new HashMap<>();
        condition.put("companyId",companyId);
        LayuiJson layuiJson = new LayuiJson();
        layuiJson.setPageNum(pageNum);
        layuiJson.setLimit(Integer.valueOf(limit));
        layuiJson.setCondition(condition);
        list = serviceMapper.getServiceList(layuiJson);
        return list;
    }

    @Override
    public String updateServiceState(String companyId,String id,String event,String type) {
        boolean result = false;
        HashMap<String,Object> condition = new HashMap<>();
        condition.put("companyId",companyId);
        condition.put("id",id);
        condition.put("event",event);
        if (type!=null||!"".equals(type)){
            int n = serviceMapper.findServiceType(condition);
            if (n<=0){
                return "请先申请该服务的类别";
            }
        }
        int n1 = 0;
        CompanyService companyService = new CompanyService();
        companyService.setCompanyId(Integer.valueOf(companyId));
        companyService.setServiceTypeId(Integer.valueOf(id));
        companyService.setStateName(event);
        if (event.equals("1")){
            n1 = serviceMapper.insertCompanyService(companyService);
        }else {
            n1 = serviceMapper.updateCompanyService(companyService);
        }
        if (n1>0){
            return "申请已提交！";
        }else {
            return "申请提交失败，，请稍后再试";
        }
    }
}
