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
    public int getServiceTypeCount(String companyId) {

        return 0;
    }

    @Override
    public List<ServiceType> getServiceTypeList(String companyId, Integer pageNum, String limit) {

        return null;
    }

    @Override
    public int getServiceCount() {
        int count = 0;
        count = serviceMapper.getServiceCount();
        return count;
    }

    @Override
    public List<ServiceType> getServiceList(String companyId, Integer pageNum, String limit) {
        List<ServiceType> list = new ArrayList<>();
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
    public String updateServiceState(String companyId,String id,String event) {
        boolean result = false;
        HashMap<String,Object> condition = new HashMap<>();
        condition.put("companyId",companyId);
        condition.put("id",id);
        condition.put("event",event);
        int n = serviceMapper.findServiceType(condition);
        if (n<=0){
            return "请先申请该服务的类别";
        }
        CompanyService companyService = new CompanyService();
        companyService.setCompanyId(Integer.valueOf(companyId));
        companyService.setServiceTypeId(Integer.valueOf(id));
        companyService.setStateName(event);
        companyService.setApplyDate(new Date(System.currentTimeMillis()));
        int n1 = serviceMapper.insertCompanyService(companyService);
        if (n1>0){
            return "申请已提交！";
        }else {
            return "申请提交失败，，请稍后再试";
        }
    }
}
