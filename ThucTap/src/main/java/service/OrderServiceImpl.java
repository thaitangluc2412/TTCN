package service;

import bean.Order;
import dao.HibernateOrderDao;
import dao.OrderDao;

import java.util.List;

public class OrderServiceImpl implements OrderService {

	private final OrderDao orderDao;

	public OrderServiceImpl() {
		orderDao = new HibernateOrderDao();
	}

	@Override
	public List<Order> getAll() {
		return orderDao.getAll();
	}

	@Override
	public List<Order> getOrder(int userId) {
		return orderDao.getOrder(userId);
	}

	@Override
	public boolean save(Order order) {
		return orderDao.save(order);
	}

	@Override
	public int updateStatus(int orderId, String status) {
		return orderDao.updateStatus(orderId, status);
	}

	@Override
	public Order getOrderByOrderId(int orderId) {
		return orderDao.getOrderByOrderId(orderId);
	}

	@Override
	public List<Order> getByNameCurrentPage(int trimStart, int rows, String name) {
		return orderDao.getByNameCurrentPage(trimStart, rows, name);
	}

	@Override
	public List<Order> getByName(String name) {
		return orderDao.getByName(name);
	}

	@Override
	public List<Order> getOrderCurrentPage(int trimStart, int rows) {
		return orderDao.getOrderCurrentPage(trimStart, rows);
	}
	
	@Override
	public List<Order> getByStatus(String status) {
		return orderDao.getByStatus(status);
	}
	
	@Override
	public List<Order> getByStatusCurrentPage(int trimStart, int rows, String status) {
		return orderDao.getByStatusCurrentPage(trimStart, rows, status);
	}
	
	@Override
	public List<Order> getByNameStatusCurrentPage(int trimStart, int rows, String status, String name) {
		return orderDao.getByNameStatusCurrentPage(trimStart, rows, status, name);
	}
	
	@Override
	public List<Order> getByNameStatus(String status, String name) {
		return orderDao.getByNameStatus(status, name);
	}

	@Override
	public List<Order> getByNameCurrenPageWithCustomerId(int trimStart, int rows, String Name, int customerId) {
		return orderDao.getByNameCurrenPageWithCustomerId(trimStart, rows, Name, customerId);
	}

	@Override
	public List<Order> getByNameWithCustomerId(String name, int customerId) {
		// TODO Auto-generated method stub
		return orderDao.getByNameWithCustomerId(name, customerId);
	}

	@Override
	public List<Order> getOrderCurrentPageWithCustomerId(int trimStart, int rows, int customerId) {
		// TODO Auto-generated method stub
		return orderDao.getOrderCurrentPageWithCustomerId(trimStart, rows, customerId);
	}

	@Override
	public List<Order> getByStatusWithCustomerId(String status, int customerId) {
		// TODO Auto-generated method stub
		return orderDao.getByStatusWithCustomerId(status, customerId);
	}

	@Override
	public List<Order> getByStatusCurrentPageWithCustomerId(int trimStart, int rows, String status, int customerId) {
		// TODO Auto-generated method stub
		return orderDao.getByStatusCurrentPageWithCustomerId(trimStart, rows, status, customerId);
	}

	@Override
	public List<Order> getByNameStatusCurrentPageWithCustomerId(int trimStart, int rows, String status, String name,
			int customerId) {
		// TODO Auto-generated method stub
		return orderDao.getByNameStatusCurrentPageWithCustomerId(trimStart, rows, status, name, customerId);
	}

	@Override
	public List<Order> getByNameStatusWithCustomerId(String status, String name, int customerId) {
		// TODO Auto-generated method stub
		return orderDao.getByNameStatusCurrentPageWithCustomerId(customerId, customerId, status, name, customerId);
	}

	@Override
	public List<Order> getByDate(String vector) {
		return orderDao.getByDate(vector);
	}

	@Override
	public List<Order> getByDateCurrentPage(String vector, int trimStart, int rows) {
		return orderDao.getByDateCurrentPage(vector, trimStart, rows);	
	}
}
