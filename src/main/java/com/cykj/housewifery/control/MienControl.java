package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.LayuiData;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Mien;
import com.cykj.housewifery.service.MienService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/mien")
public class MienControl {

    @Autowired
    private MienService mienService;

    @RequestMapping(value = "/selMien" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object selMien(String page,String limit){
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = mienService.getMienCount();
        List<Mien> miens = mienService.selMien(pageNum,limit);
        layuiJson.setData(miens);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

    @RequestMapping(value = "/findMienById" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object findMienById(String id){
        Mien mien=mienService.findMienById(id);
        return new Gson().toJson(mien);
    }

    @RequestMapping(value = "/updateMien" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object updateMien(String id,String title,String type){
        boolean flag=mienService.updateMien(id,title,type);
        if (flag){
            return new Gson().toJson(1);
        }else {
            return new Gson().toJson(2);
        }
    }
    @RequestMapping(value = "/deleteMien" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object deleteKnowledge(String id){
        boolean flag=mienService.deleteMien(id);
        if (flag){
            return new Gson().toJson("删除成功");
        }else {
            return new Gson().toJson("删除失败");
        }
    }

    @RequestMapping(value = "/addMien")
    @ResponseBody
    public Object addMien(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws ParseException {
        String title = request.getParameter("title");
        String type = request.getParameter("type");
        try {
            String originalName = file.getOriginalFilename();
            String prefix = originalName.substring(originalName.lastIndexOf(".") + 1);
            Date date = new Date();
            String uuid = UUID.randomUUID().toString();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String dateStr = simpleDateFormat.format(date);
            String savePath = request.getSession().getServletContext().getRealPath("/static/data/images");
            String playPath = "/static/data/images" + File.separator + dateStr + File.separator + uuid + "." + prefix;
            String projectPath = savePath + File.separator + dateStr + File.separator + uuid + "." + prefix;
            File files = new File(projectPath);
            if (!files.getParentFile().exists()) {
                files.getParentFile().mkdirs();
            }
            file.transferTo(files); // 将接收的文件保存到指定文件中
            Mien mien = new Mien(0, title, null,type, null, playPath);
            boolean flag = mienService.addMien(mien);
            LayuiData layuiData = new LayuiData();
            layuiData.setCode(0);
            if (flag) {
                layuiData.setMsg("上传成功");
            } else {
                layuiData.setMsg("上传失败");
            }
            return layuiData;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


}
