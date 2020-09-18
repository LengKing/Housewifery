package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ServiceType;
import com.cykj.housewifery.mapper.AdminServerTypeMapper;
import com.cykj.housewifery.service.AdminServerTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("adminTypes")
public class AdminServerTypeServiceImpl implements AdminServerTypeService {

    @Autowired
    AdminServerTypeMapper adminServerTypeMapper;


    @Override
    public LayuiJson getType(Map<String, String> condition, Integer curPage, Integer pageSize) {
        Integer record = adminServerTypeMapper.selectRecord(condition);
        List<ServiceType> serviceTypes =  adminServerTypeMapper.getType(condition, curPage, pageSize, record);
        LayuiJson layuiJson= new LayuiJson();
        layuiJson.setData(serviceTypes);
        layuiJson.setCode(0);
        layuiJson.setCount(record);
        return layuiJson;
    }

    @Override
    public int updatesType(ServiceType serviceType) {
        int n = 0;
        n = adminServerTypeMapper.updatesType(serviceType);
        return n;
    }

    @Override
    public int updateServers(ServiceType serviceType) {
        int n = 0;
        n = adminServerTypeMapper.updateServers(serviceType);
        return n;
    }

    @Override
    public int addType(ServiceType serviceType) {
        int n = 0;
        n = adminServerTypeMapper.addType(serviceType);
        return n;
    }

    @Override
    public int deleteType(int id) {
        int n = 0;
        n = adminServerTypeMapper.deleteType(id);
        return n;
    }

    @Override
    public int deleteTypes(int id1) {
        int n = 0;
        n = adminServerTypeMapper.deleteTypes(id1);
        return n;
    }


}
