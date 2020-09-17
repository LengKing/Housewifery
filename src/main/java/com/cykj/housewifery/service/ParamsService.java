package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Param;

import java.util.List;

public interface ParamsService {

    List<Object> findParams(String type);
    List<Object> findTime();
    List<Param> findAfterSalesState();
}
