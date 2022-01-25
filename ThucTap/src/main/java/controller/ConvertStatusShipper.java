package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.OrderService;
import service.OrderServiceImpl;

/**
 * Servlet implementation class ConvertStatusShipper
 */
@WebServlet("/ConvertStatusShipper")
public class ConvertStatusShipper extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static OrderService orderService = new OrderServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConvertStatusShipper() {
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
		int orderId = Integer.parseInt(request.getParameter("orderId"));
		String currentPage = request.getParameter("page");
		orderService.updateStatus(orderId, "Delivered");
		String customerId = request.getParameter("customerId");
		request.setAttribute("currentPage", currentPage);
		request.getRequestDispatcher("HomeShipper?&page=" + currentPage).forward(request, response);
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
