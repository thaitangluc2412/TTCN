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
import service.BookService;
import service.BookServiceImpl;

/**
 * Servlet implementation class ManageBook
 */
@WebServlet("/ManageBook")
public class ManageBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bookTitle = request.getParameter("searchBook");
		System.out.println(bookTitle);
		BookService bookService = new BookServiceImpl();
		List<Book> listBook = new ArrayList<Book>();
		if (bookTitle != null && !bookTitle.equals("")) {
			listBook = bookService.getByTitle(bookTitle);
		} else {
			listBook = bookService.getAll();
		}
		request.setAttribute("listBook", listBook);
		request.getRequestDispatcher("Admin?Management=Book").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
