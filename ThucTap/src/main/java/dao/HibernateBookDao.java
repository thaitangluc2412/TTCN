package dao;

<<<<<<< HEAD

import bean.Book;
=======
import java.util.List;

>>>>>>> 2b6de3b (luc)
import org.hibernate.type.IntegerType;

import java.util.List;

public class HibernateBookDao extends AbstractHibernateDao implements BookDao {
<<<<<<< HEAD
    private static final String Q_GET_ALL = "SELECT * FROM Book";
    private static final String Q_GET_NEW_RELEASE = "SELECT * FROM Book ORDER BY PublishDate DESC LIMIT 3";
    private static final String Q_GET_QUANTITY = "SELECT count(*) AS Quantity FROM Book";
    private static final String Q_GET_TWO_BOOK_SELLER = "WITH CTE_BOOK AS (\n"
                                                        + "SELECT bo.BookId, sum(od.Quantity) numOfBookSold\n"
                                                        + "FROM  `Order` o\n"
                                                        + "LEFT JOIN OrderDetail od\n"
                                                        + "ON o.OrderId = od.OrderId\n"
                                                        + "LEFT JOIN Book bo\n"
                                                        + "ON bo.BookId = od.BookId\n"
                                                        + "GROUP BY bo.BookId\n"
                                                        + "ORDER BY numOfBookSold DESC\n"
                                                        + "LIMIT 2)\n"
                                                        + "SELECT book.*\n"
                                                        + "FROM book\n"
                                                        + "JOIN CTE_BOOK \n"
                                                        + "ON book.BookID = CTE_BOOK.BookID;";
    private static final String Q_GET_ALL_ORDER_BY = "SELECT * FROM book ORDER BY :orderBy :orderType";
    private static final String Q_GET_BY_TITLE = "SELECT * FROM book WHERE Title LIKE :title";

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
        return (int) openSession().createNativeQuery(Q_GET_QUANTITY)
                                  .addScalar("Quantity", IntegerType.INSTANCE)
                                  .uniqueResult();
    }

    @Override
    public List<Book> get2BookSeller() {
        return openSession().createNativeQuery(Q_GET_TWO_BOOK_SELLER, Book.class).getResultList();
    }

    @Override
    public List<Book> getAll(String orderBy, String orderType) {
        return openSession().createNativeQuery(Q_GET_ALL_ORDER_BY, Book.class)
                            .setParameter("orderBy", orderBy)
                            .setParameter("orderType", orderType)
                            .getResultList();
    }

    @Override
    public List<Book> getByTitle(String title) {
        return openSession().createNativeQuery(Q_GET_BY_TITLE, Book.class)
                            .setParameter("title", "%" + title + "%")
                            .getResultList();
    }
=======
	private static final String Q_GET_ALL = "SELECT * FROM Book";
	private static final String Q_GET_NEW_RELEASE = "SELECT * FROM Book ORDER BY PublishDate DESC LIMIT 3";
	private static final String Q_GET_QUANTITY = "SELECT count(*) AS Quantity FROM Book";
	private static final String Q_GET_TWO_BOOK_SELLER = "With CTE_BOOK AS (\n"
			+ "SELECT bo.BookId, sum(od.Quantity) numOfBookSold\n" + "FROM  `Order` o\n" + "LEFT JOIN OrderDetail od\n"
			+ "ON o.OrderId = od.OrderId\n" + "LEFT JOIN Book bo\n" + "ON bo.BookId = od.BookId\n"
			+ "GROUP BY bo.BookId\n" + "ORDER BY numOfBookSold DESC\n" + "LiMit 2)\n" + "SELECT book.*\n"
			+ "FROM book\n" + "JOIN CTE_BOOK \n" + "ON book.BookID = CTE_BOOK.BookID;";

	private static final String Q_GET_BOOK_BY_CATEGORY_ID = "SELECT bo.*\n" + "FROM Book bo\n" + "JOIN Category ct \n"
			+ "ON bo.CategoryId = ct.CategoryId\n" + "WHERE ct.CategoryId = :CategoryId";

	private static final String Q_GET_BOOK_ORDER_BY_TITLE_ASC = "SELECT *\n" + "FROM book\n"
			+ "ORDER BY Book.Title ASC;";

	private static final String Q_GET_BOOK_ORDER_BY_TITLE_DESC = "SELECT *\n" + "FROM book\n"
			+ "ORDER BY Book.Title DESC;";
	
	private static final String Q_GET_BOOK_ORDER_BY_PRICE_DESC = "SELECT *\r\n"
			+ "FROM book\r\n"
			+ "ORDER BY Book.Price DESC;";
	
	private static final String Q_GET_BOOK_ORDER_BY_PRICE_ASC = "SELECT *\r\n"
			+ "FROM book\r\n"
			+ "ORDER BY Book.Price ASC;";
	

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
	public List<Book> get2BookSeller() {
		return openSession().createNativeQuery(Q_GET_TWO_BOOK_SELLER, Book.class).getResultList();
	}

	@Override
	public List<Book> getBookByCategoryId(Integer categoryId) {
		return openSession().createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID, Book.class)
				.setParameter("CategoryId", categoryId, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Book> getBookOrderByTitleASC() {
		return openSession().createNativeQuery(Q_GET_BOOK_ORDER_BY_TITLE_ASC, Book.class).getResultList();
	}

	@Override
	public List<Book> getBookOrderByTitleDESC() {
		return openSession().createNativeQuery(Q_GET_BOOK_ORDER_BY_TITLE_DESC, Book.class).getResultList();
	}
	
	@Override
	public List<Book> getBookOrderByPriceASC() {
		return openSession().createNativeQuery(Q_GET_BOOK_ORDER_BY_PRICE_ASC, Book.class).getResultList();
	}
	
	@Override
	public List<Book> getBookOrderByPriceDESC() {
		return openSession().createNativeQuery(Q_GET_BOOK_ORDER_BY_PRICE_DESC, Book.class).getResultList();
	}
>>>>>>> 2b6de3b (luc)
}
