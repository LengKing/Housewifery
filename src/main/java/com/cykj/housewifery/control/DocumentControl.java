package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.Documents;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.service.DocumentService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/document")
public class DocumentControl {

    @Autowired
    private DocumentService documentService;

    @RequestMapping(value = "/downloadFile",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object downloadFile(String companyId,String name,String type) throws IOException {
        List<Documents> files = new ArrayList<>();
        if ("company".equals(type)){
            files = documentService.getCompanyData(companyId,name);
        }else if("employee".equals(type)){
            files = documentService.getEmployeeData(companyId,name);
        }
        return new Gson().toJson(files);
    }

    @RequestMapping(value = "/uploadFile",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object uploadFile(HttpServletRequest request, HttpServletResponse response,
                         MultipartFile file, String companyId,String name,String type,String employeeId) {
        try {
            String dir = "";
            int typeVal = 0;
            System.out.println("employee:"+employeeId);
            if ("company".equals(type)){
                dir = "companyData";
                typeVal= documentService.getDocumentTypeVal(name);
            }else if("employee".equals(type)){
                dir = "employeeData";
                typeVal= documentService.getDataTypeVal(name);
            }
            //获取文件名
            String originalName = file.getOriginalFilename();
            //扩展名
            String prefix = originalName.substring(originalName.lastIndexOf(".") + 1);
            Date date = new Date(System.currentTimeMillis());
            //使用UUID+后缀名保存文件名，防止中文乱码问题
            String uuid = UUID.randomUUID() + "";

            //"/upload/"最后的的斜杠会被tomcat取消掉，需要把/放在projectPath
            String savePath = request.getSession().getServletContext().getRealPath("/static/upload/"+dir);
            //要保存的问题件路径和名称   /upload/2020-09-09/uuid.jpg
            String projectPath = savePath + File.separator+ date + File.separator + uuid + "." + prefix;
            String finalSavePath = "http://localhost:8080/static/upload/"+ dir+"/"+ date + "/" + uuid + "." + prefix;
            File files = new File(projectPath);
            //打印查看上传路径
            if (!files.getParentFile().exists()) {//判断目录是否存在
                files.getParentFile().mkdirs();
            }
            Documents document = new Documents();
            document.setUrl(finalSavePath);
            document.setCompanyId(companyId);
            document.setDocumentType(typeVal);
            document.setEmployee(employeeId);

            int n = documentService.uploadFile(document,type);
            if (n>0){
                file.transferTo(files); // 将接收的文件保存到指定文件中
                System.out.println(projectPath);
                LayuiJson layuiJson=new LayuiJson();
                layuiJson.setCode(0);
                return new Gson().toJson(layuiJson);
            }else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
