package controller;

import bean.Book;
import bean.BookUser;
import bean.Category;
import bean.Order;
import bean.Review;
import bean.User;
import service.BookServiceImpl;
import service.CategoryServiceImpl;
import service.OrderServiceImpl;
import service.ReviewServiceImpl;
import service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/*
 * Servlet implementation class BookController
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private int rows = 6;
	private int window = 5;

    /*     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        List<BookUser> listBookUser = bookUserService.getAll();
//        for (Book b : listBook) {
//            System.out.println(b);
//        }								<c:when test="${sessionScope.user.role == 'Admin'}">
//        String temp = session.getAttribute("temp");
		HttpSession session = request.getSession();
		User user=(User)session.getAttribute("user");
		if(user==null) {
			response.sendRedirect("404.jsp");
		}
		else if( !user.getRole().toString().equals("Admin") ) {
			response.sendRedirect("404.jsp");
		}
		else {	
	        String str =request.getParameter("Management");
	        if(str.equals("Book")) {
	        	int currentPage = 1;
	    		String page = request.getParameter("page");
	    		if (page != null) {
	    			currentPage = Integer.valueOf(page);
	    		}
	    		
	    		System.out.println("currentpage : "+currentPage);
	    		
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
	        	
	        	System.out.println("last : "+listAllBook.get(listAllBook.size()-1));
	        	
//	        	int totalPages = (int) (Math.floor(listAllBook.size() / rows));
	        	int totalPages=listAllBook.size()/rows;
	        	if(totalPages*rows<listAllBook.size()) {
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
	        	
	    		System.out.println("listbook : "+listBook);
	    		
	        	request.setAttribute("searchBook", searchBook);
	            request.setAttribute("listBook", listBook);
	            request.setAttribute("currentPage", currentPage);
	    		request.setAttribute("totalPages", totalPages);
	    		request.setAttribute("maxLeft", maxLeft);
	    		request.setAttribute("maxRight", maxRight);
	        	request.getRequestDispatcher("Book.jsp").forward(request, response);
	        	
	        }else if(str.equals("Category")) {
	            CategoryServiceImpl categoryService = new CategoryServiceImpl();
	            List<Category> listCategory = categoryService.getAll();
	            request.setAttribute("listCategory", listCategory);
	        	request.getRequestDispatcher("Category.jsp").forward(request, response);
	        }else if(str.equals("Customer")) {
	            UserServiceImpl userService = new UserServiceImpl();
	            List<User> listCustomer = userService.getCustomer();
	            request.setAttribute("listCustomer", listCustomer);
	        	request.getRequestDispatcher("Customer.jsp").forward(request, response);
	        }else if(str.equals("Author")) {
	            UserServiceImpl userService = new UserServiceImpl();
	            List<User> listAuthor = userService.getAuthor();
	            request.setAttribute("listAuthor", listAuthor);
	        	request.getRequestDispatcher("Author.jsp").forward(request, response);
	        }
	        else if(str.equals("Order")) {
	            OrderServiceImpl orderService = new OrderServiceImpl();
	            List<Order> listOrder = orderService.getAll();
	            request.setAttribute("listOrder", listOrder);
	        	request.getRequestDispatcher("Order.jsp").forward(request, response);
	        }
	        else if(str.equals("Review")) {
	            ReviewServiceImpl reviewService = new ReviewServiceImpl();
	            List<Review> listReview = reviewService.getAll();
	            request.setAttribute("listReview", listReview);
	        	request.getRequestDispatcher("Review.jsp").forward(request, response);
	        }
		}
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
    
}
