package dao;

import bean.Order;

import java.util.List;

public interface OrderDao {
    List<Order> getAll();

    List<Order> getOrder(int userId);
}