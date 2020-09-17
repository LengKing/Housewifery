package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.LayuiJson;

import java.util.Map;

public interface AdminAfficheService {
    public LayuiJson getAffiche(Map<String, String> condition, Integer curPage, Integer pageSize);
}
