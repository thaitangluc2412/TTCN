package dao;

import bean.Category;
import bean.Order;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.type.IntegerType;
import utils.CrudUtils;

import java.util.List;

public class HibernateOrderDao extends AbstractHibernateDao implements OrderDao {

    private static final String Q_GET_ALL = "SELECT * FROM `Order`";
    private static final String Q_GET_ODER_BY_USERID = "SELECT * FROM `Order` WHERE UserID = :userid";
    
    private static final String Q_UPDATE_STATUS = "UPDATE bookstore.`order` SET status = :status\n"
    		+ "WHERE orderId = :orderId";

    @Override
    public List<Order> getAll() {
        return openSession().createNativeQuery(Q_GET_ALL, Order.class).getResultList();
    }

    @Override
    public List<Order> getOrder(int userId) {
        return openSession().createNativeQuery(Q_GET_ODER_BY_USERID, Order.class)
                            .setParameter("userid", userId, IntegerType.INSTANCE)
                            .getResultList();
    }

    @Override
    public boolean save(Order order) {
        return CrudUtils.save(order);
    }
    
    @Override
    public int updateStatus(int orderId, String status) {
    	Session session = getCurrentSession();
		Transaction transaction = session.beginTransaction();
		int query;
		query = session.createNativeQuery(Q_UPDATE_STATUS, Order.class)
				.setParameter(Order.ORDER_STATUS, status)
				.setParameter(Order.ORDER_ORDER_ID, orderId)
				.executeUpdate();
		transaction.commit();
		return query;
    }
}
