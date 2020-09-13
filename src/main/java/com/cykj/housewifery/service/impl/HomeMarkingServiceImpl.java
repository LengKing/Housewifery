package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.CompanyService;
import com.cykj.housewifery.bean.Documents;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.mapper.HomeMarkingMapper;
import com.cykj.housewifery.mapper.ServiceMapper;
import com.cykj.housewifery.service.HomeMarkingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service("homeMarkingService")
@Transactional
public class HomeMarkingServiceImpl implements HomeMarkingService {

    @Autowired
    public HomeMarkingMapper homeMarkingMapper;

    @Override
    public Company findCompanyById(String companyId) {
        Company company = homeMarkingMapper.findCompanyById(companyId);
        return company;
    }

    @Override
    public String updateInformation(Company company) {
        int n = homeMarkingMapper.updateInformation(company);
        if (n>0){
            return "已保存";
        }else {
            return "保存失败";
        }
    }

    @Override
    public int getCompanyDataCount() {
        int count = 0;
        count = homeMarkingMapper.getCompanyDataCount();
        return count;
    }

    @Override
    public List<Documents> getCompanyData(String companyId, Integer pageNum, String limit) {
        List<Documents> list = new ArrayList<>();
        HashMap<String,Object> condition = new HashMap<>();
        condition.put("companyId",companyId);
        LayuiJson layuiJson = new LayuiJson();
        layuiJson.setPageNum(pageNum);
        layuiJson.setLimit(Integer.valueOf(limit));
        layuiJson.setCondition(condition);
        list = homeMarkingMapper.getCompanyData(layuiJson);
        return list;
    }

    @Override
    public int getEmployeeDataCount() {
        int count = 0;
        count = homeMarkingMapper.getEmployeeDataCount();
        return count;
    }

    @Override
    public List<Documents> getEmployeeData(String companyId, Integer pageNum, String limit) {
        List<Documents> list = new ArrayList<>();
        HashMap<String,Object> condition = new HashMap<>();
        condition.put("companyId",companyId);
        LayuiJson layuiJson = new LayuiJson();
        layuiJson.setPageNum(pageNum);
        layuiJson.setLimit(Integer.valueOf(limit));
        layuiJson.setCondition(condition);
        list = homeMarkingMapper.getEmployeeData(layuiJson);
        return list;
    }
}
