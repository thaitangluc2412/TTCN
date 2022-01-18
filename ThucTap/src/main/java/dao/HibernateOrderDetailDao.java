package dao;

import bean.OrderDetail;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class HibernateOrderDetailDao extends AbstractHibernateDao implements OrderDetailDao {
    private static final String Q_LIST_SUM = "SELECT OrderID AS OrderId,BookID AS BookId, SUM(Quantity) AS quantity FROM Orderdetail GROUP BY BookID";
    private static final String Q_SUM_QUANTITY = "SELECT SUM(Quantity) FROM Orderdetail WHERE BookID = :bookid";

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
        Session session = openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.save(orderDetail);
            transaction.commit();
        } catch (Exception exception) {
            exception.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
            return false;
        }
        return true;
    }
}
