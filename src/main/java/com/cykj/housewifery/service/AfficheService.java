package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Affiche;
import com.cykj.housewifery.bean.ReportDataBean;

import java.util.List;

public interface AfficheService {
    ReportDataBean barAffiche(List<String> dates);
    ReportDataBean lineAffiche(List<String> dates);

    List<Affiche> getAfficheList();
}
