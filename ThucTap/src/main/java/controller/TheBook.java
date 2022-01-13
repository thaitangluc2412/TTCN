// package controller;
//
// import java.io.IOException;
// import java.util.List;
//
// import javax.servlet.ServletException;
// import javax.servlet.annotation.WebServlet;
// import javax.servlet.http.HttpServlet;
// import javax.servlet.http.HttpServletRequest;
// import javax.servlet.http.HttpServletResponse;
// import javax.servlet.http.HttpSession;
//
// import bean.Book;
// import bean.Category;
// import bean.Order;
// import bean.Review;
// import bean.User;
// import service.BookServiceImpl;
// import service.CategoryServiceImpl;
// import service.OrderServiceImpl;
// import service.ReviewServiceImpl;
// import service.UserServiceImpl;
//
// /*
//  * Servlet implementation class BookController
//  */
// @WebServlet("/TheBook")
// public class TheBook extends HttpServlet {
//     private static final long serialVersionUID = 1L;
//
//     /*     * @see HttpServlet#HttpServlet()
//      */
//     public TheBook() {
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
//         String id =request.getParameter("Book");
//         BookServiceImpl bookService = new BookServiceImpl();
//         Book book = bookService.getById(Integer.parseInt(id));
//         List<Book> listBook = bookService.getBookByCategoryId(book.getCategoryId().getCategoryID());
//         request.setAttribute("book", book);
//         request.setAttribute("listBook", listBook);
//     	request.getRequestDispatcher("SingleProduct.jsp").forward(request, response);
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
