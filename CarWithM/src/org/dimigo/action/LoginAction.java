package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.service.UserService;
import org.dimigo.util.CommonUtil;
import org.dimigo.vo.UserVO;

public class LoginAction implements IAction {

	// 오류 메세지 출력
	private void validate(String id, String pwd) throws Exception {
		if(CommonUtil.isEmpty(id)) throw new Exception("아이디를 입력하세요.");
		if(CommonUtil.isEmpty(pwd)) throw new Exception("비밀번호를 입력하세요.");
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		try {
			// 1. 데이터베이스에서 정보를 받아온다.
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			System.out.printf("id : %s, pwd : %s \n", id, pwd);
			
			// 2. 확인한다.
			validate(id, pwd);
			
			UserVO user = new UserVO();
			user.setId(id);
			user.setPwd(pwd);
			
			// 3. Service 호출
			UserService service = new UserService();
			UserVO result = service.login(user);
			
			// 세션에 넣는다.
			HttpSession session = request.getSession();
			session.setAttribute("user", result);
				
			response.sendRedirect("jsp/home.jsp");
			
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
		}
	}
}
