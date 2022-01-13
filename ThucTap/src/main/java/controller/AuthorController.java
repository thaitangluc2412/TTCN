// package controller;
//
// import bean.Book;
// import bean.BookUser;
// import bean.Category;
// import bean.Order;
// import bean.OrderDetail;
// import bean.Review;
// import bean.User;
// import service.BookServiceImpl;
// import service.CategoryServiceImpl;
// import service.OrderDetailServiceImpl;
// import service.OrderServiceImpl;
// import service.ReviewServiceImpl;
// import service.UserServiceImpl;
//
// import javax.servlet.ServletException;
// import javax.servlet.annotation.WebServlet;
// import javax.servlet.http.HttpServlet;
// import javax.servlet.http.HttpServletRequest;
// import javax.servlet.http.HttpServletResponse;
// import javax.servlet.http.HttpSession;
//
// import java.io.IOException;
// import java.util.Hashtable;
// import java.util.List;
//
// /*
//  * Servlet implementation class BookController
//  */
// @WebServlet("/AuthorController")
// public class AuthorController extends HttpServlet {
//     private static final long serialVersionUID = 1L;
//
//     /*     * @see HttpServlet#HttpServlet()
//      */
//     public AuthorController() {
//         super();
//         // TODO Auto-generated constructor stub
//     }
//
//     /**
//      * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//      */
//
//     protected void doGet(HttpServletRequest request,
//                          HttpServletResponse response) throws ServletException, IOException {
//         response.setContentType("text/html;charset=UTF-8");
//
// 		HttpSession session = request.getSession();
// 		User user=(User)session.getAttribute("user");
// 		if(user==null) {
// 			response.sendRedirect("404.jsp");
// 		}
// 		else if( !user.getRole().toString().equals("Author") ) {
// 			response.sendRedirect("404.jsp");
// 		}
// 		else {
// 	        String str =request.getParameter("Management");
// 	        if(str.equals("Profit")) {
// 	            BookServiceImpl bookService = new BookServiceImpl();
// 	            List<Book> listBook = bookService.getByAuthorId(user.getUserId());
// 	            request.setAttribute("listBook", listBook);
// 	        	request.getRequestDispatcher("AuthorProfit.jsp").forward(request, response);
// 	        }
// 	        else if(str.equals("Review")) {
//
// 	        }
// 		}
//     }
//
//     /**
//      * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//      */
//     protected void doPost(HttpServletRequest request,
//                           HttpServletResponse response) throws ServletException, IOException {
//         // TODO Auto-generated method stub
//         doGet(request, response);
//     }
//
// }
