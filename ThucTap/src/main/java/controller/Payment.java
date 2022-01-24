package controller;

import bean.Order;
import bean.Order.Status;
import bean.OrderDetail;
import bean.OrderDetail.Id;
import bean.OrderDetail.ReviewStatus;
import bean.User;
import service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

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
		BookServiceImpl bookService = new BookServiceImpl();
		String[] bookNQuantity = request.getParameterValues("bookNQuantity");

		List<OrderDetail> listBook = new ArrayList<>();
		
		double totalPrice = 0;
		
		for(String book : bookNQuantity) {
			OrderDetail order = new OrderDetail();
			order.setBook(bookService.getById(Integer.parseInt(book.split("/")[0])));
			order.setQuantity(Integer.parseInt(book.split("/")[1]));
			totalPrice += bookService.getById(Integer.parseInt(book.split("/")[0])).getPrice()*Integer.parseInt(book.split("/")[1]);
			listBook.add(order);
		}
		
		
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
//		
//		
//		int totalPrice = (Integer) session.getAttribute("subTotal");
		String recipientName = request.getParameter("recipientName");
		String recipientPhone = request.getParameter("recipientPhone");
		String recipientAddress = request.getParameter("recipientAddress");
//
		Order order = new Order();
		order.setUser(user);
		order.setOrderDate(LocalDateTime.now());
		order.setTotalPrice(totalPrice);
		order.setStatus(Status.Processing);
		order.setShippingAddress(recipientAddress);
		order.setRecipientName(recipientName);
		order.setRecipientPhone(recipientPhone);
		orderService.save(order);
//
		for(OrderDetail o : listBook) {
			Id id = new Id(order.getOrderId(), o.getBook().getBookId());
			o.setId(id);
			o.setOrder(order);
			o.setReviewStatus(ReviewStatus.NotReview);
			orderDetailService.save(o);
			System.out.println(o);
			bookService.decreaseBook(o.getBook(), o.getQuantity());
		}
//		
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
