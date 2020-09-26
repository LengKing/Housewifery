package com.cykj.housewifery.control;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradeWapPayModel;
import com.alipay.api.request.AlipayTradeWapPayRequest;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.bean.ServiceArea;
import com.cykj.housewifery.tools.AlipayConfig;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;


@Controller
@RequestMapping("/adminPay")
public class AdminPayControl {

    @RequestMapping("/pay")
    @ResponseBody
    public String Pay(String WIDTCout_trade_no,String WIDsubject,String WIDtotal_amount,String WIDbody) throws AlipayApiException {
        AlipayConfig alipayConfig = new AlipayConfig();
        // 建立连接
        AlipayClient alipayClient = new DefaultAlipayClient(alipayConfig.gatewayUrl,alipayConfig.app_id
        ,alipayConfig.RSA_PRIVATE_KEY,alipayConfig.FORMAT,alipayConfig.charset,alipayConfig.alipay_public_key,alipayConfig.sign_type);

        // 创建请求
        AlipayTradeWapPayRequest alipayTradeWapPayRequest = new AlipayTradeWapPayRequest();

        AlipayTradeWapPayModel alipayTradeWapPayModel = new AlipayTradeWapPayModel();
        alipayTradeWapPayModel.setOutTradeNo(WIDTCout_trade_no);
        alipayTradeWapPayModel.setSubject(WIDsubject);
        alipayTradeWapPayModel.setTotalAmount(WIDtotal_amount);
        alipayTradeWapPayModel.setBody(WIDbody);
        alipayTradeWapPayRequest.setBizModel(alipayTradeWapPayModel);
        alipayTradeWapPayRequest.setNotifyUrl(alipayConfig.notify_url);
        alipayTradeWapPayRequest.setReturnUrl(alipayConfig.return_url);

        String form = alipayClient.pageExecute(alipayTradeWapPayRequest).getBody();
        System.out.println(form);
        return form;
    }
}
