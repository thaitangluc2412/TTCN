package service;

import bean.Order;

import java.util.List;

public interface OrderService {
    List<Order> getAll();

    List<Order> getOrder(int userId);
}
