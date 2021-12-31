package dao;

import bean.Book;

import java.util.List;

public class HibernateBookDao extends AbstractHibernateDao implements BookDao {
	private static final String Q_GET_ALL = "SELECT * FROM Book";
	
	@Override
	public List<Book> getAll() {
		return openSession().createNativeQuery(Q_GET_ALL, Book.class).getResultList();
	}
}
