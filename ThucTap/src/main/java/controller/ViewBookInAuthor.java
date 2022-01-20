package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Book;
import bean.User;
import service.BookServiceImpl;
import service.UserServiceImpl;

/**
 * Servlet implementation class ViewBookInAuthor
 */
@WebServlet("/ViewBookInAuthor")
public class ViewBookInAuthor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int rows = 6;
	private int window = 5;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewBookInAuthor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int currentPage = 1;
		String page = request.getParameter("page");
		String authorID = request.getParameter("authorId");
		String searchKey = request.getParameter("searchBook");
		if (page != null) {
			currentPage = Integer.valueOf(page);
		}
		BookServiceImpl bookService = new BookServiceImpl();
		UserServiceImpl userService = new UserServiceImpl();
		
		User author = userService.getProfile(Integer.parseInt(authorID));

		int trimStart = (currentPage - 1) * rows;
      
		List<Book> listBook = new ArrayList<>();
		List<Book> listBookCurrentPage = new ArrayList<>();
		if (authorID != null && !authorID.equals("")) {
			if (searchKey != null && !searchKey.equals("")) {
				listBook = bookService.getByAuthorIdAndTitle(Integer.parseInt(authorID), searchKey);
				listBookCurrentPage = bookService.getByAuthorIdAndTitleCurrentPage(trimStart, rows,
						Integer.parseInt(authorID), searchKey);

			} else {
				listBook = bookService.getByAuthorId(Integer.parseInt(authorID));
				listBookCurrentPage = bookService.getByAuthorIdCurrentPage(trimStart, rows,
						Integer.parseInt(authorID));
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
		request.setAttribute("authorId", authorID);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPages", totalPages);
		request.setAttribute("maxLeft", maxLeft);
		request.setAttribute("maxRight", maxRight);
		request.setAttribute("author", author);
		request.setAttribute("searchBook", searchKey);
		request.getRequestDispatcher("BookInAuthor.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
