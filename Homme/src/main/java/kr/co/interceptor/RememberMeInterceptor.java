package kr.co.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import kr.co.service.MemberService;
import kr.co.vo.MemberVO;

public class RememberMeInterceptor extends HandlerInterceptorAdapter {
	
	 
	   @Inject
	   private MemberService service;
	   
	   @Override
	    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

	        HttpSession httpSession = request.getSession();
	        Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
	        if (loginCookie != null) {
	            MemberVO vo = service.checkLoginBefore(loginCookie.getValue());
	            if (vo != null)
	                httpSession.setAttribute("member", vo);
	        }
	        return true;
	    }
	}