package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Demand;
import com.cykj.housewifery.mapper.PostDemandMapper;
import com.cykj.housewifery.service.PostDemandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("postDemand")
public class PostDemandServiceImpl implements PostDemandService {

    @Autowired
    PostDemandMapper postDemandMapper;

    @Override
    public Demand getDemand(Demand demand) {
        Demand getdemand = null;
        getdemand = postDemandMapper.getDemand(demand);
        return getdemand;
    }
}
