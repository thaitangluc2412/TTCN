package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Order;
import service.OrderServiceImpl;

/**
 * Servlet implementation class MyOrderDetail
 */
@WebServlet("/MyOrderDetail")
public class MyOrderDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyOrderDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		OrderServiceImpl orderService = new OrderServiceImpl();
		
		int orderId = Integer.parseInt(request.getParameter("orderId"));
		String orderStatus = request.getParameter("orderStatus");
		
		Order order = orderService.getOrderByOrderId(orderId);
		
		request.setAttribute("order", order);
		request.setAttribute("orderId", orderId);
		request.setAttribute("orderStatus", orderStatus);
		request.setAttribute("listOrderDetail", order.getOrderDetails());
		request.getRequestDispatcher("CustomerOrderDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
