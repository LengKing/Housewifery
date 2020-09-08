package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ServiceType;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface ServiceMapper {
    int getCount(String companyId);

    List<ServiceType> getServiceList(LayuiJson layuiJson);
}
