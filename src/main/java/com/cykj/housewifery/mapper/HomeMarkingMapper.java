package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.Documents;
import com.cykj.housewifery.bean.LayuiJson;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface HomeMarkingMapper {

    Company findCompanyById(String companyId);

    int updateInformation(Company company);

    int getCompanyDataCount();

    List<Documents> getCompanyData(LayuiJson layuiJson);

    int getEmployeeDataCount();

    List<Documents> getEmployeeData(LayuiJson layuiJson);
}
