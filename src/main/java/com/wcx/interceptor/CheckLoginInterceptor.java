package com.wcx.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
/**
 * 拦截器
 * @author zf
 * 2017年12月30日
 */
public class CheckLoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("来了...");
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	/**
	 * 在访问Controller之前调用
	 */
	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2)
			throws Exception {
		if (arg0.getSession().getAttribute("currentLoginManager")==null) {
			String path=arg0.getScheme()+"://"+arg0.getServerName()+":"+arg0.getServerPort()+arg0.getContextPath()+"/";
			arg1.setContentType("text/html;charset=utf-8");
			PrintWriter out=arg1.getWriter();
			out.println("<script>alert('请先登录...');location.href='"+path+"back/backlogin.html'</script>");
			out.flush();
			out.close();
			return false;
		}else {
			return true;                //如果为flase则不再往后传
		}
	}
}

