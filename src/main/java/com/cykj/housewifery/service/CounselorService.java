package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Counselor;

import java.util.List;

public interface CounselorService {

    int getCounselorCount();
    List<Counselor> selCounselor(Integer pageNum, String limit);

}
