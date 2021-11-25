package kr.co.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.controller.MemberController;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	private static final Logger logger =  LoggerFactory.getLogger(MemberController.class);
	private static final String LOGIN = "member";
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		logger.info("맞나?");
	    HttpSession httpSession = request.getSession();
	    ModelMap modelMap = modelAndView.getModelMap();
	    Object userVO =  modelMap.get("member");

	    if (userVO != null) {
	        logger.info("new login success");
	        httpSession.setAttribute(LOGIN, userVO);
	        //response.sendRedirect("/");
	        
	        if (request.getParameter("useCookie") != null) {
	            logger.info("remember me...");
	            // 쿠키 생성
	            Cookie loginCookie = new Cookie("loginCookie", httpSession.getId());
	            loginCookie.setPath("/");
	            loginCookie.setMaxAge(60*60*24*7);
	            // 전송
	            response.addCookie(loginCookie);
	        }

	        Object destination = httpSession.getAttribute("destination");
	        response.sendRedirect(destination != null ? (String) destination : "/main/index");
	    }

	}
}