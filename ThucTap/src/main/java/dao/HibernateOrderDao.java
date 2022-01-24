package dao;

import bean.Order;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;

import utils.QueryUtils;

import java.util.List;

public class HibernateOrderDao extends AbstractHibernateDao implements OrderDao {

	private static final String Q_GET_ALL = "SELECT * FROM `Order`";
	private static final String Q_GET_ODER_BY_USERID = "SELECT * FROM `Order` WHERE UserID = :userid";
	private static final String Q_GET_ODER_BY_ORDERID = "SELECT * FROM `Order` WHERE OrderID = :orderid";

	private static final String Q_UPDATE_STATUS = "UPDATE bookstore.`order` SET status = :status\n"
			+ "WHERE orderId = :orderId";

	private static final String Q_GET_NAME_CURRENT_PAGE = "SELECT `order`.* FROM `order`\n"
			+ "JOIN User ON `order`.UserId = User.UserId\n" + "WHERE User.Name LIKE :name LIMIT :trimStart, :rows";

	private static final String Q_GET_BY_NAME = "SELECT `order`.* FROM `order`\n"
			+ "JOIN User ON `order`.UserId = User.UserId\n" + "WHERE User.Name LIKE :name";

	private static final String Q_GET_ORDER_OF_CURRENT_PAGE = "SELECT * FROM `order` LIMIT :trimStart , :rows";

	private static final String Q_GET_BY_STATUS = "SELECT * FROM `order` WHERE status = :status";

	private static final String Q_GET_STATUS_CURRENT_PAGE = "SELECT `order`.* FROM `order`\n"
			+ "WHERE Status = :status LIMIT :trimStart, :rows";

	private static final String Q_GET_NAME_STATUS_CURRENT_PAGE = "SELECT `order`.* FROM `order`\n"
			+ "JOIN User ON `order`.UserId = User.UserId\n"
			+ "WHERE User.Name LIKE :name AND Status = :status LIMIT :trimStart, :rows";

	private static final String Q_GET_BY_NAME_STATUS = "SELECT `order`.* FROM `order`\n"
			+ "JOIN User ON `order`.UserId = User.UserId\n" + "WHERE User.Name LIKE :name AND Status = :status";

	private static final String Q_GET_NAME_CURRENT_PAGE_WITH_CUSTOMER_ID = "SELECT `order`.* FROM `order`\n"
			+ "JOIN User ON `order`.UserId = User.UserId\n" + "WHERE User.Name LIKE :name AND `order`.UserId = :customerId LIMIT :trimStart, :rows";

	private static final String Q_GET_BY_NAME_WITH_CUSTOMER_ID = "SELECT `order`.* FROM `order`\n"
			+ "JOIN User ON `order`.UserId = User.UserId\n" + "WHERE User.Name LIKE :name  AND `order`.UserId = :customerId";

	private static final String Q_GET_ORDER_OF_CURRENT_PAGE_WITH_CUSTOMER_ID = "SELECT * FROM `order` WHERE UserId = :customerId LIMIT :trimStart , :rows";

	private static final String Q_GET_BY_STATUS_WITH_CUSTOMER_ID = "SELECT * FROM `order` WHERE status = :status  AND UserId = :customerId";

	private static final String Q_GET_STATUS_CURRENT_PAGE_WITH_CUSTOMER_ID = "SELECT `order`.* FROM `order`\n"
			+ "WHERE Status = :status  AND UserId = :customerId LIMIT :trimStart, :rows";

	private static final String Q_GET_NAME_STATUS_CURRENT_PAGE_WITH_CUSTOMER_ID = "SELECT `order`.* FROM `order`\n"
			+ "JOIN User ON `order`.UserId = User.UserId\n"
			+ "WHERE User.Name LIKE :name AND Status = :status  AND `order`.UserId = :customerId LIMIT :trimStart, :rows";

	private static final String Q_GET_BY_NAME_STATUS_WITH_CUSTOMER_ID = "SELECT `order`.* FROM `order`\n"
			+ "JOIN User ON `order`.UserId = User.UserId\n" + "WHERE User.Name LIKE :name AND Status = :status  AND `order`.UserId = :customerId";
	
	private static final String Q_GET_BY_DATE = "SELECT * FROM `order` ORDER BY `OrderDate` :vector";
	private static final String Q_GET_BY_DATE_CURRENT_PAGE = "SELECT * FROM `order` ORDER BY `OrderDate` :vector LIMIT :trimStart, :rows";

	@Override
	public List<Order> getAll() {
		return openSession().createNativeQuery(Q_GET_ALL, Order.class).getResultList();
	}

