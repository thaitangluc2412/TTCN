package service;

import bean.Order;
import dao.HibernateOrderDao;
import dao.OrderDao;

import java.util.List;

public class OrderServiceImpl implements OrderService{

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
}