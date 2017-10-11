package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/session")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 세션에서 사용자정보가 들어있지 않으면 (null 이면) login.jsp로 포워딩
		// 사용자정보가 들어있다면 sessionInfo.jsp로 포워딩
		// sessionInfo.jsp에서는 id, name, nickname을 출력
		if(request.getSession().getAttribute("user") == null) {
			response.sendRedirect("jsp/login.jsp");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("jsp/sessionInfo.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession();
//		if(session.getId() != null) {
//			RequestDispatcher rd = request.getRequestDispatcher("jsp/sessionInfo.jsp");
//			rd.forward(request, response);
//		} else {
//			RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
//			rd.forward(request, response);
//		}
	}

}
