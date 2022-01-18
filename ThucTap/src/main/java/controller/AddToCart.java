package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Book;
import bean.OrderDetail;
import service.BookServiceImpl;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<OrderDetail> cartList = new ArrayList<>();
		int id = Integer.parseInt(request.getParameter("id"));
		
		BookServiceImpl bookService = new BookServiceImpl();
		
		Book book = bookService.getById(id);
		
		OrderDetail cart = new OrderDetail();
		cart.setBook(book);
		cart.setQuantity(1);
		
		HttpSession session = request.getSession();
		ArrayList<OrderDetail> cart_list = (ArrayList<OrderDetail>) session.getAttribute("cartList");
		
		if(cart_list == null) {
			cartList.add(cart);
			session.setAttribute("cartList", cartList);
		}
		else {
			cartList = cart_list;
			boolean exist = false;
			for(OrderDetail b : cart_list) {
				if(b.getBook().getBookId() == id) {
					exist = true;
					b.setQuantity(b.getQuantity()+1);
					break;
				}
			}
			if(!exist) {
				cartList.add(cart); 
			}
		}
		
		int subTotal = 0;
		
		for(OrderDetail b : cartList) {
		    subTotal += b.getBook().getPrice() * b.getQuantity();	
		}
		session.setAttribute("subTotal", subTotal);
		request.getRequestDispatcher("Cart.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
