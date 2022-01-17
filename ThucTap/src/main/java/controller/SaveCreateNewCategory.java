package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CategoryService;
import service.CategoryServiceImpl;

/**
 * Servlet implementation class SaveCreateNewCategory
 */
@WebServlet("/SaveCreateNewCategory")
public class SaveCreateNewCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final CategoryService categoryService = new CategoryServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveCreateNewCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String categoryName = request.getParameter("categoryName");
		categoryService.insertCategory(categoryName);
		request.getRequestDispatcher("Admin?Management=Category").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
