package service;

import java.util.List;

import bean.Book;
import bean.BookDto;
import dao.BookDao;
import dao.HibernateBookDao;

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
}
