package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import bean.Book;
import bean.BookUser;

public class HibernateBookUser extends AbstractHibernateDao implements BookUserDao{
	@Override
	public int insertBookUser(String bookId, String userId) {
		Session session = openSession();
		String Q_INESERT_BOOK_USER = "INSERT INTO bookstore.BookUser (BookId, UserId)\n"
				+ "VALUES ( " + bookId + ", " + userId + ")";
		Transaction transaction = session.beginTransaction();
		int query; 
		query = session.createNativeQuery(Q_INESERT_BOOK_USER, BookUser.class)
				.executeUpdate();
		transaction.commit();
		return query;
	}
}
