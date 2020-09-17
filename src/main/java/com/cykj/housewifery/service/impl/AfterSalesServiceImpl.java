package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.AfterSales;
import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.bean.Param;
import com.cykj.housewifery.mapper.AfterSalesMapper;
import com.cykj.housewifery.service.AfterSalesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("afterSales")
@Transactional
public class AfterSalesServiceImpl implements AfterSalesService {

    @Autowired
    AfterSalesMapper afterSalesMapper;

    @Override
    public int getafterSalesCount(String companyId, String state,String startDate,String endDate) {
        int count = afterSalesMapper.getafterSalesCount( companyId, state,startDate,endDate);
        return count;
    }

    @Override
    public List<AfterSales> afterSalesList(String companyId, Integer pageNum, String limit, String state,String startDate,String endDate) {
        List<AfterSales> afterSales = afterSalesMapper.getAfterSalesList(companyId, pageNum,Integer.valueOf(limit),state,startDate,endDate);
        return afterSales;
    }

    @Override
    public String afterSalesAudit(String id, String type) {
        int n = 0;
        String stateName;
        if (type.equals("pass")){
            stateName="待处理";
            n= afterSalesMapper.updateAfterSalesState(id,stateName);
        }
        if (type.equals("noPass")){
            stateName="已拒绝";
            n= afterSalesMapper.updateAfterSalesState(id,stateName);
        }
        if (n>0){
            return "success";
        }else {
            return "fail";
        }
    }

    @Override
    public Employee seeDetailsById(String id) {
        Employee employee = afterSalesMapper.seeDetailsById(id);
        return employee;
    }

    @Override
    public String arrangeAfterSales(String id, String number) {
        int n = afterSalesMapper.arrangeAfterSales( id, number);
        if (n>0){
            return "操作成功";
        }else {
            return "操作失败，请重试";
        }

    }

}
