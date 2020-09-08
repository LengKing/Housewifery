package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ServiceType;
import com.cykj.housewifery.mapper.ServiceMapper;
import com.cykj.housewifery.service.Service;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

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
        int count = 0;
        count = serviceMapper.getCount(companyId);
        return count;
    }

    @Override
    public List<ServiceType> getServiceTypeList(String companyId, Integer pageNum, String limit) {
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
}
