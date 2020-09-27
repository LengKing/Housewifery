package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.LayuiData;
import com.alibaba.fastjson.JSON;
import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.bean.Train;
import com.cykj.housewifery.service.TrainService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/train")
public class TrainControl {

    @Autowired
    private TrainService trainService;

    @RequestMapping(value = "/selTrain" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
public Object selTrain(String page,String limit){
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = trainService.getTrainCount();
        List<Train> trains = trainService.selTrain(pageNum,limit);
        layuiJson.setData(trains);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
}

    @RequestMapping(value = "/findTrainById" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
public Object findTrainById(String id){
        Train train=trainService.findTrainById(id);
        return new Gson().toJson(train);
}

    @RequestMapping(value = "/updateTrain" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
public Object updateTrain(HttpServletRequest request) throws ParseException {
        String id=request.getParameter("id");
        String title = request.getParameter("title");
        String startDate=request.getParameter("startDate");
        String endDate=request.getParameter("endDate");
        String startTime=request.getParameter("startTime");
        String endTime=request.getParameter("endTime");
        String content=request.getParameter("content");
        String count=request.getParameter("count");
        String credential=request.getParameter("credential");
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
        Date date1 = formatter.parse(endDate);
        Date date2=formatter.parse(startDate);
        int dif=dateDiff(date1,date2);
        String length=(dif+1)+"天";
        Train train=new Train(Integer.valueOf(id),title,startDate,endDate,startTime,endTime,content,Integer.valueOf(count),length,credential,"");
        System.out.println(train);
        boolean flag=trainService.updateTrain(train);
        if (flag){
            return new Gson().toJson(1);
        }else{
            return new Gson().toJson(2);
        }
    }

    @RequestMapping(value = "/addTrain")
    @ResponseBody
    public Object addTrain(HttpServletRequest request, HttpServletResponse response,MultipartFile file) throws ParseException {
        String title = request.getParameter("title");
        String startDate=request.getParameter("startDate");
        String endDate=request.getParameter("endDate");
        String startTime=request.getParameter("startTime");
        String endTime=request.getParameter("endTime");
        String content=request.getParameter("content");
        String count=request.getParameter("count");
        String credential=request.getParameter("credential");
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
        Date date1 = formatter.parse(endDate);
        Date date2=formatter.parse(startDate);
        int dif=dateDiff(date1,date2);
        String length=(dif+1)+"天";
        try {
            //获取文件名
            String originalName = file.getOriginalFilename();
            //扩展名
            String  prefix= originalName.substring(originalName.lastIndexOf(".") + 1);
            Date date = new Date();
            //使用UUID+后缀名保存文件名，防止中文乱码问题
            String uuid = UUID.randomUUID().toString();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String dateStr = simpleDateFormat.format(date);
            //"/upload/"最后的的斜杠会被tomcat取消掉，需要把/放在projectPath
            String savePath = request.getSession().getServletContext().getRealPath("/static/data/video");
            //要保存的问题件路径和名称   /upload/2020-09-09/uuid.jpg
            String projectPath = savePath+ File.separator+ dateStr + File.separator + uuid + "." + prefix;
            System.out.println("projectPath==" + projectPath);
            String playPath="/housewifery/static/data/video"+ File.separator+ dateStr + File.separator + uuid + "." + prefix;
            File files = new File(projectPath);
            //打印查看上传路径
            if (!files.getParentFile().exists()) {//判断目录是否存在
//                System.out.println("files11111=" + files.getPath());
                files.getParentFile().mkdirs();
            }
            file.transferTo(files); // 将接收的文件保存到指定文件中
            Train train=new Train(0,title,startDate,endDate,startTime,endTime,content,Integer.valueOf(count),length,credential,playPath);
            boolean flag=trainService.addTrain(train);
            LayuiData layuiData=new LayuiData();
            layuiData.setCode(0);
            if (flag){
                layuiData.setMsg("上传成功");
            }else {
                layuiData.setMsg("上传失败");
            }
            return layuiData;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @RequestMapping(value = "/delTrain" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object delTrain(String id){
        boolean flag=trainService.delTrain(id);
        if (flag){
            return new Gson().toJson(1);
        }else {
            return new Gson().toJson(2);
        }
    }


    public static int dateDiff(Date date1, Date date2) {
        Calendar cal1 = Calendar.getInstance();
        Calendar cal2 = Calendar.getInstance();
        cal1.setTime(date1);
        cal2.setTime(date2);
        long ldate1 = date1.getTime() + cal1.get(Calendar.ZONE_OFFSET) + cal1.get(Calendar.DST_OFFSET);
        long ldate2 = date2.getTime() + cal2.get(Calendar.ZONE_OFFSET) + cal2.get(Calendar.DST_OFFSET);
        // Use integer calculation, truncate the decimals
        int hr1 = (int) (ldate1 / 3600000); // 60*60*1000
        int hr2 = (int) (ldate2 / 3600000);
        int days1 = hr1 / 24;
        int days2 = hr2 / 24;

        int dateDiff = days1 - days2;
        return dateDiff;
    }

    @RequestMapping(value = "/barTrain",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object barTrain(String time){
        Gson gson=new Gson();
        List<String> dates = gson.fromJson(time, new TypeToken<List<String>>(){}.getType());
        ReportDataBean dataBeans=trainService.barTrain(dates);
        return new Gson().toJson(dataBeans);
    }

    @RequestMapping(value = "/lineTrain",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object lineTrain(String time){
        Gson gson=new Gson();
        List<String> dates = gson.fromJson(time, new TypeToken<List<String>>(){}.getType());
        ReportDataBean dataBeans=trainService.lineTrain(dates);
        return new Gson().toJson(dataBeans);
    }

    @RequestMapping(value = "/employeeApply",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object employeeApply(String data,String trainId){
        List<Employee> employees = JSON.parseArray(data,Employee.class);
        String result = trainService.employeeApply(employees,trainId);
        return "result";
    }
}
