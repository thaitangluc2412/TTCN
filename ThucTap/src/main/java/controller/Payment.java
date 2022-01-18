package controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Book;
import bean.Order;
import bean.OrderDetail;
import bean.User;
import bean.Order.Status;
import bean.OrderDetail.Id;
import service.BookService;
import service.BookServiceImpl;
import service.OrderDetailService;
import service.OrderDetailServiceImpl;
import service.OrderService;
import service.OrderServiceImpl;
import service.UserService;
import service.UserServiceImpl;

/**
 * Servlet implementation class Payment
 */
@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserService userService = new UserServiceImpl();
    private static BookService bookService = new BookServiceImpl();
    private static OrderService orderService = new OrderServiceImpl();
    private static OrderDetailService orderDetailService = new OrderDetailServiceImpl();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Payment() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		List<OrderDetail> cartList = (ArrayList<OrderDetail>) session.getAttribute("cartList");
		
		int totalPrice = (Integer) session.getAttribute("subTotal");
		String recipientName = request.getParameter("recipientName");
		String recipientPhone = request.getParameter("recipientPhone");
		String recipientAddress = request.getParameter("recipientAddress");

		Order order = new Order();
		order.setUser(user);
		order.setOrderDate(LocalDateTime.now());
		order.setTotalPrice(Double.valueOf(totalPrice));
		order.setStatus(Status.Processing);
		order.setShippingAddress(recipientAddress);
		order.setRecipientName(recipientName);
		order.setRecipientPhone(recipientPhone);
		orderService.save(order);

		for(OrderDetail o : cartList) {
			System.out.println(o);
			Id id = new Id(order.getOrderId(), o.getBook().getBookId());
			o.setId(id);
			o.setOrder(order);
			orderDetailService.save(o);
		}
		
		response.sendRedirect("ThankYou.jsp");
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
