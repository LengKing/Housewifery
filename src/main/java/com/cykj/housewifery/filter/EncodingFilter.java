package com.cykj.housewifery.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

//编码过滤器
@WebFilter("/*")
public class EncodingFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//        System.out.println("进入编码过滤");
        request.setCharacterEncoding("UTF-8");
        if (!((HttpServletRequest) request).getRequestURI().endsWith("css")) {
            response.setContentType("text/html;charset=UTF-8");
        }
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
