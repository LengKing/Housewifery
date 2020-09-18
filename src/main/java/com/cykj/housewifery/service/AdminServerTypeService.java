package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ServiceType;

import java.util.Map;

public interface AdminServerTypeService {
    public LayuiJson getType(Map<String, String> condition, Integer curPage, Integer pageSize);

    public int updatesType(ServiceType serviceType);

    public int updateServers(ServiceType serviceType);

    public int addType(ServiceType serviceType);

    public int deleteType(int id);

    public int deleteTypes(int id1);
}
