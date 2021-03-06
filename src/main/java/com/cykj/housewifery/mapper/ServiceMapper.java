package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.CompanyService;
import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ServiceType;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;
@Mapper
public interface ServiceMapper {
    int getCount(String companyId);

    List<CompanyService> getServiceList(LayuiJson layuiJson);

    int getServiceCount();

    int findServiceType(HashMap<String, Object> condition);

    int insertCompanyService(CompanyService companyService);

    int getServiceTypeCount();

    List<CompanyService> getServiceTypeList(LayuiJson layuiJson);

    int updateCompanyService(CompanyService companyService);

    List<ServiceType> getServiceTypeByCompanyId(String companyId);

    List<ServiceType> findAllServiceType();

    ServiceType getServiceTypeByEmployee(Employee employee);
}
