package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.service.ListService;
import org.dimigo.util.CommonUtil;
import org.dimigo.vo.ListVO;

public class RegistrationAction implements IAction {
	
	// �Է°� ����
	private void validate(ListVO vo) throws Exception{
		if(CommonUtil.isEmpty(vo.getTitle())) throw new Exception("제목을 입력하세요.");
		if(CommonUtil.isEmpty(vo.getText())) throw new Exception("내용을 입력하세요.");
		if(CommonUtil.isEmpty(vo.getDate())) throw new Exception("날짜를 입력하세요.");
		if(CommonUtil.isEmpty(vo.getDestination())) throw new Exception("목적지를 입력하세요.");
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		try {
		// 1. 데이터베이스 내용을 받아온다.
			request.setCharacterEncoding("utf-8");
			String title = request.getParameter("title");
			String text = request.getParameter("text");
			String date = request.getParameter("date");
			String destination = request.getParameter("destination");
			System.out.printf("title : %s, text : %s, date : %s, destination : %s \n", title, text, date, destination);
			
			// 2. 데이터베이스의 내용을 저장
			ListVO vo = new ListVO(title, text, date, destination);
			vo.setTitle(title);
			vo.setText(text);
			vo.setDate(date);
			vo.setDestination(destination);
			
			validate(vo);
			
			// Service 호출
			ListService service = new ListService();
			service.registration(vo);
			
			RequestDispatcher rd =
					request.getRequestDispatcher("jsp/list.jsp");
			rd.forward(request, response);
		
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("jsp/registration.jsp");
			rd.forward(request, response);
		}
	}
}
