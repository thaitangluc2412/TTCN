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
}
