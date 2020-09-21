package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Arrange;
import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.mapper.ArrangeMapper;
import com.cykj.housewifery.mapper.EmployeeMapper;
import com.cykj.housewifery.service.ArrangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("arrange")
@Transactional
public class ArrangeServiceImpl implements ArrangeService {

    @Autowired
    ArrangeMapper arrangeMapper;

    @Override
    public List<Employee> getCompanyEmployees(String companyId,String date) {
        List<Employee> employees = arrangeMapper.getCompanyEmployees( companyId,date);
        return employees;
    }

    @Override
    public String addArrange(List<Employee> list, String date) {
        int n = arrangeMapper.addArrange(list, date);
        if (n>0){
            return "success";
        }else {
            return "fail";
        }
    }

    @Override
    public List<Arrange> getArrange(String companyId,String date) {
        List<Arrange> arranges = arrangeMapper.getArrange( companyId,date);
        return arranges;
    }

    @Override
    public String updateArrange(List<String> list, String date) {
        int n = arrangeMapper.updateArrange(list, date);
        if (n>0){
            return "操作成功";
        }else {
            return "操作失败";
        }
    }
}
