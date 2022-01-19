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
}
