package dao;


import java.util.List;
import org.hibernate.Session;
import org.hibernate.type.IntegerType;


import bean.Book;

import java.util.List;

public class HibernateBookDao extends AbstractHibernateDao implements BookDao {
	private static final String Q_GET_ALL = "SELECT * FROM Book";
	private static final String Q_GET_NEW_RELEASE = "SELECT * FROM Book ORDER BY PublishDate DESC LIMIT 3";
	private static final String Q_GET_QUANTITY = "SELECT count(*) as Quantity FROM Book";
	@Override
	public List<Book> getAll() {
		return openSession().createNativeQuery(Q_GET_ALL, Book.class).getResultList();
	}

	@Override
	public List<Book> getNewReleaseBook() {
		return openSession().createNativeQuery(Q_GET_NEW_RELEASE, Book.class).getResultList();
	}

	@Override
	public int getQuantity() {
		return (int) openSession().createNativeQuery(Q_GET_QUANTITY).addScalar("Quantity", IntegerType.INSTANCE).uniqueResult();
	}
}
