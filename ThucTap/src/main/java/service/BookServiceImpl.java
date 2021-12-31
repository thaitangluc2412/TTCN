package service;

import java.util.List;

import bean.Book;
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
}
