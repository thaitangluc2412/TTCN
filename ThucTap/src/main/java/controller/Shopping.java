package controller;

import bean.Book;
import bean.Category;
import service.BookServiceImpl;
import service.CategoryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/*
 * Servlet implementation class BookController
 */
@WebServlet("/Shopping")
public class Shopping extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /*     * @see HttpServlet#HttpServlet()
     */
    public Shopping() {
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
        CategoryServiceImpl categoryService = new CategoryServiceImpl();
        List<Book> listBook = bookService.getAll();
        List<Category> listCategory = categoryService.getAll();
        for (Category cate : listCategory) {
            System.out.println(cate);
        }
        request.setAttribute("listBook", listBook);
        request.setAttribute("listCategory", listCategory);
        request.getRequestDispatcher("Shop.jsp").forward(request, response);
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