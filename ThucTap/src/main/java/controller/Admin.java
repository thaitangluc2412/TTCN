package controller;

import bean.*;
import service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/*
 * Servlet implementation class BookController
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static OrderService orderService = new OrderServiceImpl();
	private static BookService bookService = new BookServiceImpl();
	private static CategoryService categoryService = new CategoryServiceImpl();
	private static ReviewServiceImpl reviewService = new ReviewServiceImpl();
	private int rows = 6;
	private int window = 5;

	/*
	 * * @see HttpServlet#HttpServlet()
	 */
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			response.sendRedirect("404.jsp");
		} else if (!user.getRole().toString().equals("Admin")) {
			response.sendRedirect("404.jsp");
		} else {
			String str = request.getParameter("Management");
			if (str.equals("Book")) {
				int currentPage = 1;
				String page = request.getParameter("page");
				if (page != null) {
					currentPage = Integer.valueOf(page);
				}

				System.out.println("currentpage : " + currentPage);

				int trimStart = (currentPage - 1) * rows;

				BookServiceImpl bookService = new BookServiceImpl();
				List<Book> listBook = new ArrayList<>();
				List<Book> listAllBook = new ArrayList<>();
				String searchBook = request.getParameter("searchBook");
				if (searchBook != null && !searchBook.equals("")) {
					listBook = bookService.getByTitleAndCurrentPage(trimStart, rows, searchBook);
					listAllBook = bookService.getByTitle(searchBook);
				} else {
					listBook = bookService.getBookCurrentPage(trimStart, rows);
					listAllBook = bookService.getAll();
				}

				// System.out.println("last : " + listAllBook.get(listAllBook.size() - 1));

//	        	int totalPages = (int) (Math.floor(listAllBook.size() / rows));
				int totalPages = listAllBook.size() / rows;
				if (totalPages * rows < listAllBook.size()) {
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

				// System.out.println("listbook : " + listBook);

				request.setAttribute("searchBook", searchBook);
				request.setAttribute("listBook", listBook);
				request.setAttribute("currentPage", currentPage);
				request.setAttribute("totalPages", totalPages);
				request.setAttribute("maxLeft", maxLeft);
				request.setAttribute("maxRight", maxRight);
				request.getRequestDispatcher("Book.jsp").forward(request, response);

			} else if (str.equals("Category")) {
				CategoryServiceImpl categoryService = new CategoryServiceImpl();
				List<Category> listCategory = categoryService.getAll();
				request.setAttribute("listCategory", listCategory);
				request.getRequestDispatcher("Category.jsp").forward(request, response);
			} else if (str.equals("Customer")) {
				UserServiceImpl userService = new UserServiceImpl();
				List<User> listCustomer = userService.getCustomer();
				request.setAttribute("listCustomer", listCustomer);
				request.getRequestDispatcher("Customer.jsp").forward(request, response);
			} else if (str.equals("Author")) {
				UserServiceImpl userService = new UserServiceImpl();
				List<User> listAuthor = userService.getAuthor();
				request.setAttribute("listAuthor", listAuthor);
				request.getRequestDispatcher("Author.jsp").forward(request, response);
			} else if (str.equals("Order")) {

				int currentPage = 1;
				String page = request.getParameter("page");
				if (page != null) {
					currentPage = Integer.valueOf(page);
				}

				System.out.println("currentpage : " + currentPage);

				int trimStart = (currentPage - 1) * rows;

				List<Order> listOrder = new ArrayList<>();
				List<Order> listAllOrder = new ArrayList<>();
				String searchName = request.getParameter("searchName");

				String status = request.getParameter("status");
				if ("Any".equals(status) || Objects.isNull(status)) {
					if (searchName != null && !searchName.equals("")) {
						listOrder = orderService.getByNameCurrentPage(trimStart, rows, searchName);
						listAllOrder = orderService.getByName(searchName);
					} else {
						listOrder = orderService.getOrderCurrentPage(trimStart, rows);
						listAllOrder = orderService.getAll();
					}
				} else {
					if (searchName != null && !searchName.equals("")) {
						listOrder = orderService.getByNameStatusCurrentPage(trimStart, rows, status, searchName);
						listAllOrder = orderService.getByNameStatus(status, searchName);
					} else {
						listOrder = orderService.getByStatusCurrentPage(trimStart, rows, status);
						listAllOrder = orderService.getByStatus(status);
					}
				}

				int totalPages = listAllOrder.size() / rows;
				if (totalPages * rows < listAllOrder.size()) {
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
				if (Objects.isNull(status)) {
					request.setAttribute("status", "Any");
				} else {
					request.setAttribute("status", status);
				}

				request.setAttribute("searchName", searchName);
				request.setAttribute("listOrder", listOrder);
				request.setAttribute("currentPage", currentPage);
				request.setAttribute("totalPages", totalPages);
				request.setAttribute("maxLeft", maxLeft);
				request.setAttribute("maxRight", maxRight);
				request.getRequestDispatcher("Order.jsp").forward(request, response);

			} else if (str.equals("Review")) {
				int currentPage = 1;
				String page = request.getParameter("page");
				if (page != null) {
					currentPage = Integer.valueOf(page);
				}

				System.out.println("currentpage : " + currentPage);

				int trimStart = (currentPage - 1) * rows;

				List<Review> listReview = new ArrayList<>();
				List<Review> listAllReview = new ArrayList<>();
				String searchBook = request.getParameter("searchBook");
				if (searchBook != null && !searchBook.equals("")) {
					listReview = reviewService.getByTitleCurrentPage(trimStart, rows, searchBook);
					listAllReview = reviewService.getReviewByBookTitle(searchBook);
				} else {
					listReview = reviewService.getReviewCurrentPage(trimStart, rows);
					listAllReview = reviewService.getAll();
				}

//	        	int totalPages = (int) (Math.floor(listAllBook.size() / rows));
				int totalPages = listAllReview.size() / rows;
				if (totalPages * rows < listAllReview.size()) {
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

				request.setAttribute("searchBook", searchBook);
				request.setAttribute("listReview", listReview);
				request.setAttribute("currentPage", currentPage);
				request.setAttribute("totalPages", totalPages);
				request.setAttribute("maxLeft", maxLeft);
				request.setAttribute("maxRight", maxRight);
				request.getRequestDispatcher("Review.jsp").forward(request, response);
							
			} else if (str.equals("Revenue")) {
				int currentPage = 1;
				String page = request.getParameter("page");
				if (page != null) {
					currentPage = Integer.valueOf(page);
				}

				System.out.println("currentpage : " + currentPage);

				int trimStart = (currentPage - 1) * rows;
				
				String start = request.getParameter("startDate");
				String end = request.getParameter("endDate");

				System.out.println(start);
				System.out.println(end);
				LocalDate startDate = null;
				LocalDate endDate = null;
				List<BookDto> listBookDto = new ArrayList<>();
				List<BookDto> listAllBookDto = new ArrayList<>();
				if (!(Objects.isNull(start) || Objects.isNull(end) || start.equals("") || end.equals(""))) {
					startDate = LocalDate.parse(start);
					endDate = LocalDate.parse(end);
					listBookDto = bookService.getBookWithProfitBetweenTimeCurrentPage(trimStart, rows, startDate, endDate);
					listAllBookDto = bookService.getBookWithProfitBetweenTime(startDate, endDate);
					System.out.println("Start date: " + startDate);
					System.out.println("End date " + endDate);
				} else {
					listBookDto = bookService.getBookWithProfitCurrentPage(trimStart, rows);
					listAllBookDto = bookService.getBookWithProfit();
				}
				
				Double revenue = 0.0;
				for (BookDto bookDto: listAllBookDto) {
					revenue += bookDto.getProfit();
				}
				
				int totalPages = listAllBookDto.size() / rows;
				
				
				if (totalPages * rows < listAllBookDto.size()) {
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

				for(BookDto b : listBookDto) {
					System.out.println(b);
				}
				
				
				request.setAttribute("startDate", startDate);
				request.setAttribute("endDate", endDate);
				request.setAttribute("listBookDto", listBookDto);
				request.setAttribute("revenue", revenue);
				request.setAttribute("currentPage", currentPage);
				request.setAttribute("totalPages", totalPages);
				request.setAttribute("maxLeft", maxLeft);
				request.setAttribute("maxRight", maxRight);
				
				request.getRequestDispatcher("RevenueAdmin.jsp").forward(request, response);
			}

		}
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
