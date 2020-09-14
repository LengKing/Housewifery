package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.mapper.AfficheMapper;
import com.cykj.housewifery.mapper.TrainMapper;
import com.cykj.housewifery.service.AfficheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("afficheService")
public class AfficheServiceImpl implements AfficheService {

    @Autowired
    private AfficheMapper afficheMapper;

    @Override
    public ReportDataBean barAffiche(List<String> dates) {
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=afficheMapper.barAffiche(date);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }

    @Override
    public ReportDataBean lineAffiche(List<String> dates) {
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=afficheMapper.lineAffiche(date);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }
}
