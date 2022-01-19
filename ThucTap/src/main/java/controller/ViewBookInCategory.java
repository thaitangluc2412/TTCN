package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Book;
import bean.Category;
import service.BookServiceImpl;
import service.CategoryServiceImpl;

/**
 * Servlet implementation class ViewBookInCategory
 */
@WebServlet("/ViewBookInCategory")
public class ViewBookInCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int rows = 6;
	private int window = 5;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewBookInCategory() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int currentPage = 1;
		String page = request.getParameter("page");
		String categoryID = request.getParameter("categoryId");
		String searchKey = request.getParameter("searchBook");
		if (page != null) {
			currentPage = Integer.valueOf(page);
		}
		BookServiceImpl bookService = new BookServiceImpl();
		CategoryServiceImpl categoryService = new CategoryServiceImpl();

		int trimStart = (currentPage - 1) * rows;
      
		Category category = categoryService.getById(Integer.parseInt(categoryID));
		List<Book> listBook = new ArrayList<>();
		List<Book> listBookCurrentPage = new ArrayList<>();
		if (categoryID != null && !categoryID.equals("")) {
			if (searchKey != null && !searchKey.equals("")) {
				listBook = bookService.getByTitleAndCategory(searchKey, Integer.parseInt(categoryID));
				listBookCurrentPage = bookService.getByTitleAndCategoryCurrentPage(trimStart, rows, searchKey,
						Integer.parseInt(categoryID));

			} else {
				listBook = bookService.getBookByCategoryId(Integer.parseInt(categoryID));
				listBookCurrentPage = bookService.getBookByCategoryIDCurrentPage(trimStart, rows,
						Integer.parseInt(categoryID));
			}
		} else {
			if (searchKey != null && !searchKey.equals("")) {
				listBook = bookService.getByTitle(searchKey);
				listBookCurrentPage = bookService.getByTitleCurrentPage(trimStart, rows, searchKey);

			} else {
				listBook = bookService.getAll();
				listBookCurrentPage = bookService.getBookCurrentPage(trimStart, rows);
			}
		}
		int totalPages = listBook.size() / rows;
		if (totalPages * rows < listBook.size()) {
			++totalPages;
		}
		int maxLeft = (int) (currentPage - Math.floor(window / 2));
		int maxRight = (int) (currentPage + Math.floor(window / 2));

		if (maxLeft < 1) {
			maxLeft = 1;
			maxRight = window;
		}

		if (maxRight > totalPages) {
			maxLeft = totalPages - (window - 1);

			if (maxLeft < 1) {
				maxLeft = 1;
			}
			maxRight = totalPages;
		}
		request.setAttribute("listBook", listBook);
		request.setAttribute("listBookCurrentPage", listBookCurrentPage);
		request.setAttribute("categoryId", categoryID);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPages", totalPages);
		request.setAttribute("maxLeft", maxLeft);
		request.setAttribute("maxRight", maxRight);
        request.setAttribute("category", category);
		request.setAttribute("searchBook", searchKey);
		request.getRequestDispatcher("BookInCategory.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
