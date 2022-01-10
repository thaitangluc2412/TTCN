package service;

import bean.Book;
import dao.BookDao;
import dao.HibernateBookDao;

import java.util.List;

public class BookServiceImpl implements BookService {
	private BookDao bookDao;

	public BookServiceImpl() {
		bookDao = new HibernateBookDao();
	}

	@Override
	public List<Book> getAll() {
		return bookDao.getAll();
	}

	@Override
	public List<Book> getNewReleaseBook() {
		return bookDao.getNewReleaseBook();
	}

	@Override
	public int getQuantity() {
		return bookDao.getQuantity();
	}

	@Override
	public List<Book> get2BookSeller() {
		return bookDao.getTwoBookSeller();
	}

	@Override
	public List<Book> getAll(String orderBy, boolean orderType) {
		return bookDao.getAll(orderBy, orderType);
	}

	@Override
	public List<Book> getByTitle(String title) {
		return bookDao.getByTitle(title);
	}

	@Override
	public List<Book> getBookByCategoryId(Integer categoryId) {
		return bookDao.getBookByCategoryId(categoryId);
	}

	@Override
	public List<Book> getBookCategoryOrderBy(Integer categoryId, String orderBy, boolean orderType) {
		return bookDao.getBookCategoryOrderBy(categoryId, orderBy, orderType);
	}

	@Override
	public List<Book> getBookCurrentPage(int trimStart, int rows) {
		return bookDao.getBookCurrentPage(trimStart, rows);
	}

	@Override
	public List<Book> getBookByCategoryIDCurrentPage(int trimStart, int rows, int categoryID) {
		return bookDao.getBookByCategoryIDCurrentPage(trimStart, rows, categoryID);
	}

	@Override
	public List<Book> getByTitleAndCategory(String title, int categoryID) {
		return bookDao.getByTitleAndCategory(title, categoryID);
	}

	@Override
	public List<Book> getByTitleCurrentPage(int trimStart, int rows, String title) {
		return bookDao.getByTitleCurrentPage(trimStart, rows, title);
	}

	@Override
	public List<Book> getByTitleAndCategoryCurrentPage(int trimStart, int rows, String title, int categoryID) {
		return bookDao.getByTitleAndCategoryCurrentPage(trimStart, rows, title, categoryID);
	}

	
	@Override
	public Book getById(int Id) {
		return bookDao.getById(Id);
	}
	
	@Override
	public List<Book> getByAuthorId(int Id) {
		return bookDao.getByAuthorId(Id);
	}



	@Override
	public Book getBookById(int id) {
		return bookDao.getBookById(id);
	}
}
