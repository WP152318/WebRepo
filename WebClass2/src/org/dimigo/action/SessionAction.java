package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SessionAction implements IAction {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("user") == null) {
			response.sendRedirect("jsp/login.jsp");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("jsp/sessionInfo.jsp");
			rd.forward(request, response);
		}
	}
}
