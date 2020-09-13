package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Documents;

import java.util.List;

public interface DocumentService {
    List<Documents> getCompanyData(String companyId, String name);

    List<Documents> getEmployeeData(String companyId, String name);

    int getDocumentTypeVal(String name);

    int uploadFile(Documents document,String type);
}
