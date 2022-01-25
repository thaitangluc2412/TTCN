package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Order;
import service.BookService;
import service.BookServiceImpl;
import service.CategoryService;
import service.CategoryServiceImpl;
import service.OrderService;
import service.OrderServiceImpl;
import service.ReviewServiceImpl;

/**
 * Servlet implementation class HomeShipper
 */
@WebServlet("/HomeShipper")
public class HomeShipper extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static OrderService orderService = new OrderServiceImpl();
	private static BookService bookService = new BookServiceImpl();
	private static CategoryService categoryService = new CategoryServiceImpl();
	private static ReviewServiceImpl reviewService = new ReviewServiceImpl();
	private int rows = 6;
	private int window = 5;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeShipper() {
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
		request.getRequestDispatcher("HomeShipper.jsp").forward(request, response);
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
