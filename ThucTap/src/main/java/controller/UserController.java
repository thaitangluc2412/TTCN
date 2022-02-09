package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UserServiceImpl;

import java.io.IOException;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
    	request.getRequestDispatcher("Register.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    	String email = request.getParameter("email");
        String password = request.getParameter("confirmpass");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        String accountNumber = request.getParameter("accountNumber");
 
        UserServiceImpl userService = new UserServiceImpl();
        if(userService.existUser(email) ) {
        	request.setAttribute("err", "err");       
        	request.setAttribute("email",email);
        	request.setAttribute("password",password); 
        	request.setAttribute("name",name); 
        	request.setAttribute("address",address); 
        	request.setAttribute("phoneNumber",phoneNumber); 
        	request.setAttribute("accountNumber",accountNumber);
        	request.getRequestDispatcher("Register.jsp").forward(request, response);
        }
        else {
        	userService.insertUser(email, password, name, address, phoneNumber, accountNumber, 2);
        	request.setAttribute("username",email);
        	request.setAttribute("registed","registed");
        	request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

}
