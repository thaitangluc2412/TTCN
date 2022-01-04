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
    private int currentPage = 1;
    private int rows = 5;

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
        int trimStart = (currentPage - 1) * rows;
        int trimEnd = trimStart + rows;
        BookServiceImpl bookService = new BookServiceImpl();
        CategoryServiceImpl categoryService = new CategoryServiceImpl();
        List<Book> listBook = bookService.getAll();
        // List<Book> listBook = bookService.getBookCurrentPage(trimStart, trimEnd);
        // int totalPages = Math.ceil(bookService.getTotalBook()/rows);
        List<Category> listCategory = categoryService.getAll();
        
        for (Category cate : listCategory) {
            System.out.println(cate);
        }
        request.setAttribute("listBook", listBook);
        // request.setAttribute("totalPages", totalPages);
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
