package com.shopping.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by 华哥哥 on 2017/9/17.
 */
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        List<String> uris = new ArrayList<>();
        uris.add("/userLogin.action");
        uris.add("/goods.action");

        Iterator<String> iterator = uris.iterator();
        while(iterator.hasNext()){
            String s = iterator.next();
            if (s.equals(request.getRequestURI())){
                filterChain.doFilter(servletRequest,response);
                return;
            }
        }

        HttpSession session = request.getSession();
//        System.out.println(request.getRequestURI());
        if(null != session.getAttribute("user")){
            response.sendRedirect("/goods.action");
            return;
        }
        filterChain.doFilter(servletRequest,response);
    }

    @Override
    public void destroy() {

    }
}
