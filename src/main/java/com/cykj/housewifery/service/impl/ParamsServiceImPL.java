package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.mapper.ParamsMapper;
import com.cykj.housewifery.service.ParamsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("paramsService")
public class ParamsServiceImPL  implements ParamsService {

    @Autowired
    private ParamsMapper paramsMapper;


    @Override
    public List<Object> findParams(String type) {
        List<Object> params=paramsMapper.findParams(type);
        return params;
    }

    @Override
    public List<Object> findTime() {
        List<Object> times=paramsMapper.findTime();
        return times;
    }
}
