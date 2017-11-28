package org.dimigo.action;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.service.ListService;
import org.dimigo.vo.ListVO;

public class ListAction implements IAction {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
		// Service 추가
		ListService service = new ListService();
		List<ListVO> list = service.list();
		
		for (ListVO item : list) {
			System.out.println(item);
		}
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("jsp/list.jsp");
		rd.forward(request, response);
	}
}