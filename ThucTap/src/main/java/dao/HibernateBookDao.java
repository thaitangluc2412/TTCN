package dao;

import bean.Book;
import bean.BookDto;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;
import org.hibernate.type.DoubleType;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;
import utils.CrudUtils;
import utils.DateUtils;

import java.time.LocalDate;
import java.util.List;

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
	private static final String Q_DELETE_BOOK_ID = "DELETE FROM book WHERE BookId= :bookId";
	private static final String Q_INSERT_BOOK = "INSERT INTO bookstore.book (CategoryID, Title, Description, Image, Price, PublishDate, Quantity)\n"
			+ "VALUES (:categoryId, :title, :description, :image, :price, :publishDate, :quantity)";
	private static final String Q_UPDATE_BOOK = "UPDATE bookstore.book SET CategoryID = :categoryId, \n"
			+ "Title = :title, \n" + "Description = :description, \n" + "Image = :image, \n"
			+ "Price = :price, PublishDate = :publishDate, Quantity = :quantity \n" + "WHERE BookID = :bookId";
	private static final String Q_GET_BOOKDTO_BY_AUTHORID = "SELECT b.BookID                   bookId,\n"
			+ "       b.Image                    image,\n" + "       b.Title                    title,\n"
			+ "       c.Name                     category,\n" + "       sum(od.Quantity) * b.Price profit\n"
			+ "FROM book b\n" + "JOIN bookuser bu\n" + "ON b.BookID = bu.BookID\n" + "JOIN user u\n"
			+ "ON bu.UserID = u.UserID\n" + "JOIN orderdetail od\n" + "ON b.BookID = od.BookID\n" + "JOIN `order` o\n"
			+ "ON od.OrderID = o.OrderID\n" + "JOIN category c\n" + "ON b.CategoryID = c.CategoryID\n"
			+ "WHERE u.UserID = :userid\n" + "GROUP BY b.BookID";
	private static final String Q_GET_BOOK_BY_AUTHOR_ID_AND_TITLE = "SELECT b.* FROM bookuser bu JOIN book b ON bu.bookID = b.bookId WHERE bu.UserID = :id AND b.Title LIKE :searchKey";
	private static final String Q_GET_BOOK_BY_AUTHOR_ID_AND_TITLE_CURRENTPAGE = "SELECT b.* FROM bookuser bu JOIN book b ON bu.bookID = b.bookId WHERE bu.UserID = :id AND b.Title LIKE :searchKey LIMIT :trimStart, :rows";
	 
    private static final String Q_GET_ALL_BOOKDTO = "SELECT b.BookID                   bookId,\n" +
            												"       b.Image                    image,\n" +
            												"       b.Title                    title,\n" +
            												"       c.Name                     category,\n" +
            												"		sum(od.quantity)  total,\n" +
            												"       sum(od.Quantity) * b.Price profit\n" +
            												"FROM book b\n" +
            												"JOIN bookuser bu\n" +
            												"ON b.BookID = bu.BookID\n" +
            												"JOIN user u\n" +
            												"ON bu.UserID = u.UserID\n" +
            												"JOIN orderdetail od\n" +
            												"ON b.BookID = od.BookID\n" +
            												"JOIN `order` o\n" +
            												"ON od.OrderID = o.OrderID\n" +
            												"JOIN category c\n" +
            												"ON b.CategoryID = c.CategoryID\n" +
            												"WHERE od.Quantity > 0\n" +
            												"GROUP BY b.BookID\n" +
            												"ORDER BY b.bookId;";
    
    private static final String Q_GET_ALL_BOOKDTO_PAGE = "SELECT b.BookID                   bookId,\n" +
															"       b.Image                    image,\n" +
															"       b.Title                    title,\n" +
															"       c.Name                     category,\n" +
															"		sum(od.quantity)  total,\n" +
															"       sum(od.Quantity) * b.Price profit\n" +
															"FROM book b\n" +
															"JOIN bookuser bu\n" +
															"ON b.BookID = bu.BookID\n" +
															"JOIN user u\n" +
															"ON bu.UserID = u.UserID\n" +
															"JOIN orderdetail od\n" +
															"ON b.BookID = od.BookID\n" +
															"JOIN `order` o\n" +
															"ON od.OrderID = o.OrderID\n" +
															"JOIN category c\n" +
															"ON b.CategoryID = c.CategoryID\n" +
															"WHERE od.Quantity > 0\n" +
															"GROUP BY b.BookID\n" +
															"ORDER BY b.bookId\n" +
															"LIMIT :trimStart, :rows";
    
    private static final String Q_GET_ALL_BOOKDTO_BETWEEN_TIME = "SELECT book.BookId bookId,\n"
    														+ "       Book.Image image,\n"
    														+ "       Book.Title title, \n"
    														+ "	   category.name category,\n"    														
    														+ "       sum(OrderDetail.quantity) total,\n"
    														+ "       (sum(OrderDetail.quantity)*book.price) profit\n"
    														+ "FROM Book\n"
    														+ "JOIN OrderDetail\n"
    														+ "ON Book.bookId = OrderDetail.bookId\n"
    														+ "JOIN `Order`\n"
    														+ "ON OrderDetail.OrderId = `Order`.OrderId\n"
    														+ "JOIN category \n"
            												+ "ON book.CategoryID = category.CategoryID\n"
    														+ "WHERE OrderDetail.Quantity > 0 AND `order`.OrderDate BETWEEN :startDate AND :endDate\n"
    														+ "Group BY book.bookId\n" 
    														+ "ORDER BY book.bookId";
    
    private static final String Q_GET_ALL_BOOKDTO_BETWEEN_TIME_PAGE = "SELECT book.BookId bookId,\n"
															+ "       Book.Image image,\n"
															+ "       Book.Title title, \n"
															+ "	   category.name category,\n"    														
															+ "       sum(OrderDetail.quantity) total,\n"
															+ "       (sum(OrderDetail.quantity)*book.price) profit\n"
															+ "FROM Book\n"
															+ "JOIN OrderDetail\n"
															+ "ON Book.bookId = OrderDetail.bookId\n"
															+ "JOIN `Order`\n"
															+ "ON OrderDetail.OrderId = `Order`.OrderId\n"
															+ "JOIN category \n"
															+ "ON book.CategoryID = category.CategoryID\n"
															+ "WHERE OrderDetail.Quantity > 0 AND `order`.OrderDate BETWEEN :startDate AND :endDate\n"
															+ "Group BY book.bookId\n"
															+ "ORDER BY book.bookId\n"
															+ "LIMIT :trimStart, :rows";
    
    private final Session session = openSession();
    

	@Override
	public List<Book> getAll() {
		return openSession().createNativeQuery(Q_GET_ALL, Book.class).getResultList();
		// return session.createNativeQuery(Q_GET_ALL, Book.class).getResultList();
	}

	@Override
	public List<Book> getNewReleaseBook() {
		// return openSession().createNativeQuery(Q_GET_NEW_RELEASE,
		// Book.class).getResultList();
		return session.createNativeQuery(Q_GET_NEW_RELEASE, Book.class).getResultList();
	}

	@Override
	public Book getBookById(int id) {
		return session.createNativeQuery(Q_GET_SINGLE_BY_ID, Book.class).setParameter("id", id, IntegerType.INSTANCE)
				.uniqueResult();
	}

	@Override
	public int getQuantity() {
		// return (int)
		// openSession().createNativeQuery(Q_GET_QUANTITY).addScalar("Quantity",
		// IntegerType.INSTANCE)
		// .uniqueResult();

		return (int) session.createNativeQuery(Q_GET_QUANTITY).addScalar("Quantity", IntegerType.INSTANCE)
				.uniqueResult();
	}

	@Override
	public List<Book> getTwoBookSeller() {
		// return openSession().createNativeQuery(Q_GET_TWO_BOOK_SELLER,
		// Book.class).getResultList();
		return session.createNativeQuery(Q_GET_TWO_BOOK_SELLER, Book.class).getResultList();
	}

	@Override
	public List<Book> getAll(String orderBy, boolean orderType) {
		String Q_GET_ALL_ORDER_BY = "SELECT * FROM book ORDER BY " + Book.getSQLOrder(orderBy, orderType);
		// return openSession().createNativeQuery(Q_GET_ALL_ORDER_BY,
		// Book.class).getResultList();
		return session.createNativeQuery(Q_GET_ALL_ORDER_BY, Book.class).getResultList();
	}

	@Override
	public List<Book> getByTitle(String title) {
		// return openSession().createNativeQuery(Q_GET_BY_TITLE,
		// Book.class).setParameter("title", "%" + title + "%")
		// .getResultList();
		return session.createNativeQuery(Q_GET_BY_TITLE, Book.class).setParameter("title", "%" + title + "%")
				.getResultList();
	}

	@Override
	public List<Book> getByTitleCurrentPage(int trimStart, int rows, String title) {
		// return openSession().createNativeQuery(Q_GET_GET_TITLE_CURRENT_PAGE,
		// Book.class)
		// .setParameter("title", "%" + title + "%", StringType.INSTANCE)
		// .setParameter("trimStart", trimStart, IntegerType.INSTANCE)
		// .setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
		return session.createNativeQuery(Q_GET_GET_TITLE_CURRENT_PAGE, Book.class)
				.setParameter("title", "%" + title + "%", StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Book> getByTitleAndCategory(String title, int categoryID) {
		// return openSession().createNativeQuery(Q_GET_BY_TITLE_WITH_CATEGORY_ID,
		// Book.class)
		// .setParameter("title", "%" + title + "%").setParameter("CategoryId",
		// categoryID).getResultList();
		return session.createNativeQuery(Q_GET_BY_TITLE_WITH_CATEGORY_ID, Book.class)
				.setParameter("title", "%" + title + "%").setParameter("CategoryId", categoryID).getResultList();
	}

	@Override
	public List<Book> getByTitleAndCategoryCurrentPage(int trimStart, int rows, String title, int categoryID) {
		// return
		// openSession().createNativeQuery(Q_GET_BY_TITLE_WITH_CATEGORY_ID_CURRENT_PAGE,
		// Book.class)
		// .setParameter("CategoryId", categoryID, IntegerType.INSTANCE)
		// .setParameter("title", "%" + title + "%", StringType.INSTANCE)
		// .setParameter("trimStart", trimStart, IntegerType.INSTANCE)
		// .setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
		return session.createNativeQuery(Q_GET_BY_TITLE_WITH_CATEGORY_ID_CURRENT_PAGE, Book.class)
				.setParameter("CategoryId", categoryID, IntegerType.INSTANCE)
				.setParameter("title", "%" + title + "%", StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Book> getBookByCategoryId(Integer categoryId) {
		// return openSession().createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID, Book.class)
		// .setParameter("CategoryId", categoryId,
		// IntegerType.INSTANCE).getResultList();
		return session.createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID, Book.class)
				.setParameter("CategoryId", categoryId, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Book> getBookCategoryOrderBy(Integer categoryId, String orderBy, boolean orderType) {
		String Q_GET_BOOK_BY_CATEGORY_ID_ORDER_BY = "SELECT * \n" + "FROM book \n" + "WHERE CategoryId = :categoryId \n"
				+ "ORDER BY " + Book.getSQLOrder(orderBy, orderType);
		// return openSession().createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID_ORDER_BY,
		// Book.class)
		// .setParameter("categoryId", categoryId,
		// IntegerType.INSTANCE).getResultList();
		return session.createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID_ORDER_BY, Book.class)
				.setParameter("categoryId", categoryId, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Book> getBookCurrentPage(int trimStart, int rows) {
		// return openSession().createNativeQuery(Q_GET_BOOK_OF_CURRENT_PAGE,
		// Book.class)
		// .setParameter("trimStart", trimStart, IntegerType.INSTANCE)
		// .setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
		return session.createNativeQuery(Q_GET_BOOK_OF_CURRENT_PAGE, Book.class)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Book> getBookByCategoryIDCurrentPage(int trimStart, int rows, int categoryID) {
		// return
		// openSession().createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID_OF_CURRENT_PAGE,
		// Book.class)
		// .setParameter("CategoryId", categoryID, IntegerType.INSTANCE)
		// .setParameter("trimStart", trimStart, IntegerType.INSTANCE)
		// .setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
		return session.createNativeQuery(Q_GET_BOOK_BY_CATEGORY_ID_OF_CURRENT_PAGE, Book.class)
				.setParameter("CategoryId", categoryID, IntegerType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override

	public Book getById(int Id) {
		// return openSession().createNativeQuery(Q_GET_BOOK_BY_ID, Book.class)
		// .setParameter("bookId", Id, IntegerType.INSTANCE)
		// .uniqueResult();
		return session.createNativeQuery(Q_GET_BOOK_BY_ID, Book.class).setParameter("bookId", Id, IntegerType.INSTANCE)
				.uniqueResult();

	}

	@Override
	public List<Book> getByAuthorId(Integer id) {
		String Q_GET_BOOK_BY_AUTHOR_ID = "SELECT b.*\n" + "FROM BookUser bu\n" + "JOIN BOOK b\n"
				+ "ON bu.BookId = b.BookID\n" + "JOIN User u\n" + "ON u.UserId = bu.UserId\n" + "WHERE bu.UserId = "
				+ id;
		// return openSession().createNativeQuery(Q_GET_BOOK_BY_AUTHOR_ID, Book.class)
		// .getResultList();
		return openSession().createNativeQuery(Q_GET_BOOK_BY_AUTHOR_ID, Book.class).getResultList();
	}

	@Override
	public List<Book> getByAuthorIdCurrentPage(int strimStart, int rows, int id) {
		// TODO Auto-generated method stub
		String Q_GET_BOOK_BY_AUTHOR_ID_CURRENT_PAGE = "SELECT b.*\n" + "FROM BookUser bu\n" + "JOIN BOOK b\n"
				+ "ON bu.BookId = b.BookID\n" + "JOIN User u\n" + "ON u.UserId = bu.UserId\n" + "WHERE bu.UserId = "
				+ id + " LIMIT " + strimStart + ", " + rows;
		return openSession().createNativeQuery(Q_GET_BOOK_BY_AUTHOR_ID_CURRENT_PAGE, Book.class).getResultList();
	}
	
	@Override
	public List<Book> getByAuthorIdAndTitle(int id, String searchKey) {
		return openSession().createNativeQuery(Q_GET_BOOK_BY_AUTHOR_ID_AND_TITLE, Book.class)
				.setParameter("id", id, IntegerType.INSTANCE)
				.setParameter("searchKey","%" + searchKey + "%", StringType.INSTANCE).getResultList();
	}
	
	@Override
	public List<Book> getByAuthorIdAndTitleCurrentPage(int trimStart, int rows, int id, String searchKey) {
		return openSession().createNativeQuery(Q_GET_BOOK_BY_AUTHOR_ID_AND_TITLE_CURRENTPAGE, Book.class)
				.setParameter("id", id, IntegerType.INSTANCE)
				.setParameter("searchKey", "%" + searchKey + "%", StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public int deleteByBookId(Integer bookId) {
		Transaction transaction = session.beginTransaction();
		int query;
		query = session.createNativeQuery(Q_DELETE_BOOK_ID, Book.class)
				.setParameter("bookId", bookId, IntegerType.INSTANCE).executeUpdate();
		transaction.commit();
		return query;
	}

	@Override
	public int insertBook(int categoryId, String title, String description, String image, Double price,
			LocalDate publishDate, Integer quantity) {
		Session session = openSession();

		Transaction transaction = session.beginTransaction();
		int query;
		query = session.createNativeQuery(Q_INSERT_BOOK, Book.class)
				.setParameter("categoryId", categoryId, IntegerType.INSTANCE)
				.setParameter("title", title, StringType.INSTANCE).setParameter("description", description)
				.setParameter("image", image).setParameter("price", price)
				.setParameter("publishDate", DateUtils.toDate(publishDate)).setParameter("quantity", quantity)
				.executeUpdate();
		// query = session.createNativeQuery(Q_INSERT_BOOK, Book.class)
		// .executeUpdate();
		transaction.commit();
		return query;
	}

	@Override
	public int updateBook(int categoryId, String title, String description, String image, Double price,
			LocalDate publishDate, Integer quantity, int bookId) {
		Session session = getCurrentSession();
		Transaction transaction = session.beginTransaction();
		int query;
		query = session.createNativeQuery(Q_UPDATE_BOOK, Book.class).setParameter("categoryId", categoryId)
				.setParameter("title", title).setParameter("description", description).setParameter("image", image)
				.setParameter("price", price).setParameter("publishDate", DateUtils.toDate(publishDate))
				.setParameter("quantity", quantity).setParameter("bookId", bookId).executeUpdate();
		transaction.commit();
		return query;
	}

	@Override
	public boolean decreaseBook(Book book, int value) {
		book.setQuantity(book.getQuantity() - value);
		return CrudUtils.update(book);
	}

	
    @SuppressWarnings({"unchecked", "deprecation"})
    @Override
    public List<BookDto> getBookWithProfitByAuthorId(int authorId) {
        return openSession().createNativeQuery(Q_GET_BOOKDTO_BY_AUTHORID)
                            .setParameter("userid", authorId)
                            .addScalar("bookId", IntegerType.INSTANCE)
                            .addScalar("image", StringType.INSTANCE)
                            .addScalar("title", StringType.INSTANCE)
                            .addScalar("category", StringType.INSTANCE)
                            .addScalar("total", IntegerType.INSTANCE)
                            .addScalar("profit", DoubleType.INSTANCE)
                            .setResultTransformer(Transformers.aliasToBean(BookDto.class))
                            .getResultList();
    }
    
    @SuppressWarnings({"unchecked", "deprecation"})
    @Override
    public List<BookDto> getBookWithProfit() {
    	return openSession().createNativeQuery(Q_GET_ALL_BOOKDTO)
                .addScalar("bookId", IntegerType.INSTANCE)
                .addScalar("image", StringType.INSTANCE)
                .addScalar("title", StringType.INSTANCE)
                .addScalar("category", StringType.INSTANCE)
                .addScalar("total", IntegerType.INSTANCE)
                .addScalar("profit", DoubleType.INSTANCE)
                .setResultTransformer(Transformers.aliasToBean(BookDto.class))
                .getResultList();
    }
    
    @SuppressWarnings({"unchecked", "deprecation"})
    @Override
    public List<BookDto> getBookWithProfitBetweenTime(LocalDate startDate, LocalDate endDate) {
    	return openSession().createNativeQuery(Q_GET_ALL_BOOKDTO_BETWEEN_TIME)
                .addScalar("bookId", IntegerType.INSTANCE)
                .addScalar("image", StringType.INSTANCE)
                .addScalar("title", StringType.INSTANCE)
                .addScalar("category", StringType.INSTANCE)
                .addScalar("total", IntegerType.INSTANCE)
                .addScalar("profit", DoubleType.INSTANCE)
                .setParameter("startDate", DateUtils.toDate(startDate))
                .setParameter("endDate", DateUtils.toDate(endDate))
                .setResultTransformer(Transformers.aliasToBean(BookDto.class))
                .getResultList();
    }
    
    @SuppressWarnings({"unchecked", "deprecation"})
    @Override
    public List<BookDto> getBookWithProfitBetweenTimeCurrentPage(int trimStart, int rows, LocalDate startDate,
    		LocalDate endDate) {
    	return openSession().createNativeQuery(Q_GET_ALL_BOOKDTO_BETWEEN_TIME_PAGE)
                .addScalar("bookId", IntegerType.INSTANCE)
                .addScalar("image", StringType.INSTANCE)
                .addScalar("title", StringType.INSTANCE)
                .addScalar("category", StringType.INSTANCE)
                .addScalar("total", IntegerType.INSTANCE)
                .addScalar("profit", DoubleType.INSTANCE)
                .setParameter("startDate", DateUtils.toDate(startDate))
                .setParameter("endDate", DateUtils.toDate(endDate))
                .setParameter("trimStart", trimStart, IntegerType.INSTANCE)
                .setParameter("rows", rows, IntegerType.INSTANCE)
                .setResultTransformer(Transformers.aliasToBean(BookDto.class))      
                .getResultList();
    }
    
    @SuppressWarnings({"unchecked", "deprecation"})
    @Override
    public List<BookDto> getBookWithProfitCurrentPage(int trimStart, int rows) {
    	return openSession().createNativeQuery(Q_GET_ALL_BOOKDTO_PAGE)
                .addScalar("bookId", IntegerType.INSTANCE)
                .addScalar("image", StringType.INSTANCE)
                .addScalar("title", StringType.INSTANCE)
                .addScalar("category", StringType.INSTANCE)
                .addScalar("total", IntegerType.INSTANCE)
                .addScalar("profit", DoubleType.INSTANCE)
                .setParameter("trimStart", trimStart, IntegerType.INSTANCE)
                .setParameter("rows", rows, IntegerType.INSTANCE)
                .setResultTransformer(Transformers.aliasToBean(BookDto.class))
                .getResultList();
    }

}
