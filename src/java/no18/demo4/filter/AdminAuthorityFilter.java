/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package no18.demo4.filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 陈老师
 */
public class AdminAuthorityFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        res.setCharacterEncoding("UTF-8");
        String role = (String)req.getSession().getAttribute("role");
        if("admin".equals(role)){
            chain.doFilter(request, response);//放行
        }else{
            PrintWriter writer = res.getWriter();
            res.setContentType("text/html; charset=utf-8");
            writer.print("<script>alert('您没有权限访问该页面');location.href='/JSPCourse/no18/login.jsp';</script>");
        }
        

    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }

}
