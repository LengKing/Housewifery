package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Demand;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PostDemandMapper {
    public int getDemand(Demand demand);
}
