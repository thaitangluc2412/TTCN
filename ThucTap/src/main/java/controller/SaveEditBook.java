package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Book;
import bean.User;
import service.BookService;
import service.BookServiceImpl;
import service.BookUserService;
import service.BookUserServiceImpl;
import service.UserService;
import service.UserServiceImpl;

/**
 * Servlet implementation class SaveEditBook
 */
@WebServlet("/SaveEditBook")
public class SaveEditBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static BookService bookService = new BookServiceImpl();
	private static BookUserService bookUserService = new BookUserServiceImpl();
	private static UserService userService = new UserServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveEditBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bookId = Integer.parseInt(request.getParameter("bookId"));
		int categoryId = Integer.parseInt(request.getParameter("categoryId"));
		String title = request.getParameter("title");
		String authors[] = request.getParameterValues("author");
		Integer day = Integer.parseInt(request.getParameter("day"));
		Integer month = Integer.parseInt(request.getParameter("month"));
		Integer year = Integer.parseInt(request.getParameter("year"));
		String image = request.getParameter("image");
		Integer quantity = Integer.parseInt(request.getParameter("quantity"));
		Double price = Double.parseDouble(request.getParameter("price"));
		String description = request.getParameter("description");
		LocalDate publishDate = LocalDate.of(year, month, day);
		
		bookService.updateBook(categoryId, title, description, image, price, publishDate, quantity, bookId);
		System.out.println(authors.length);

		List<Book> books = bookService.getAll();
		Book lastBook = books.get(books.size() - 1);
		
		List<User> users = userService.getAll();
		bookUserService.deleteBookUser(bookId);
		for (User user : users) {
			for (String author : authors) {
				if (user.getName().equals(author) && user.getRole().toString().equals("Author")) {
					bookUserService.insertBookUser(bookId, user.getUserId());		
				}
			}
		}
		System.out.println("bookId: " + bookId);
		System.out.println("categoryId: " + categoryId);
		System.out.println("title: " + title);
		System.out.println("publishDate: " + publishDate);
		System.out.println("image: " + image);
		System.out.println("quantity: " + quantity);
		System.out.println("price: " + price);
		System.out.println("description: " + description);

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
