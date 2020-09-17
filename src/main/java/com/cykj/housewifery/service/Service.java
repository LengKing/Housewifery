package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.CompanyService;
import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.bean.ServiceType;

import java.util.List;

public interface Service {
    int getServiceTypeCount();

    List<CompanyService> getServiceTypeList(String companyId, Integer pageNum, String limit);

    int getServiceCount();

    List<CompanyService> getServiceList(String companyId, Integer pageNum, String limit);

    String updateServiceState(String companyId,String id,String event,String type);

    List<ServiceType> getServiceTypeByCompanyId(String companyId);

    List<ServiceType> findAllServiceType();

    ServiceType getServiceTypeByEmployee(Employee employee);
}
