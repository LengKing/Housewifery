package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.CompanyAccountDetails;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface CompanyAccountMapper {
    Company getAccountMsgById(String companyId);

    int setAccount(Company company);

    int consumption(Company company);

    int insertRecords(CompanyAccountDetails details);

    int topUp(Company company);

    int getRecordsCount(String companyId);

    List<CompanyAccountDetails> getRecordsById(HashMap<String, Object> condition);
}
