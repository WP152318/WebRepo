package org.dimigo.action;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.service.ListService;
import org.dimigo.util.CommonUtil;
import org.dimigo.vo.ListVO;

public class SearchListAction implements IAction {
	
	private void validate(String destination) throws Exception {
		if(CommonUtil.isEmpty(destination)) throw new Exception("목적지를 입력하세요.");
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		try {
			// 1. 입력값 추출
			request.setCharacterEncoding("utf-8");
			String destination = request.getParameter("dest");
			
			// 2. 입력값 검증
			validate(destination);
			
			ListVO list = new ListVO();
			list.setDestination(destination);
			
			// 3. Service 호출
			ListService service = new ListService();
			List<ListVO> result = service.searchList(destination);
			
			// 세션에 사용자 정보를 생성해서 담기
			HttpSession session = request.getSession();
			session.setAttribute("list", result);
				
			RequestDispatcher rd = request.getRequestDispatcher("jsp/searchList.jsp");
			rd.forward(request, response);
			
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("jsp/list.jsp");
			rd.forward(request, response);
		}
	}
}
