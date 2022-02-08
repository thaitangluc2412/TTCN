package controller;

import bean.Book;
import bean.OrderDetail;
import bean.OrderDetail.Id;
import bean.OrderDetail.ReviewStatus;
import bean.Review;
import bean.User;
import service.BookServiceImpl;
import service.OrderDetailServiceImpl;
import service.ReviewServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;

/**
 * Servlet implementation class ReviewProduct
 */
@WebServlet("/ReviewProduct")
public class ReviewProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReviewProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BookServiceImpl bookService = new BookServiceImpl();
		OrderDetailServiceImpl orderDetailService = new OrderDetailServiceImpl();
		ReviewServiceImpl reviewService = new ReviewServiceImpl();
		
		int productId = Integer.parseInt(request.getParameter("productId"));
		int rating = Integer.parseInt(request.getParameter("rating"));
	    int orderId = Integer.parseInt(request.getParameter("orderId"));
//	    int orderDetailId = Integer.parseInt(request.getParameter("orderDetailId"));
	    String orderStatus = request.getParameter("orderStatus");
	    String reviewText = request.getParameter("reviewText");
	    
	    HttpSession session = request.getSession();
	    User user = (User) session.getAttribute("user");
	    
        Book book = bookService.getById(productId);

        Review review = new Review();
        review.setBook(book);
        review.setUser(user);
        review.setComment(reviewText);
        review.setRating(Double.valueOf(rating));
        review.setReviewDate(LocalDateTime.now());
        
        reviewService.save(review);
        
        bookService.updateBookRating(book, rating);
        
        OrderDetail orderDetail = orderDetailService.getById(new Id(orderId, book.getBookId()));
        orderDetailService.updateStatus(orderDetail, ReviewStatus.Reviewed);
        
        request.setAttribute("orderStatus", orderStatus);
        request.setAttribute("orderId", orderId);
        request.getRequestDispatcher("MyOrderDetail").forward(request, response);
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
