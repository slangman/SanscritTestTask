package com.hustleind.controllers.filters;

import com.hustleind.entity.User;
import com.hustleind.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StartHandlerInterceptor implements HandlerInterceptor {
    private UserService userService;

    @Autowired
    public StartHandlerInterceptor(UserService userService) {
        this.userService = userService;
    }


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if (session.getAttribute("entered_user_id") == null) {
            User user = userService.getUserByLogin(SecurityContextHolder.getContext().getAuthentication().getName());
            addStartAttributeToSession(session, user);
            response.sendRedirect(request.getContextPath() + "/university/start");
        }
        return true;
    }

    private void addStartAttributeToSession(HttpSession session, User user) {
        session.setAttribute("entered_user_id", user.getId());
        session.setAttribute("entered_login", user.getLogin());
        session.setAttribute("entered_name", user.getFName() + " " + user.getLName());
        session.setAttribute("entered_role", user.getPermission());
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
