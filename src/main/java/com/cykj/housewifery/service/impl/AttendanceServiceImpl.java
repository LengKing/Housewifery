package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Attendance;
import com.cykj.housewifery.bean.CompanyService;
import com.cykj.housewifery.mapper.AttendanceMapper;
import com.cykj.housewifery.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("attendanceService")
public class AttendanceServiceImpl implements AttendanceService {

    @Autowired
    AttendanceMapper attendanceMapper;

    @Override
    public int getClockCount(String companyId, String date) {
        int count = attendanceMapper.getClockCount( companyId, date);
        return count;
    }

    @Override
    public List<Attendance> getClockList(String companyId, String date, Integer pageNum, String limit) {
        List<Attendance> attendances = attendanceMapper.getClockList( companyId, date, pageNum, Integer.valueOf(limit));
        return attendances;
    }

}
