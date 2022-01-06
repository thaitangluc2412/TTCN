package dao;

import bean.Book;
import bean.BookUser;

import java.util.List;

import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;

public class HibernateBookDao extends AbstractHibernateDao implements BookDao {
	private static final String Q_GET_ALL = "SELECT * FROM Book";
	
	private static final String Q_GET_SINGLE_BY_ID = "SELECT * FROM Book WHERE BookID = :id";
	
	private static final String Q_GET_NEW_RELEASE = "SELECT * FROM Book ORDER BY PublishDate DESC LIMIT 3";

	private static final String Q_GET_QUANTITY = "SELECT count(*) AS Quantity FROM Book";

	private static final String Q_GET_TWO_BOOK_SELLER = "WITH CTE_BOOK AS (\n"
			+ "SELECT bo.BookId, sum(od.Quantity) numOfBookSold\n" + "FROM  `Order` o\n" + "LEFT JOIN OrderDetail od\n"
			+ "ON o.OrderId = od.OrderId\n" + "LEFT JOIN Book bo\n" + "ON bo.BookId = od.BookId\n"
			+ "GROUP BY bo.BookId\n" + "ORDER BY numOfBookSold DESC\n" + "LIMIT 2)\n" + "SELECT book.*\n"
			+ "FROM book\n" + "JOIN CTE_BOOK \n" + "ON book.BookID = CTE_BOOK.BookID;";

	private static final String Q_GET_BY_TITLE = "SELECT * FROM book WHERE Title LIKE :title";

	private static final String Q_GET_GET_TITLE_CURRENT_PAGE = "SELECT * FROM book WHERE Title LIKE :title LIMIT :trimStart, :rows";

	private static final String Q_GET_BY_TITLE_WITH_CATEGORY_ID = "SELECT * FROM book WHERE CategoryId = :CategoryId AND Title LIKE :title";

	private static final String Q_GET_BY_TITLE_WITH_CATEGORY_ID_CURRENT_PAGE = "SELECT * FROM book WHERE CategoryId = :CategoryId AND Title LIKE :title LIMIT :trimStart, :rows";

	private static final String Q_GET_BOOK_BY_CATEGORY_ID = "SELECT bo.*\n" + "FROM Book bo\n" + "JOIN Category ct \n"
			+ "ON bo.CategoryId = ct.CategoryId\n" + "WHERE ct.CategoryId = :CategoryId";

	private static final String Q_GET_BOOK_OF_CURRENT_PAGE = "SELECT * FROM book LIMIT :trimStart , :rows";

	private static final String Q_GET_BOOK_BY_CATEGORY_ID_OF_CURRENT_PAGE = "SELECT * FROM book WHERE CategoryId = :CategoryId LIMIT :trimStart, :rows";

	private static final String Q_GET_BOOK_BY_ID = "SELECT * FROM Book WHERE BookId = :bookId";

	
	
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
	public List<Book> getByTitleAndCategory(String title, int categoryID) {
		return openSession().createNativeQuery(Q_GET_BY_TITLE_WITH_CATEGORY_ID, Book.class)
				.setParameter("title", "%" + title + "%").setParameter("CategoryId", categoryID).getResultList();
	}

	@Override
	public List<Book> getBookByCategoryId(Integer categoryId) {
		return openSession().createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID, Book.class)
				.setParameter("CategoryId", categoryId, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Book> getBookCategoryOrderBy(Integer categoryId, String orderBy, boolean orderType) {
		String Q_GET_BOOK_BY_CATEGORY_ID_ORDER_BY = "SELECT * \n" + "FROM book \n" + "WHERE CategoryId = :categoryId \n"
				+ "ORDER BY " + Book.getSQLOrder(orderBy, orderType);
		return openSession().createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID_ORDER_BY, Book.class)
				.setParameter("categoryId", categoryId, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Book> getBookCurrentPage(int trimStart, int rows) {
		// TODO Auto-generated method stub
		return openSession().createNativeQuery(Q_GET_BOOK_OF_CURRENT_PAGE, Book.class)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Book> getBookByCategoryIDCurrentPage(int trimStart, int rows, int categoryID) {
		return openSession().createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID_OF_CURRENT_PAGE, Book.class)
				.setParameter("CategoryId", categoryID, IntegerType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Book> getByTitleCurrentPage(int trimStart, int rows, String title) {
		return openSession().createNativeQuery(Q_GET_GET_TITLE_CURRENT_PAGE, Book.class)
				.setParameter("title", "%" + title + "%", StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Book> getByTitleAndCategoryCurrentPage(int trimStart, int rows, String title, int categoryID) {
		return openSession().createNativeQuery(Q_GET_BY_TITLE_WITH_CATEGORY_ID_CURRENT_PAGE, Book.class)
				.setParameter("CategoryId", categoryID, IntegerType.INSTANCE)
				.setParameter("title", "%" + title + "%", StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}
	
	@Override
	public Book getById(Integer Id) {
		return openSession().createNativeQuery(Q_GET_BOOK_BY_ID, Book.class)
				.setParameter("bookId", Id, IntegerType.INSTANCE)
				.uniqueResult();
	}
	
	@Override
	public List<Book> getByAuthorId(Integer id) {
		String Q_GET_BOOK_BY_AUTHOR_ID = "SELECT b.*\n"
				+ "FROM BookUser bu\n"
				+ "JOIN BOOK b\n"
				+ "ON bu.BookId = b.BookID\n"
				+ "JOIN User u\n"
				+ "ON u.UserId = bu.UserId\n"
				+ "WHERE bu.UserId = " + id;
		return openSession().createNativeQuery(Q_GET_BOOK_BY_AUTHOR_ID, Book.class)
				.getResultList();
	}

	@Override
	public Book getBookById(int id) {
		return openSession().createNativeQuery(Q_GET_SINGLE_BY_ID, Book.class).setParameter("id", id, IntegerType.INSTANCE).uniqueResult();
	}

}
