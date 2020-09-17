package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.LayuiJson;

import java.util.Map;

public interface CompanyManageService {
    public LayuiJson getCompany(Map<String, String> condition, Integer curPage, Integer pageSize);
}
