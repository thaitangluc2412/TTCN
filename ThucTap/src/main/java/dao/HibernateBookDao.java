package dao;

import java.util.List;
import org.hibernate.Session;
import bean.Book;

public class HibernateBookDao extends AbstractHibernateDao implements BookDao {
	private static final String Q_GET_ALL = "SELECT * FROM Book";
	
	@Override
	public List<Book> getAll() {
		return openSession().createNativeQuery(Q_GET_ALL, Book.class).getResultList();
	}
}
