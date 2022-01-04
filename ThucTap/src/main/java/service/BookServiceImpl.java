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
}
