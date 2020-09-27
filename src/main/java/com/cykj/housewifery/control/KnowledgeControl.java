package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.*;
import com.cykj.housewifery.service.KnowledgeService;
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
@RequestMapping("/knowledge")
public class KnowledgeControl {

    @Autowired
    private KnowledgeService knowledgeService;

    @RequestMapping(value = "/selKnowledge" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object selKnowledge(String page,String limit){
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = knowledgeService.getKnowledgeCount();
        List<Knowledge> knowledges = knowledgeService.selKnowledge(pageNum,limit);
        layuiJson.setData(knowledges);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

    @RequestMapping(value = "/findKnowledgeById" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object findKnowledgeById(String id){
        Knowledge knowledge=knowledgeService.findKnowledgeById(id);
        return new Gson().toJson(knowledge);
    }

    @RequestMapping(value = "/updateKnowledge" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object updateKnowledge(String id,String title,String type){
        boolean flag=knowledgeService.updateKnowledge(id,title,type);
        if (flag){
            return new Gson().toJson(1);
        }else {
            return new Gson().toJson(2);
        }
    }
    @RequestMapping(value = "/deleteKnowledge" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object deleteKnowledge(String id){
        boolean flag=knowledgeService.deleteKnowledge(id);
        if (flag){
            return new Gson().toJson("删除成功");
        }else {
            return new Gson().toJson("删除失败");
        }
    }

    @RequestMapping(value = "/addKnowledge")
    @ResponseBody
    public Object addKnowledge(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws ParseException {
        String title = request.getParameter("title");
        String type = request.getParameter("type");
        try {
            String originalName = file.getOriginalFilename();
            String prefix = originalName.substring(originalName.lastIndexOf(".") + 1);
            Date date = new Date();
            String uuid = UUID.randomUUID().toString();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String dateStr = simpleDateFormat.format(date);
            String savePath = null;
            String playPath = null;
            if (type.equals("图片")) {
                savePath = request.getSession().getServletContext().getRealPath("/static/data/images");
                playPath = "/housewifery/static/data/images" + File.separator + dateStr + File.separator + uuid + "." + prefix;
            } else if (type.equals("文章")) {
                savePath = request.getSession().getServletContext().getRealPath("/static/data/documents");
                playPath = "/housewifery/static/data/documents" + File.separator + dateStr + File.separator + uuid + "." + prefix;
            } else if (type.equals("视频")) {
                savePath = request.getSession().getServletContext().getRealPath("/static/data/video");
                playPath = "/housewifery/static/data/video" + File.separator + dateStr + File.separator + uuid + "." + prefix;
            }
            String projectPath = savePath + File.separator + dateStr + File.separator + uuid + "." + prefix;
            File files = new File(projectPath);
            if (!files.getParentFile().exists()) {
                files.getParentFile().mkdirs();
            }
            file.transferTo(files); // 将接收的文件保存到指定文件中
            Knowledge knowledge = new Knowledge(0, title, type, null, playPath);
            boolean flag = knowledgeService.addKnowledge(knowledge);
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
