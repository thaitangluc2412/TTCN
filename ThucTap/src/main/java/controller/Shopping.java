package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Book;
import bean.Category;
import bean.ReviewDto;
import service.BookServiceImpl;
import service.CategoryServiceImpl;
import service.ReviewServiceImpl;

/*
 * Servlet implementation class BookController
 */
@WebServlet("/Shopping")
public class Shopping extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int rows = 9;
	private int window = 5;

	/*
	 * * @see HttpServlet#HttpServlet()
	 */
	public Shopping() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		int currentPage = 1;
		String page = request.getParameter("page");
		String categoryID = request.getParameter("categoryID");
		String searchKey = request.getParameter("searchBook");
		if (page != null) {
			currentPage = Integer.valueOf(page);
		}
		BookServiceImpl bookService = new BookServiceImpl();
		CategoryServiceImpl categoryService = new CategoryServiceImpl();
		ReviewServiceImpl reviewService = new ReviewServiceImpl();
		
		List<ReviewDto> listReview = reviewService.getLatestReviews();
//        HashMap<Category, Integer> categoryMap = new HashMap<>();
		List<Category> listCategory = categoryService.getAll();
//        for(Category category : listCategory) {
//        	categoryMap.put(category, bookService.getBookByCategoryId(category.getCategoryID()).size());
//        }

		int trimStart = (currentPage - 1) * rows;

		List<Book> listBook = new ArrayList<>();
		List<Book> listBookCurrentPage = new ArrayList<>();
		if (categoryID != null && !categoryID.equals("")) {
			if (searchKey != null && !searchKey.equals("")) {
				listBook = bookService.getByTitleAndCategory(searchKey, Integer.parseInt(categoryID));
				listBookCurrentPage = bookService.getByTitleAndCategoryCurrentPage(trimStart, rows, searchKey,
						Integer.parseInt(categoryID));

			} else {
				listBook = bookService.getBookByCategoryId(Integer.parseInt(categoryID));
				listBookCurrentPage = bookService.getBookByCategoryIDCurrentPage(trimStart, rows,
						Integer.parseInt(categoryID));
			}
		} else {
			if (searchKey != null && !searchKey.equals("")) {
				listBook = bookService.getByTitle(searchKey);
				listBookCurrentPage = bookService.getByTitleCurrentPage(trimStart, rows, searchKey);

			} else {
				listBook = bookService.getAll();
				listBookCurrentPage = bookService.getBookCurrentPage(trimStart, rows);
			}
		}
		List<Book> bookBestSeller = bookService.get2BookSeller();
		//int totalPages = (int) (Math.ceil(listBook.size() / rows));
		int totalPages=listBook.size()/rows;
    	if(totalPages*rows<listBook.size()) {
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
        Cookie cookie = new Cookie("cart", "cart");
        response.addCookie(cookie);
		request.setAttribute("listBook", listBook);
		request.setAttribute("listBookCurrentPage", listBookCurrentPage);
		request.setAttribute("categoryID", categoryID);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPages", totalPages);
		request.setAttribute("maxLeft", maxLeft);
		request.setAttribute("maxRight", maxRight);
//        request.setAttribute("categoryMap", categoryMap);
		request.setAttribute("searchBook", searchKey);
		request.setAttribute("bookBestSeller", bookBestSeller);
		request.setAttribute("listCategory", listCategory);
		request.setAttribute("reviewByName", listReview);
		request.getRequestDispatcher("Shop.jsp").forward(request, response);
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
