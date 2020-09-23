package com.cykj.housewifery.control;

import com.cykj.housewifery.service.FaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/face")
public class FaceControl {

    @Autowired
    FaceService faceService;

    @RequestMapping(value = "/searchFace",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object searchFace(String imgStr) {
        String result = faceService.searchFace(imgStr);
        return result;
    }

    @RequestMapping(value = "/addEmployeeFace",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object addEmployeeFace(String img,String number) {
        String result = faceService.addEmployeeFace(img,number);
        return result;
    }
}
