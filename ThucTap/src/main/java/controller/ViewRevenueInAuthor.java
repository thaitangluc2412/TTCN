package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BookDto;
import bean.User;
import service.BookServiceImpl;
import service.UserServiceImpl;

/**
 * Servlet implementation class ViewRevenueInAuthor
 */
@WebServlet("/ViewRevenueInAuthor")
public class ViewRevenueInAuthor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int rows = 6;
	private int window = 5;
	private BookServiceImpl bookService = new BookServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewRevenueInAuthor() {
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
		String authorId = request.getParameter("authorId");

		UserServiceImpl userService = new UserServiceImpl();

		User author = userService.getProfile(Integer.parseInt(authorId));

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
			listBookDto = bookService.getBookWithProfitByAuthorIdBetweenTimeCurrentPage(trimStart, rows, startDate,
					endDate, Integer.parseInt(authorId));
			listAllBookDto = bookService.getBookWithProfitByAuthorIdBetweenTime(startDate, endDate,
					Integer.parseInt(authorId));
			System.out.println("Start date: " + startDate);
			System.out.println("End date " + endDate);
		} else {
			listBookDto = bookService.getBookWithProfitByAuthorIdCurrentPage(trimStart, rows,
					Integer.parseInt(authorId));
			listAllBookDto = bookService.getBookWithProfitByAuthorId(Integer.parseInt(authorId));
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

		for (BookDto b : listBookDto) {
			System.out.println(b);
		}
		
		request.setAttribute("revenue", revenue);
		request.setAttribute("startDate", startDate);
		request.setAttribute("endDate", endDate);
		request.setAttribute("authorId", authorId);
		request.setAttribute("author", author);
		request.setAttribute("listBookDto", listBookDto);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPages", totalPages);
		request.setAttribute("maxLeft", maxLeft);
		request.setAttribute("maxRight", maxRight);

		request.getRequestDispatcher("RevenueInAuthor.jsp").forward(request, response);
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
