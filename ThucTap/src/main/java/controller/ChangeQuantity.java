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

import bean.OrderDetail;

/**
 * Servlet implementation class ChangeQuantity
 */
@WebServlet("/ChangeQuantity")
public class ChangeQuantity extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChangeQuantity() {
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
		String action = request.getParameter("action");
		int id = Integer.parseInt(request.getParameter("id"));

		HttpSession session = request.getSession();
		List<OrderDetail> cartList = (ArrayList<OrderDetail>) session.getAttribute("cartList");
		for (OrderDetail b : cartList) {
			if (b.getBook().getBookId() == id) {
				if (action.equals("dec") && b.getQuantity() > 1) {
					b.setQuantity(b.getQuantity() - 1);
				} else if(action.equals("inc")){
					b.setQuantity(b.getQuantity() + 1);
				}
				break;
			}
		}
		int subTotal = 0;

		for (OrderDetail b : cartList) {
			subTotal += b.getBook().getPrice() * b.getQuantity();
		}
		session.setAttribute("subTotal", subTotal);
		
		request.getRequestDispatcher("Cart.jsp").forward(request, response);

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
