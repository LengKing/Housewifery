package com.cykj.housewifery.tools;

import org.springframework.context.annotation.Configuration;

public class AlipayConfig {

	// 商户appid
	public static String app_id = "2021000116661980";
	// 私钥 pkcs8格式的
	public static String RSA_PRIVATE_KEY = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCl1Ysdk/4kMrEPntprQaEGy6aqJ+HH+0Mxvo/F9f36PCAWotZfQkHhWEk3g8vsRdLEHSLafnsJK6U0Ta7VMlRwJ9HY//XoN6o9kSDPcrgQeYDgy7pZwxOxmsROSEf/2vqX0d8vARMFh/tafTwkApC5MCBlHhrgCSCYDMwDVSNUj2NjyLoeT2g/2q1KHZzJ29DtDOelZIj2zILQI+fhLORGAf2+edbwYVAXQsqdfCT9WLFBeNsMwJFo6Z5haPyuaDsUHFoPSBbEKtr4su/peifseQLJm0MUdZ5HTGRqgwar5YXasI5aNo3SFaFme3hHF8BYbBA+dHDuTajRmVy14GaHAgMBAAECggEANY2ce1TLgY0NOOonxvNOuQ8TJ2fxtc8ih/HuJBOojSLVifnUGLcg51DHdDIPrKFvyv1NwBmQSgnaM+XSS+8Q7ZcuYVFnbDJtu6weWF/HqSpTwESKTWp99aDxPAaDmdBxlI2l8Vv7dJHRTgubXFWnvuYX0A/Exgyshe28BGd+HVQbvzfgAvrC37AzOXWnl3KUDJY5W3+LFBDj+J8i2y7YInyyYNfWuudNmNt8fkvqCObK2Zdn2pcRQH41lSKj3QyzpBvo+Rn2c7Yf0O2Vbd2o7iqVW1i1smi1vBwYqKA402iPfEGueHnW9Kqa9VS/RIrMhNsM4g/lvHVOiXWMKQ3tYQKBgQDRzJHIjSoaYdYO8za6R9r4TnfkolFxwu0vHc7K3TVcru2cdvAVn/HoTTsL8tI/046LlxF00FAxk0fgVDBq89pPkr6MoiH25KsDKUUW+YlbbTZFNA3cVW+CQOsw6ClZaQRBKoSUZOBxjcG9+lKx3CExU3uOh2z6hjYlYWS+A8GktQKBgQDKWnLmmP+v9eHwt6jLm9zOX0SrtNOgw2E8108F9OYeoQli5+eHUSLneQWyQj72YMrT1/RTGan0Cke5E3W28JevZw0JUEbKBP10Jo1EvlulNhwix7//miBIk6OTJ9yJwHfaVISuBIZz9PV+4ZdG6QbmTuyEpyZVgEuinNCKx0l/ywKBgElxUX9hW2HM6gBlx7zCNrdB0Nqqr9QhJqKdzqxZb7q4SdnCER2g1jA6CPeP02Ygiv/2rFe2LLyOEFVJY4GtR7kfZ7EXeMhTGEKNCfCW/iyROLRVGp0NE3IHg82lGASCrMibN7oy7hcSRsZYgOZeZwg7bz9fzRiOLxo60+dorTsZAoGAGlWVGH+W3v5/7gTo2b6qCM2LMVFyLTzgHbvjk+HgROIuR4norsqXYUp1vFI0wXmtS86SBHKVlKX12Zc3vZwoEXK21px06fumRIRz5Btl7+VP2hLm4MvdIbTdF9ybLe43atmO/tql6NdbT6zqNBdFh5mD3GuoaH4u2bXQyg7PeOsCgYBYMretOaR3cYN8nX4ou6qzFv5ixiFsZ48JnXwUJeMGo4JvESM01OT7vt6xc8sWfVPQs/Yp/dsz2Zln5M+rXE5y6EFy0bSLo8AYtQLjp6xWWyDe2BfiYgTMgoa3uM/Tps3q3t+7ES4gKTjtuApQ3J9k8pKJGq5laVsdGO+KGDYjeQ==";

	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
	public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAigFiVtlSB50DlHw4rocZ6PZWKlV5ihzvSJ6947ek9DI245boOjCcHa8p0PwJyY1svYiQsiDC7DAxbDjq3PfO3RKTBUmaPHxROOsrnbrLE5jNKPoQVMccNB18ndbBXyxSzHAqr8OdW5HLCH9qSjgzU9qrvj1eiAdn+V4qsvC3vB7JeSNktAtC49OkWqo/8ABb+8SxoGGg/q6ZFeRpiwGE9ZtoBDY9baciMszeGN25Qp0oZtbBtwPvRzxKsVQGPwypDZpSba6g+XvLqZrx7V8UlXppDmQVrsmuozBhCJvpjDSdf3qNq17leNrgm1ukK5rapH5geux9OgrprFYt4TUZIQIDAQAB";

	// 服务器异步通知页面路径 需http://或者https://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://127.0.0.1/notify_url.jsp";
	// 页面跳转同步通知页面路径 需http://或者https://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问 商户可以自定义同步跳转地址
	public static String return_url = "http://localhost:8080/jsp/Page_Main.jsp";


	// 签名方式
	public static String sign_type = "RSA2";

	// 字符编码格式
	public static String charset = "utf-8";

	// 支付宝网关
	public static String gatewayUrl = "  https://openapi.alipaydev.com/gateway.do";

	// 返回格式
	public static String FORMAT = "json";
//    // 日志记录目录
//    public static String log_path = "/log";

}


