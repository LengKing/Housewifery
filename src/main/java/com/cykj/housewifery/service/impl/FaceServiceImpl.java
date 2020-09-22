package com.cykj.housewifery.service.impl;
import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.mapper.EmployeeMapper;
import com.cykj.housewifery.service.FaceService;
import com.cykj.housewifery.tools.AuthService;
import com.cykj.housewifery.tools.Base64Util;
import com.cykj.housewifery.tools.GsonUtils;
import com.cykj.housewifery.tools.HttpUtil;
import com.google.gson.Gson;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service("faceService")
public class FaceServiceImpl implements FaceService {

    @Autowired
    EmployeeMapper employeeMapper;
    @Override
    public String searchFace(String imgStr) {
        // 请求url
       // String url = "https://aip.baidubce.com/rest/2.0/face/v3/search";
        String url = "https://aip.baidubce.com/rest/2.0/face/v3/detect";
        try {
            Map<String, Object> map = new HashMap<>();
//            map.put("image", imgStr);
//            map.put("liveness_control", "NORMAL");
//            map.put("group_id_list", "housewifery");
//            map.put("image_type", "BASE64");
//            map.put("quality_control", "LOW");


            map.put("image", imgStr);
            map.put("face_field", "beauty,age");
            map.put("image_type", "BASE64");

            String param = GsonUtils.toJson(map);

            // 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
            String accessToken = AuthService.getAuth();

            String result = HttpUtil.post(url, accessToken, "application/json", param);
            System.out.println(result);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public String addEmployeeFace(String img, String number) {
        // 请求url
        String url = "https://aip.baidubce.com/rest/2.0/face/v3/faceset/user/add";
        try {
            Map<String, Object> map = new HashMap<>();
            Employee employee = employeeMapper.findEmployeeById(number);
            map.put("image", img);
            map.put("group_id", "housewifery");
            map.put("user_id", number);
            map.put("user_info", new Gson().toJson(employee));
            map.put("liveness_control", "NORMAL");
            map.put("image_type", "BASE64");
            map.put("quality_control", "LOW");
            map.put("action_type","REPLACE");
            String param = GsonUtils.toJson(map);

            // 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
            String accessToken = AuthService.getAuth();
            String result = HttpUtil.post(url, accessToken, "application/json", param);
            JSONObject json = new JSONObject(result);
            String result1 = json.getString("result");

            JSONObject json1 = new JSONObject(result1);
            String face_token = json1.getString("face_token");
            System.out.println("face_token="+face_token);

            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
