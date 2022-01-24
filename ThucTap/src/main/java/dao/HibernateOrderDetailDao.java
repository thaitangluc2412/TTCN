package dao;

import bean.OrderDetail;
import bean.OrderDetail.Id;
import bean.OrderDetailDto;
import org.hibernate.transform.Transformers;
import org.hibernate.type.DoubleType;
import org.hibernate.type.IntegerType;
import org.hibernate.type.LocalDateTimeType;
import org.hibernate.type.StringType;
import utils.QueryUtils;

import java.util.List;

public class HibernateOrderDetailDao extends AbstractHibernateDao implements OrderDetailDao {
    private static final String Q_LIST_SUM = "SELECT OrderID AS OrderId,BookID AS BookId, SUM(Quantity) AS quantity FROM Orderdetail GROUP BY BookID";
    private static final String Q_SUM_QUANTITY = "SELECT SUM(Quantity) FROM Orderdetail WHERE BookID = :bookid";
    private static final String Q_GET_ORDERDETAIL_BY_BOOKID = "SELECT u.Name                userName,\n" +
                                                              "       o.OrderDate           orderDate,\n" +
                                                              "       od.Quantity           quantity,\n" +
                                                              "       od.Quantity * b.Price profit\n" +
                                                              "FROM book b\n" +
                                                              "JOIN orderdetail od\n" +
                                                              "ON b.BookID = od.BookID\n" +
                                                              "JOIN `order` o\n" +
                                                              "ON od.OrderID = o.OrderID\n" +
                                                              "JOIN user u\n" +
                                                              "ON o.UserID = u.UserID\n" +
                                                              "WHERE b.BookID = :bookid";

    @Override
    public List<OrderDetail> getSum() {
        return openSession().createNativeQuery(Q_LIST_SUM, OrderDetail.class).getResultList();
    }

    @Override
    public int getQuantity(int id) {
        return (int) openSession().createNativeQuery(Q_SUM_QUANTITY).setParameter("bookid", id)
                                  .uniqueResult();
    }

    @Override
    public boolean save(OrderDetail orderDetail) {
        return QueryUtils.save(orderDetail);
    }

    @SuppressWarnings({"unchecked", "deprecation"})
    @Override
    public List<OrderDetailDto> getOrderDetailDtoByBookId(int bookId) {
        return openSession().createNativeQuery(Q_GET_ORDERDETAIL_BY_BOOKID)
                            .setParameter("bookid", bookId)
                            .addScalar("userName", StringType.INSTANCE)
                            .addScalar("orderDate", LocalDateTimeType.INSTANCE)
                            .addScalar("quantity", IntegerType.INSTANCE)
                            .addScalar("profit", DoubleType.INSTANCE)
                            .setResultTransformer(Transformers.aliasToBean(OrderDetailDto.class))
                            .getResultList();
    }

    @Override
    public OrderDetail getById(Id id) {
        return QueryUtils.query(session -> session.get(OrderDetail.class, id));
    }
}
