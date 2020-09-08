package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.ServiceType;

import java.util.List;

public interface Service {
    int getServiceTypeCount(String companyId);

    List<ServiceType> getServiceTypeList(String companyId, Integer pageNum, String limit);

    int getServiceCount();

    List<ServiceType> getServiceList(String companyId, Integer pageNum, String limit);

    String updateServiceState(String companyId,String id,String event);
}
