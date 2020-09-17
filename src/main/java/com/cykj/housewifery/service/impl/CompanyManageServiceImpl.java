package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.mapper.CompanyManageMapper;
import com.cykj.housewifery.service.CompanyManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("companyManages")
public class CompanyManageServiceImpl implements CompanyManageService {

    @Autowired
    CompanyManageMapper companyManageMapper;

    @Override
    public LayuiJson getCompany(Map<String, String> condition, Integer curPage, Integer pageSize) {
        Integer record = companyManageMapper.selectRecord(condition);
        List<Company> companies =  companyManageMapper.getCompany(condition, curPage, pageSize, record);
        LayuiJson layuiJson= new LayuiJson();
        layuiJson.setData(companies);
        layuiJson.setCode(0);
        layuiJson.setCount(record);
        return layuiJson;
    }
}
