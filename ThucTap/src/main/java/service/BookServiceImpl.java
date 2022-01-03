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
<<<<<<< HEAD

	@Override
	public List<Book> getAll(String orderBy, String orderType) {
		return bookDao.getAll(orderBy, orderType);
	}

	@Override
	public List<Book> getByTitle(String title) {
		return bookDao.getByTitle(title);
=======
	
	@Override
	public List<Book> getBookByCategoryId(Integer categoryId) {
		return bookDao.getBookByCategoryId(categoryId);
	}
	
	@Override
	public List<Book> getBookOrderByTitleASC() {
		return bookDao.getBookOrderByTitleASC();
	}
	
	@Override
	public List<Book> getBookOrderByTitleDESC() {

		return bookDao.getBookOrderByTitleDESC();
	}
	
	@Override
	public List<Book> getBookOrderByPriceASC() {
		return bookDao.getBookOrderByPriceASC();
	}
	
	@Override
	public List<Book> getBookOrderByPriceDESC() {
		return bookDao.getBookOrderByPriceDESC();
>>>>>>> 2b6de3b (luc)
	}
}
