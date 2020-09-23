package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Arrange;
import com.cykj.housewifery.bean.Employee;

import java.util.List;

public interface ArrangeService {
    List<Employee> getCompanyEmployees(String companyId,String date);

    String addArrange(List<Employee> list, String date);

    List<Arrange> getArrange(String companyId,String date);

    String updateArrange(List<String> list, String date);
}
