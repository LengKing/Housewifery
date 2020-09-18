package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ServiceArea;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

public interface AdminAreacService {
    LayuiJson getAreac(Map<String, String> condition, Integer curPage, Integer pageSize);

    int addareac(ServiceArea serviceArea);

    int deleteAreac(int id);
}