	@Override
	public List<Order> getOrder(int userId) {
		return openSession().createNativeQuery(Q_GET_ODER_BY_USERID, Order.class)
				.setParameter("userid", userId, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public Order getOrderByOrderId(int orderId) {
		return openSession().createNativeQuery(Q_GET_ODER_BY_ORDERID, Order.class)
				.setParameter("orderid", orderId, IntegerType.INSTANCE).uniqueResult();
	}

	@Override
	public boolean save(Order order) {
		return QueryUtils.save(order);
	}

	@Override
	public int updateStatus(int orderId, String status) {
		Session session = getCurrentSession();
		Transaction transaction = session.beginTransaction();
		int query;
		query = session.createNativeQuery(Q_UPDATE_STATUS, Order.class).setParameter(Order.ORDER_STATUS, status)
				.setParameter(Order.ORDER_ORDER_ID, orderId).executeUpdate();
		transaction.commit();
		return query;
	}

	@Override
	public List<Order> getByNameCurrentPage(int trimStart, int rows, String name) {
		return openSession().createNativeQuery(Q_GET_NAME_CURRENT_PAGE, Order.class)
				.setParameter("name", "%" + name + "%", StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Order> getByName(String name) {
		return openSession().createNativeQuery(Q_GET_BY_NAME, Order.class)
				.setParameter("name", "%" + name + "%", StringType.INSTANCE).getResultList();
	}

	@Override
	public List<Order> getOrderCurrentPage(int trimStart, int rows) {
		return openSession().createNativeQuery(Q_GET_ORDER_OF_CURRENT_PAGE, Order.class)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Order> getByStatus(String status) {
		return openSession().createNativeQuery(Q_GET_BY_STATUS, Order.class).setParameter("status", status)
				.getResultList();
	}

	@Override
	public List<Order> getByStatusCurrentPage(int trimStart, int rows, String status) {
		return openSession().createNativeQuery(Q_GET_STATUS_CURRENT_PAGE, Order.class)
				.setParameter("status", status, StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Order> getByNameStatusCurrentPage(int trimStart, int rows, String status, String name) {
		return openSession().createNativeQuery(Q_GET_NAME_STATUS_CURRENT_PAGE, Order.class)
				.setParameter("status", status, StringType.INSTANCE)
				.setParameter("name", "%" + name + "%", StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Order> getByNameStatus(String status, String name) {
		return openSession().createNativeQuery(Q_GET_BY_NAME_STATUS, Order.class)
				.setParameter("status", status, StringType.INSTANCE)
				.setParameter("name", "%" + name + "%", StringType.INSTANCE).getResultList();
	}

	@Override
	public List<Order> getByNameCurrenPageWithCustomerId(int trimStart, int rows, String name, int customerId) {
		return openSession().createNativeQuery(Q_GET_NAME_CURRENT_PAGE_WITH_CUSTOMER_ID, Order.class)
				.setParameter("name", "%" + name + "%", StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE)
				.setParameter("customerId", customerId, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Order> getByNameWithCustomerId(String name, int customerId) {
		return openSession().createNativeQuery(Q_GET_BY_NAME_WITH_CUSTOMER_ID, Order.class)
				.setParameter("name", "%" + name + "%", StringType.INSTANCE)
				.setParameter("customerId", customerId, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Order> getOrderCurrentPageWithCustomerId(int trimStart, int rows, int customerId) {
		return openSession().createNativeQuery(Q_GET_ORDER_OF_CURRENT_PAGE_WITH_CUSTOMER_ID, Order.class)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE)
				.setParameter("customerId", customerId, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Order> getByStatusWithCustomerId(String status, int customerId) {
		return openSession().createNativeQuery(Q_GET_BY_STATUS_WITH_CUSTOMER_ID, Order.class).setParameter("status", status)
				.setParameter("customerId", customerId, IntegerType.INSTANCE)
				.getResultList();
	}

	@Override
	public List<Order> getByStatusCurrentPageWithCustomerId(int trimStart, int rows, String status, int customerId) {
		return openSession().createNativeQuery(Q_GET_STATUS_CURRENT_PAGE_WITH_CUSTOMER_ID, Order.class)
				.setParameter("status", status, StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE)
				.setParameter("customerId", customerId, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Order> getByNameStatusCurrentPageWithCustomerId(int trimStart, int rows, String status, String name,
			int customerId) {
		return openSession().createNativeQuery(Q_GET_NAME_STATUS_CURRENT_PAGE_WITH_CUSTOMER_ID, Order.class)
				.setParameter("status", status, StringType.INSTANCE)
				.setParameter("name", "%" + name + "%", StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE)
				.setParameter("customerId", customerId, IntegerType.INSTANCE).getResultList();
	}

	@Override
	public List<Order> getByNameStatusWithCustomerId(String status, String name, int customerId) {
		return openSession().createNativeQuery(Q_GET_BY_NAME_STATUS_WITH_CUSTOMER_ID, Order.class)
				.setParameter("status", status, StringType.INSTANCE)
				.setParameter("name", "%" + name + "%", StringType.INSTANCE)
				.setParameter("customerId", customerId, IntegerType.INSTANCE).getResultList();
	}
	
	@Override
	public List<Order> getByDate(String vector) {
		return openSession().createNativeQuery(Q_GET_BY_DATE, Order.class)
				.setParameter("vector", vector, StringType.INSTANCE).getResultList();
	}
	
	@Override
	public List<Order> getByDateCurrentPage(String vector,int trimStart, int rows) {
		return openSession().createNativeQuery(Q_GET_BY_DATE_CURRENT_PAGE, Order.class)
				.setParameter("vector", vector, StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
	}
}
