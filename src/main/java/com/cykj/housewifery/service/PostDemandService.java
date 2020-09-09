package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Demand;
import org.apache.ibatis.annotations.Param;

public interface PostDemandService {
    public Demand getDemand(Demand demand);
}
