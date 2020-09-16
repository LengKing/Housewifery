package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Counselor;
import com.cykj.housewifery.mapper.CounselorMapper;
import com.cykj.housewifery.service.CounselorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("counselorService")
public class CounselorServiceImpl implements CounselorService {

    @Autowired
    private CounselorMapper counselorMapper;

    @Override
    public int getCounselorCount() {
        int count =counselorMapper.getCounselorCount();
        return count;
    }

    @Override
    public List<Counselor> selCounselor(Integer pageNum, String limit) {
        List<Counselor> counselors=counselorMapper.selCounselor(pageNum,Integer.valueOf(limit));
        return counselors;
    }
}
