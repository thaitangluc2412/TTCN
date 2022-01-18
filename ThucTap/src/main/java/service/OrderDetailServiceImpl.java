package service;

import bean.OrderDetail;
import dao.HibernateOrderDetailDao;
import dao.OrderDetailDao;

import java.util.List;

public class OrderDetailServiceImpl implements OrderDetailService {

    private final OrderDetailDao orderdetailDao;

    public OrderDetailServiceImpl() {
        orderdetailDao = new HibernateOrderDetailDao();
    }

    @Override
    public List<OrderDetail> getSum() {
        return orderdetailDao.getSum();
    }

    @Override
    public int getQuantity(int id) {
        return orderdetailDao.getQuantity(id);
    }

    @Override
    public boolean save(OrderDetail orderDetail) {
        return orderdetailDao.save(orderDetail);
    }
}
