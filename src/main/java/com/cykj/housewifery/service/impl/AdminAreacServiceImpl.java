package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ServiceArea;
import com.cykj.housewifery.bean.User;
import com.cykj.housewifery.mapper.AdminAreacMapper;
import com.cykj.housewifery.service.AdminAreacService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("adminAreacs")
public class AdminAreacServiceImpl implements AdminAreacService {

    @Autowired
    AdminAreacMapper adminAreacMapper;

    @Override
    public LayuiJson getAreac(Map<String, String> condition, Integer curPage, Integer pageSize) {
        Integer record = adminAreacMapper.selectRecord(condition);
        List<ServiceArea> serviceAreas =  adminAreacMapper.getAreac(condition, curPage, pageSize, record);
        LayuiJson layuiJson= new LayuiJson();
        layuiJson.setData(serviceAreas);
        layuiJson.setCode(0);
        layuiJson.setCount(record);
        return layuiJson;
    }

}
