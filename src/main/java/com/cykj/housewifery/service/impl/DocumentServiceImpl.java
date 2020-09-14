package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Documents;
import com.cykj.housewifery.mapper.DocumentMapper;
import com.cykj.housewifery.service.DocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service("documentService")
public class DocumentServiceImpl implements DocumentService {

    @Autowired
    public DocumentMapper documentMapper;

    @Override
    public List<Documents> getCompanyData(String companyId, String name) {
        HashMap<String,Object> condition = new HashMap<>();
        condition.put("companyId",companyId);
        condition.put("name",name);
        List<Documents> files = documentMapper.getCompanyData(condition);
        return files;
    }

    @Override
    public List<Documents> getEmployeeData(String companyId, String name) {
        HashMap<String,Object> condition = new HashMap<>();
        condition.put("companyId",companyId);
        condition.put("name",name);
        List<Documents> files = documentMapper.getEmployeeData(condition);
        return files;
    }

    @Override
    public int getDocumentTypeVal(String name) {
        int val = documentMapper.getDocumentTypeVal(name);
        return val;
    }

    @Override
    public int uploadFile(Documents document,String type) {
        int result = 0;
        if ("company".equals(type)){
            result = documentMapper.uploadCompanyFile(document);
        }else if("employee".equals(type)){
            result = documentMapper.uploadEmployeeFile(document);
        }

        return result;
    }

    @Override
    public int getDataTypeVal(String name) {
        int val = documentMapper.getDataTypeVal(name);
        return val;
    }

}
