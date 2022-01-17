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
import bean.BookUser;
import bean.Category;
import bean.User;
import service.BookService;
import service.BookServiceImpl;
import service.CategoryService;
import service.CategoryServiceImpl;
import service.UserService;
import service.UserServiceImpl;

/**
 * Servlet implementation class Edit
 */
@WebServlet("/EditBook")
public class EditBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final BookService bookService = new BookServiceImpl();
    private CategoryService categoryService = new CategoryServiceImpl();
    private UserService userService = new UserServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer bookId = Integer.parseInt(request.getParameter("bookId"));
		int currentPage = 1;
		String page = request.getParameter("page");
		if (page != null) {
			currentPage = Integer.valueOf(page);
		}
		request.setAttribute("page", currentPage);
		request.setAttribute("bookId", bookId);
		List<Category> categories = categoryService.getAll();
		
		List<User> users = userService.getAll();
		List<User> authors = new ArrayList<>();
		for (User user: users) {
			if (user.getRole().toString().equals("Author")) {
				authors.add(user);
			}
		}
		
		List<User> authorsPre = new ArrayList<>();
		List<BookUser> bookUsers = bookService.getById(bookId).getBookUser();
    	for (BookUser bookUser: bookUsers) {
    		authorsPre.add(bookUser.getUser());
    	}
    	for (User user: authorsPre) {
    		authors.remove(user);
    	}
   	
		request.setAttribute("authorsPre", authorsPre);
		request.setAttribute("categories", categories);
		request.setAttribute("authors", authors);
		//System.out.println("bookId" + id);
		Book book = bookService.getById(bookId);
		Integer day = book.getPublishDate().getDayOfMonth();
		Integer month = book.getPublishDate().getMonthValue();
		Integer year = book.getPublishDate().getYear();
		request.setAttribute("categoryPre", book.getCategoryId());
		request.setAttribute("title", book.getTitle());

		request.setAttribute("day", day);
		request.setAttribute("month", month);
		request.setAttribute("year", year);
		request.setAttribute("image", book.getImage());
		request.setAttribute("image", book.getImage());
		request.setAttribute("quantity", book.getQuantity());
		request.setAttribute("price", book.getPrice());
		request.setAttribute("description", book.getDescription());
		
		request.getRequestDispatcher("EditBook.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
