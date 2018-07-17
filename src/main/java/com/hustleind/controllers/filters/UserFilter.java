package com.hustleind.controllers.filters;


import org.apache.log4j.Logger;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/dashboard*")
public class UserFilter implements Filter {

    private static Logger logger = Logger.getLogger(UserFilter.class);

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        try {
            if (!"ROLE_STUDENT".equals(session.getAttribute("entered_role"))) {
                if (session.getAttribute("entered_user_id") == null)
                    resp.sendRedirect(req.getContextPath() + "/login");
                else resp.sendRedirect(req.getContextPath() + "/dashboard");
            } else chain.doFilter(request, response);
        } catch (IOException e) {
            logger.error("IOException: " + e.getMessage());
        } catch (ServletException e) {
            logger.error("ServletException: " + e.getMessage());
        }
    }

    @Override
    public void destroy() {

    }
}
