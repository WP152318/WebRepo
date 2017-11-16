package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.service.UserService;
import org.dimigo.util.CommonUtil;
import org.dimigo.vo.UserVO;

public class SignUpAction implements IAction {
	
	// �Է°� ����
	private void validate(UserVO vo) throws Exception{
		if(CommonUtil.isEmpty(vo.getId())) throw new Exception("���̵� �Է��ϼ���");
		if(CommonUtil.isEmpty(vo.getPwd())) throw new Exception("�н����带 �Է��ϼ���");
		if(CommonUtil.isEmpty(vo.getName())) throw new Exception("�̸��� �Է��ϼ���");
		if(CommonUtil.isEmpty(vo.getNickname())) throw new Exception("�г����� �Է��ϼ���");
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		try {
		// 1. �Է°� ����
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String nickname = request.getParameter("nickname");
			System.out.printf("id : %s, pwd : %s, name : %s, nickname : %s \n", id, pwd, name, nickname);
			
			// 2. �Է°� ����
			UserVO vo = new UserVO();
			vo.setId(id);
			vo.setPwd(pwd);
			vo.setName(name);
			vo.setNickname(nickname);
			
			validate(vo);
			
			// Service ȣ��
			UserService service = new UserService();
			service.signup(vo);
			
			RequestDispatcher rd =
					request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
		
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
			rd.forward(request, response);
		}
	}
}
