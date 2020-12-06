/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package no18.demo1.filter;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Date;
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
public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        req.getRequestURI();
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File("d:\\log.txt"), true)));
        
        bw.append("time:" + new Date().toLocaleString());
        bw.newLine();
        bw.append("ip:" + req.getLocalAddr());
        bw.newLine();
        bw.append("uri:" + req.getRequestURI());
        bw.newLine();
        bw.append("user-agent:" + req.getHeader("user-agent"));
        bw.newLine();
        
        System.out.println("ip:" + req.getLocalAddr());
        System.out.println("uri:" + req.getRequestURI());
        System.out.println("user-agent:" + req.getHeader("user-agent"));
        System.out.println("time:" + new Date().toLocaleString());
        bw.close();
        
        String username = (String) req.getSession().getAttribute("username");
        if (null == username || username.isEmpty()) {
            res.sendRedirect("/JSPCourse/no18/login.jsp");
            return;
        }
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
    }

}
