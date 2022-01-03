package service;

import bean.Book;
import dao.BookDao;
import dao.HibernateBookDao;

import java.util.List;

public class BookServiceImpl implements BookService{
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
		return bookDao.get2BookSeller();
	}

	@Override
	public List<Book> getAll(String orderBy, String orderType) {
		return bookDao.getAll(orderBy, orderType);
	}

	@Override
	public List<Book> getByTitle(String title) {
		return bookDao.getByTitle(title);
	}
}
