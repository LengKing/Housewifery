package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.CompanyAccountDetails;

import java.util.List;

public interface CompanyAccountService {
    Company getAccountMsg(String companyId);

    String setAccount(String companyId, String account);

    String withdrawal(String companyId, String money);

    String transfer(String companyId, String money);

    String topUp(String companyId, String money);

    int getRecordsCount(String companyId);

    List<CompanyAccountDetails> getRecords(String companyId, Integer pageNum, String limit);
}
