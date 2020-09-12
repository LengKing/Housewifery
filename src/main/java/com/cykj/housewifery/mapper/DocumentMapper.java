package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Documents;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface DocumentMapper {
    List<Documents> getCompanyData(HashMap<String, Object> condition);

    int getDocumentTypeVal(String name);

    int uploadCompanyFile(Documents document);

    int uploadEmployeeFile(Documents document);

    List<Documents> getEmployeeData(HashMap<String, Object> condition);
}
