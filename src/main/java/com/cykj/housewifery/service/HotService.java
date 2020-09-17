package com.cykj.housewifery.service;


import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Order;

import java.util.List;
import java.util.Map;

public interface HotService {

    public LayuiJson getHot(Map<String, String> condition, Integer curPage, Integer pageSize);
}
