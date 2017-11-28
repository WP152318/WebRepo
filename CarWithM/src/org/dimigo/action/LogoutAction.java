package org.dimigo.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements IAction {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 세션을 없애고 홈으로 간다.
		HttpSession session = request.getSession();
		session.invalidate();
		
		response.sendRedirect("jsp/home.jsp");
	}
}
