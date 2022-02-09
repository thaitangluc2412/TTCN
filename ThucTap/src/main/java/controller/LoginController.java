package controller;

import bean.User;
import bean.User.Role;
import service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
//        response.getWriter().append("Served at: ").append(request.getContextPath());
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserServiceImpl userService = new UserServiceImpl();
        User user = userService.getUser(username, password);
        if (user == null) {
        	request.setAttribute("err", "err");       
        	request.setAttribute("username",username);
        	request.getRequestDispatcher("Login.jsp").forward(request, response);
        } 
        else if(user.getRole() == Role.Shipper) {
        	HttpSession session = request.getSession();
        	session.setAttribute("user", user);
            request.getRequestDispatcher("HomeShipper").forward(request, response);
        }
        else if(user.getRole() == Role.Author) {
        	HttpSession session = request.getSession();
        	session.setAttribute("user", user);
            request.getRequestDispatcher("AuthorController?Management=Profit").forward(request, response);
        }
        else {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            request.getRequestDispatcher("Home").forward(request, response);
        }
    }
}
