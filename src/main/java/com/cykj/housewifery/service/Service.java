package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.ServiceType;

import java.util.List;

public interface Service {
    int getServiceTypeCount(String companyId);

    List<ServiceType> getServiceTypeList(String companyId, Integer pageNum, String limit);
}
