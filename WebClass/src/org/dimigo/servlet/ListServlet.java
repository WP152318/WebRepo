package org.dimigo.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.vo.UserVO;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/list")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. ArrayList 생성
		// 2. UserVO 객체 담기
		// 3. ArrayList를 set한 다음 list.jsp로 forward
		List<UserVO> list = new ArrayList<>();
		list.add(new UserVO("aaa@naver.com", "일론머스크", "왕부자"));
		list.add(new UserVO("bbb@naver.com", "시진핑", "사드싫어"));
		list.add(new UserVO("ccc@naver.com", "푸틴", "방사능홍차"));
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("jsp/list.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
