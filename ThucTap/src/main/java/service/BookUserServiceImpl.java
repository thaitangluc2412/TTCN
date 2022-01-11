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
	public int insertBookUser(String bookId, String userId) {
		return bookUserDao.insertBookUser(bookId, userId);
	}
}
