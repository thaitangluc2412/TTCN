package service;

import bean.OrderDetail;
import bean.OrderDetail.Id;
import bean.OrderDetail.ReviewStatus;
import bean.OrderDetailDto;
import dao.HibernateOrderDetailDao;
import dao.OrderDetailDao;
import utils.QueryUtils;

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

    @Override
    public List<OrderDetailDto> getOrderDetailDtoByBookId(int bookId) {
        return orderdetailDao.getOrderDetailDtoByBookId(bookId);
    }

    @Override
    public OrderDetail getById(Id id) {
        return orderdetailDao.getById(id);
    }

    @Override
    public boolean updateStatus(OrderDetail orderDetail, ReviewStatus reviewStatus) {
        orderDetail.setReviewStatus(reviewStatus);
        return QueryUtils.update(orderDetail);
    }
}
