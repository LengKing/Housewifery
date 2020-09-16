package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.User;

import java.util.Map;

public interface AdminManageService {
    public LayuiJson getManage(Map<String, String> condition, Integer curPage, Integer pageSize);

    public int updateState(User user);

    public LayuiJson getNeed(Map<String, String> condition, Integer curPage, Integer pageSize);
}
