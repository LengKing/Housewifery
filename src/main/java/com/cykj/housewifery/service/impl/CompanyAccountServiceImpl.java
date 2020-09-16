package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.CompanyAccountDetails;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.mapper.CompanyAccountMapper;
import com.cykj.housewifery.service.CompanyAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;

@Service("CompanyAccountService")
@Transactional
public class CompanyAccountServiceImpl implements CompanyAccountService {

    @Autowired
    CompanyAccountMapper companyAccountMapper;
    @Override
    public Company getAccountMsg(String companyId) {
        Company company = companyAccountMapper.getAccountMsgById(companyId);
        return company;
    }

    @Override
    public String setAccount(String companyId, String account) {
        Company company = new Company();
        company.setId(Integer.valueOf(companyId));
        company.setAccount(account);
        int n = companyAccountMapper.setAccount(company);
        if (n>0){
            return "success";
        }else {
            return "fail";
        }
    }

    @Override
    public String withdrawal(String companyId, String money) {
        Company company = new Company();
        company.setId(Integer.valueOf(companyId));
        company.setMoney(new BigDecimal(money));
        int n = companyAccountMapper.consumption(company);
        if (n>0){
            CompanyAccountDetails details = new CompanyAccountDetails();
            details.setHappenTime(new Date(System.currentTimeMillis()));
            details.setMoneyTo("账户提现");
            details.setMoney(new BigDecimal(money));
            details.setOperationType("提现");
            details.setCompanyId(Integer.valueOf(companyId));
            int n1 = companyAccountMapper.insertRecords(details);
            if (n1>0){
                return "success";
            }else {
                return "提现失败，请稍后再试";
            }
        }else {
            return "账户余额不足";
        }
    }

    @Override
    public String transfer(String companyId, String money) {
        Company company = new Company();
        company.setId(Integer.valueOf(companyId));
        company.setMoney(new BigDecimal(money));
        int n = companyAccountMapper.consumption(company);
        if (n>0){
            CompanyAccountDetails details = new CompanyAccountDetails();
            details.setHappenTime(new Date(System.currentTimeMillis()));
            details.setMoneyTo("账户转账");
            details.setMoney(new BigDecimal(money));
            details.setOperationType("转账");
            details.setCompanyId(Integer.valueOf(companyId));
            int n1 = companyAccountMapper.insertRecords(details);
            if (n1>0){
                return "success";
            }else {
                return "转账失败，请稍后再试";
            }
        }else {
            return "账户余额不足";
        }
    }

    @Override
    public String topUp(String companyId, String money) {
        Company company = new Company();
        company.setId(Integer.valueOf(companyId));
        company.setMoney(new BigDecimal(money));
        int n = companyAccountMapper.topUp(company);
        if (n>0){
            CompanyAccountDetails details = new CompanyAccountDetails();
            details.setHappenTime(new Date(System.currentTimeMillis()));
            details.setMoneyTo("账户充值");
            details.setMoney(new BigDecimal(money));
            details.setOperationType("充值");
            details.setCompanyId(Integer.valueOf(companyId));
            int n1 = companyAccountMapper.insertRecords(details);
            if (n1>0){
                return "success";
            }
        }
        return "充值失败，请稍后再试";
    }

    @Override
    public int getRecordsCount(String companyId) {
        int count = companyAccountMapper.getRecordsCount(companyId);
        return count;
    }

    @Override
    public List<CompanyAccountDetails> getRecords(String companyId, Integer pageNum, String limit) {
        HashMap<String,Object> condition = new HashMap<>();
        condition.put("companyId",companyId);
        condition.put("pageNum",pageNum);
        condition.put("limit",Integer.valueOf(limit));
        List<CompanyAccountDetails> list = companyAccountMapper.getRecordsById(condition);
        return list;
    }

}
