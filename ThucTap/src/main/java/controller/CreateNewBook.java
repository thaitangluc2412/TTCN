package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Category;
import bean.User;
import service.CategoryService;
import service.CategoryServiceImpl;
import service.UserService;
import service.UserServiceImpl;

/**
 * Servlet implementation class CreateNewBook
 */
@WebServlet("/CreateNewBook")
public class CreateNewBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CategoryService categoryService = new CategoryServiceImpl();
    private UserService userService = new UserServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateNewBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Category> categories = categoryService.getAll();
		
		List<User> users = userService.getAll();
		List<User> authors = new ArrayList<>();
		for (User user: users) {
			if (user.getRole().toString().equals("Author")) {
				authors.add(user);
			}
		}
		
		request.setAttribute("categories", categories);
		request.setAttribute("authors", authors);
		request.getRequestDispatcher("CreateNewBook.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
