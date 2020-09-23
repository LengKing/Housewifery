package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Admin;
import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.MapBean;
import com.cykj.housewifery.bean.ReportDataBean;

import java.util.HashMap;
import java.util.List;

public interface CompanyService {
    ReportDataBean totalCompany(String startDate,String endDate);
    ReportDataBean lineCompany(String startDate, String endDate);
    List<MapBean> companyMap();
    public Company loginCompany(Company company);//公司的登录
    Admin LoginPT(Admin admin);//平台端的登录
}
