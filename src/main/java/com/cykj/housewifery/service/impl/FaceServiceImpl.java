package com.cykj.housewifery.service.impl;
import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.mapper.ArrangeMapper;
import com.cykj.housewifery.mapper.AttendanceMapper;
import com.cykj.housewifery.mapper.EmployeeMapper;
import com.cykj.housewifery.service.FaceService;
import com.cykj.housewifery.tools.AuthService;
import com.cykj.housewifery.tools.GsonUtils;
import com.cykj.housewifery.tools.HttpUtil;
import com.google.gson.Gson;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Service("faceService")
public class FaceServiceImpl implements FaceService {

    @Autowired
    EmployeeMapper employeeMapper;
    @Autowired
    AttendanceMapper attendanceMapper;
    @Override
    public String searchFace(String imgStr) {
        // 请求url
        String url = "https://aip.baidubce.com/rest/2.0/face/v3/search";
        int error_code = 0;
        String error_msg = null;
        try {
            Map<String, Object> map = new HashMap<>();
            map.put("image", imgStr);
            map.put("liveness_control", "NORMAL");
            map.put("group_id_list", "housewifery");
            map.put("image_type", "BASE64");
            map.put("quality_control", "LOW");

            String param = GsonUtils.toJson(map);

            // 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
            String accessToken = AuthService.getAuth();
            String result = HttpUtil.post(url, accessToken, "application/json", param);

            JSONObject json = new JSONObject(result);
            String result1 = json.getString("result");
            error_code = json.getInt("error_code");
            error_msg = json.getString("error_msg");
            JSONObject json1 = new JSONObject(result1);
            String userList = json1.getString("user_list");
            JSONArray json2 = new JSONArray(userList);
            int length = json2.length();
            String user = null;
            for(int n=0;n<length;n++) {
                user = json2.getString(n);
            }
            JSONObject json3 = new JSONObject(user);
            Double score = json3.getDouble("score");
            System.out.println(score);
            if (score<85){
                return "没有检测到员工信息";
            }
            String user_info = json3.getString("user_info");
            Employee employee = new Gson().fromJson(user_info,Employee.class);
            attendanceMapper.employeeClock(employee.getNumber(),new Date());
            return employee.getName();
        } catch (Exception e) {
            return errorDealWith(error_code,error_msg);
        }
    }

    @Override
    public String addEmployeeFace(String img, String number) {
        // 请求url
        String url = "https://aip.baidubce.com/rest/2.0/face/v3/faceset/user/add";
        int error_code = 0;
        String error_msg = null;
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
            error_code = json.getInt("error_code");
            error_msg = json.getString("error_msg");
            JSONObject json1 = new JSONObject(result1);

            String face_token = json1.getString("face_token");
            int n = employeeMapper.updateFaceToken(number,face_token);
            if (n>0){
                return "存档成功";
            }
        } catch (Exception e) {
            return errorDealWith(error_code,error_msg);
        }
        return "存档失败";
    }
    private String  errorDealWith(int error_code,String error_msg){
        switch (error_code)
        {
            case 216100:
                return "invalid param 参数异常,请重新填写注册信息";
            case 216611:
                return "user not exist 用户id不存在，请确认该用户是否注册或注册已经生效(需要已经注册超过5s）";
            case 216401:
                return "internal error 内部错误";
            case 216402:
                return "face not found 未找到人脸，请检查图片是否含有人脸";
            case 216500:
                return "unknown error 未知错误";
            case 216615:
                return "fail to process images 服务处理该图片失败，发生后重试即可";
            case 216618:
                return "no user in group 组内用户为空，确认该group是否存在或已经生效(需要已经注册超过5s)";
            case 223114:
                return "face is fuzzy 人脸模糊";
            default:
                return error_msg;
        }
    }
}
