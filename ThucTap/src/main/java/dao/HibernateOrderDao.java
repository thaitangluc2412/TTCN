package dao;

import bean.Order;
import org.hibernate.type.IntegerType;
import utils.CrudUtils;

import java.util.List;

public class HibernateOrderDao extends AbstractHibernateDao implements OrderDao {

    private static final String Q_GET_ALL = "SELECT * FROM `Order`";
    private static final String Q_GET_ODER_BY_USERID = "SELECT * FROM `Order` WHERE UserID = :userid";

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
}
