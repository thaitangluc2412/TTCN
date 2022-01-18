package dao;

import bean.OrderDetail;
import utils.CrudUtils;

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
        return CrudUtils.save(orderDetail);
    }
}
