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
//	        UserServiceImpl userService = new UserServiceImpl();
//	        User profile= userService.getProfile(id);
	        
	        request.setAttribute("profile", user);
	       
	        request.getRequestDispatcher("MyAccount.jsp").forward(request, response);
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
