package dao;


import java.util.List;

import org.hibernate.type.IntegerType;

import bean.Book;

public class HibernateBookDao extends AbstractHibernateDao implements BookDao {
    private static final String Q_GET_ALL = "SELECT * FROM Book";
    private static final String Q_GET_NEW_RELEASE = "SELECT * FROM Book ORDER BY PublishDate DESC LIMIT 3";
    private static final String Q_GET_QUANTITY = "SELECT count(*) AS Quantity FROM Book";
    private static final String Q_GET_TWO_BOOK_SELLER = "With CTE_BOOK AS (\n"
    		+ "SELECT bo.BookId, sum(od.Quantity) numOfBookSold\n"
    		+ "FROM  `Order` o\n"
    		+ "LEFT JOIN OrderDetail od\n"
    		+ "ON o.OrderId = od.OrderId\n"
    		+ "LEFT JOIN Book bo\n"
    		+ "ON bo.BookId = od.BookId\n"
    		+ "GROUP BY bo.BookId\n"
    		+ "ORDER BY numOfBookSold DESC\n"
    		+ "LiMit 2)\n"
    		+ "SELECT book.*\n"
    		+ "FROM book\n"
    		+ "JOIN CTE_BOOK \n"
    		+ "ON book.BookID = CTE_BOOK.BookID;";

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
    	return openSession().createNativeQuery(Q_GET_TWO_BOOK_SELLER,Book.class).getResultList()  ;  
    }
}
