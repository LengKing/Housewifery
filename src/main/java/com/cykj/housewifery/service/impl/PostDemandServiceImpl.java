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
    public int getDemand(Demand demand) {
        int n = 0;
        n = postDemandMapper.getDemand(demand);
        return n;
    }
}
