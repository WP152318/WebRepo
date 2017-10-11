package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/signup")
public class SignUpFormSubmitServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpFormSubmitServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
      rd.forward(request, response);
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      String id = request.getParameter("id");
      String pwd = request.getParameter("pwd");
      String name = request.getParameter("name");
      String nickname = request.getParameter("nickname");
      System.out.printf("email : %s, name: %s, nickname: %s\n", id, name, nickname);
      
 
      boolean result = false;
      
      if(result) {
         
         RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
         rd.forward(request, response);
         
      }
      else {
         request.setAttribute("msg", "error");
         request.setAttribute("tmpID", id);
         request.setAttribute("tmpPW", pwd);
         request.setAttribute("tmpNm", name);
         request.setAttribute("tmpNN", nickname);
      
         RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
         rd.forward(request, response);
      }
   }

}