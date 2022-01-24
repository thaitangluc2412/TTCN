package controller;

import bean.Book;
import bean.ReviewDto;
import service.BookServiceImpl;
import service.ReviewServiceImpl;
import service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        BookServiceImpl bookService = new BookServiceImpl();
        UserServiceImpl userService = new UserServiceImpl();
        ReviewServiceImpl reviewService = new ReviewServiceImpl();
        List<Book> bookNewRelease = bookService.getNewReleaseBook();
        List<Book> listBook = bookService.getAll();
        List<ReviewDto> listReview = reviewService.getLatestReviews();
        int quantityBook = bookService.getQuantity();
        int quantityUser = userService.getQuantityUser();
        int quantityAuthor = userService.getQuantityAuthor();
//        for (Book book : bookNewRelease) {
//            System.out.println(book);
//        }
        request.setAttribute("bookNewRelease", bookNewRelease);
        request.setAttribute("listBook", listBook);
        request.setAttribute("quantityBook", quantityBook);
        request.setAttribute("quantityUser", quantityUser);
        request.setAttribute("quantityAuthor", quantityAuthor);
        request.setAttribute("reviewByName", listReview);
        //		request.setAttribute("reviewByName", reviewByName);
        request.getRequestDispatcher("Index.jsp").forward(request, response);
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
