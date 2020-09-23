package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Attendance;

import java.util.List;

public interface AttendanceService {

    int getClockCount(String companyId, String date);

    List<Attendance> getClockList(String companyId, String date, Integer pageNum, String limit);
}
