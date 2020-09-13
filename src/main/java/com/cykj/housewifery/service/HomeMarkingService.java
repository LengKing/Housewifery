package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.Documents;

import java.util.List;

public interface HomeMarkingService {
    Company findCompanyById(String companyId);

    String updateInformation(Company company);

    int getCompanyDataCount();

    List<Documents> getCompanyData(String companyId, Integer pageNum, String limit);

    int getEmployeeDataCount();

    List<Documents> getEmployeeData(String companyId, Integer pageNum, String limit);
}
