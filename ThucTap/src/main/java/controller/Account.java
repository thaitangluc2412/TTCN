package controller;

import bean.User;
import service.BookServiceImpl;
import service.ReviewServiceImpl;
import service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Account")
public class Account extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Account() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
		User user=(User)session.getAttribute("user");
		if(user==null) {
			response.sendRedirect("404.jsp");
		}
		else {	
//	        String id =request.getParameter("id");
	        UserServiceImpl userService = new UserServiceImpl();
	        User profile= userService.getProfile( user.getUserId() );
	        
	        request.setAttribute("profile", profile);
	       
	        request.getRequestDispatcher("MyAccount.jsp").forward(request, response);
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    	String pw = request.getParameter("updatePw");
    	System.out.print(pw);
    	UserServiceImpl userService = new UserServiceImpl();
    	HttpSession session = request.getSession();
		User user=(User)session.getAttribute("user");
    	userService.updatePassword(user.getUserId(), pw);
//    	User userNew =userService.getProfile(user.getUserId());
//    	session.setAttribute("user", userNew);
//    	session.se
    	doGet(request, response);
    }

}
