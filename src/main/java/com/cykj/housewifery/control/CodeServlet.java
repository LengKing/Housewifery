package com.cykj.housewifery.control;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.PrivateKey;

@Controller
@RequestMapping("/getCode")
//@WebServlet("/getCode")
public class CodeServlet extends HttpServlet {

    @RequestMapping("/service")
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //生成4位数的随机验证码
        String str = "";
        for (int i=0;i<4;i++){
            str+=(int)Math.floor(Math.random()*10);
        }
        request.getSession().setAttribute("_code",str);
        //获取前台传输过来的手机号码
       String phone= request.getParameter("phone");
       sendMsg(phone,str);

    }
    private  void sendMsg(String phone, String str){

        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4G6Frc4mPLLVsTsVqjiA", "yBvzflSn6M6sXjCqxWsqQzRZHfpXcl");
        IAcsClient client = new DefaultAcsClient(profile);

        CommonRequest request = new CommonRequest();
        request.setSysMethod(MethodType.POST);
        request.setSysDomain("dysmsapi.aliyuncs.com");
        request.setSysVersion("2017-05-25");
        request.setSysAction("SendSms");
        request.putQueryParameter("RegionId", "cn-hangzhou");
        request.putQueryParameter("PhoneNumbers", phone);
        request.putQueryParameter("SignName", "智慧家政");
        request.putQueryParameter("TemplateCode", "SMS_202545748");
        request.putQueryParameter("TemplateParam", "{'code':'"+str+"'}");
        try {
            CommonResponse response = client.getCommonResponse(request);
            System.out.println(response.getData());
        } catch (ClientException e) {
            e.printStackTrace();
        }
    }


}
