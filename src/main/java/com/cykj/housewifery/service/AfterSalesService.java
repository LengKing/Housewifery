package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.AfterSales;
import com.cykj.housewifery.bean.Param;

import java.util.List;

public interface AfterSalesService {

    int getafterSalesCount(String companyId, String state,String startDate,String endDate);

    List<AfterSales> afterSalesList(String companyId, Integer pageNum, String limit, String state,String startDate,String endDate);

}
