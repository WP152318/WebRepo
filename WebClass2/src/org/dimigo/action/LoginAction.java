package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.service.UserService;
import org.dimigo.util.CommonUtil;
import org.dimigo.vo.UserVO;

public class LoginAction implements IAction {

	// �Է°� ����
	private void validate(String id, String pwd) throws Exception {
		if(CommonUtil.isEmpty(id)) throw new Exception("���̵� �Է��ϼ���.");
		if(CommonUtil.isEmpty(pwd)) throw new Exception("��й�ȣ�� �Է��ϼ���.");
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		try {
			// 1. �Է°� ����
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			System.out.printf("id : %s, pwd : %s \n", id, pwd);
			
			// 2. �Է°� ����
			validate(id, pwd);
			
			UserVO user = new UserVO();
			user.setId(id);
			user.setPwd(pwd);
			
			// 3. Service ȣ��
			UserService service = new UserService();
			UserVO result = service.login(user);
			
			// ���ǿ� ����� ������ �����ؼ� ���
			HttpSession session = request.getSession();
			session.setAttribute("user", result);
				
			RequestDispatcher rd = request.getRequestDispatcher("jsp/home.jsp");
			rd.forward(request, response);
			
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
		}
	}
}
