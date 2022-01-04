package dao;

import bean.Book;

import java.util.List;

import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;

public class HibernateBookDao extends AbstractHibernateDao implements BookDao {
	private static final String Q_GET_ALL = "SELECT * FROM Book";
	
	private static final String Q_GET_NEW_RELEASE = "SELECT * FROM Book ORDER BY PublishDate DESC LIMIT 3";
	
	private static final String Q_GET_QUANTITY = "SELECT count(*) AS Quantity FROM Book";
	
	private static final String Q_GET_TWO_BOOK_SELLER = "WITH CTE_BOOK AS (\n"
			+ "SELECT bo.BookId, sum(od.Quantity) numOfBookSold\n" + "FROM  `Order` o\n" + "LEFT JOIN OrderDetail od\n"
			+ "ON o.OrderId = od.OrderId\n" + "LEFT JOIN Book bo\n" + "ON bo.BookId = od.BookId\n"
			+ "GROUP BY bo.BookId\n" + "ORDER BY numOfBookSold DESC\n" + "LIMIT 2)\n" + "SELECT book.*\n"
			+ "FROM book\n" + "JOIN CTE_BOOK \n" + "ON book.BookID = CTE_BOOK.BookID;";
	
	private static final String Q_GET_BY_TITLE = "SELECT * FROM book WHERE Title LIKE :title";

	private static final String Q_GET_BOOK_BY_CATEGORY_ID = "SELECT bo.*\n" + "FROM Book bo\n" + "JOIN Category ct \n"
			+ "ON bo.CategoryId = ct.CategoryId\n" + "WHERE ct.CategoryId = :CategoryId";
	
	
	

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
		return (int) openSession().createNativeQuery(Q_GET_QUANTITY).addScalar("Quantity", IntegerType.INSTANCE)
				.uniqueResult();
	}

	@Override
	public List<Book> getTwoBookSeller() {
		return openSession().createNativeQuery(Q_GET_TWO_BOOK_SELLER, Book.class).getResultList();
	}

	@Override
	public List<Book> getAll(String orderBy, boolean orderType) {
		String Q_GET_ALL_ORDER_BY = "SELECT * FROM book ORDER BY " + Book.getSQLOrder(orderBy, orderType);
		return openSession().createNativeQuery(Q_GET_ALL_ORDER_BY, Book.class).getResultList();
	}

	@Override
	public List<Book> getByTitle(String title) {
		return openSession().createNativeQuery(Q_GET_BY_TITLE, Book.class).setParameter("title", "%" + title + "%")
				.getResultList();
	}

	@Override
	public List<Book> getBookByCategoryId(Integer categoryId) {
		return openSession().createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID, Book.class)
				.setParameter("CategoryId", categoryId, IntegerType.INSTANCE).getResultList();
	}
	
	@Override
	public List<Book> getBookCategoryOrderBy(Integer categoryId, String orderBy, boolean orderType) {
		String Q_GET_BOOK_BY_CATEGORY_ID_ORDER_BY = "SELECT * \n"
				+ "FROM book \n"
				+ "WHERE CategoryId = :categoryId \n"
				+ "ORDER BY " + Book.getSQLOrder(orderBy, orderType);
		return openSession().createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID_ORDER_BY, Book.class)
							.setParameter("categoryId", categoryId, IntegerType.INSTANCE)
							.getResultList();
	}

}
