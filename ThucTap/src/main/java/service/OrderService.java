package service;

import bean.Order;

import java.util.List;

public interface OrderService {
	List<Order> getAll();

	List<Order> getOrder(int userId);

	Order getOrderByOrderId(int orderId);

	boolean save(Order order);

	int updateStatus(int orderId, String status);

	List<Order> getByNameCurrentPage(int trimStart, int rows, String name);

	List<Order> getByName(String name);

	List<Order> getOrderCurrentPage(int trimStart, int rows);

	List<Order> getByStatus(String status);

	List<Order> getByStatusCurrentPage(int trimStart, int rows, String status);

	List<Order> getByNameStatusCurrentPage(int trimStart, int rows, String status, String name);

	List<Order> getByNameStatus(String status, String name);

	List<Order> getByNameCurrenPageWithCustomerId(int trimStart, int rows, String Name, int customerId);

	List<Order> getByNameWithCustomerId(String name, int customerId);

	List<Order> getOrderCurrentPageWithCustomerId(int trimStart, int rows, int customerId);

	List<Order> getByStatusWithCustomerId(String status, int customerId);

	List<Order> getByStatusCurrentPageWithCustomerId(int trimStart, int rows, String status, int customerId);

	List<Order> getByNameStatusCurrentPageWithCustomerId(int trimStart, int rows, String status, String name,
			int customerId);

	List<Order> getByNameStatusWithCustomerId(String status, String name, int customerId);
	
	List<Order> getByDate(String vector);

	List<Order> getByDateCurrentPage(String vector, int trimStart, int rows);
}
