package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.AfterSales;
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
}
