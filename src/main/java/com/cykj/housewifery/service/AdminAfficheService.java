package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Affiche;
import com.cykj.housewifery.bean.LayuiJson;

import java.util.Map;

public interface AdminAfficheService {
    public LayuiJson getAffiche(Map<String, String> condition, Integer curPage, Integer pageSize);

    public int deleteAffiche(int id);

    public int addTAffiche(Affiche affiche);

    public int updateAffiche(Affiche affiche);
}
