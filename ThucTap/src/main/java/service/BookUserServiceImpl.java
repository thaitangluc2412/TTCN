package service;

import dao.BookDao;
import dao.BookUserDao;
import dao.HibernateBookDao;
import dao.HibernateBookUser;

public class BookUserServiceImpl implements BookUserService{
	private BookUserDao bookUserDao;

	public BookUserServiceImpl() {
		bookUserDao = new HibernateBookUser();
	}
	@Override
	public int insertBookUser(int bookId, int userId) {
		return bookUserDao.insertBookUser(bookId, userId);
	}
	
	@Override
	public int deleteBookUser(int bookId) {
		return bookUserDao.deleteBookUser(bookId);
	}
}
