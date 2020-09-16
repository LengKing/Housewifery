package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.MapBean;
import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.mapper.CompanyMapper;
import com.cykj.housewifery.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyMapper companyMapper;


    @Override
    public ReportDataBean totalCompany(String startDate, String endDate) {
        List<String> dates=companyMapper.allDate(startDate,endDate);
        Collections.reverse(dates);
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=companyMapper.totalCompany(date);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }

    @Override
    public ReportDataBean lineCompany(String startDate, String endDate) {
        List<String> dates=companyMapper.allDate(startDate,endDate);
        Collections.reverse(dates);
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=companyMapper.lineCompany(date);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }

    @Override
    public List<MapBean> companyMap() {
        List<String> areas=companyMapper.selArea();
        List<MapBean> data=new ArrayList<>();
        for (String area:areas){
            int count=companyMapper.companyMap(area);
            MapBean bean=new MapBean(area,count);
            data.add(bean);
        }
        return data;
    }
}
