package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import bean.Book;
import bean.BookUser;

public class HibernateBookUser extends AbstractHibernateDao implements BookUserDao{
	private static final String Q_INESERT_BOOK_USER = "INSERT INTO bookstore.BookUser (BookId, UserId)\n"
			+ "VALUES ( :bookId, :userId)";
	
	private static final String Q_DELETE_BOOK_USER = "DELETE FROM bookuser WHERE bookid=:bookId";
	
	@Override
	public int insertBookUser(int bookId, int userId) {
		Session session = openSession();
		
		Transaction transaction = session.beginTransaction();
		int query; 
		query = session.createNativeQuery(Q_INESERT_BOOK_USER, BookUser.class)
				.setParameter("bookId", bookId)
				.setParameter("userId", userId)
				.executeUpdate();
		transaction.commit();
		return query;
	}
	
	@Override
	public int deleteBookUser(int bookId) {
		Session session = openSession();		
		Transaction transaction = session.beginTransaction();
		int query; 
		query = session.createNativeQuery(Q_DELETE_BOOK_USER, BookUser.class)
				.setParameter("bookId", bookId)
				.executeUpdate();
		transaction.commit();
		return query;
	}
}
