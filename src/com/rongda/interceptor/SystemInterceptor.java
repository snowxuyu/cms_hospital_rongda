package com.rongda.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.springframework.web.portlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.rongda.model.CMS_USER;
import com.rongda.model.User;

public class SystemInterceptor extends HandlerInterceptorAdapter {

	private Logger logger = Logger.getLogger(SystemInterceptor.class.getName());

	public String[] allowUrls;

	public String[] getAllowUrls() {
		return allowUrls;
	}

	public void setAllowUrls(String[] allowUrls) {
		this.allowUrls = allowUrls;
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {

		String requestUrl = request.getRequestURI().replace(
				request.getContextPath(), "");
		if (null != allowUrls && allowUrls.length >= 1)
			for (String url : allowUrls) {
				if (requestUrl.contains(url)||requestUrl.equals("/")) {
					return true;
				}
			}
		CMS_USER user = (CMS_USER) request.getSession()
				.getAttribute("USER_KEY");
		if (user != null) {
			logger.log(Level.INFO, "user not login");
			return true;
		} else {
			throw new SystemTimeoutException();
		}
	}

	public void postHandle(HttpServletRequest hsr, HttpServletResponse hsr1,
			Object o, ModelAndView mav) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest hsr,
			HttpServletResponse hsr1, Object o, Exception excptn)
			throws Exception {
	}

}
