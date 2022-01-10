package service;

import bean.OrderDetail;
import dao.HibernateOrderDetailDao;
import dao.OrderDetailDao;

import java.util.Hashtable;
import java.util.List;

public class OrderDetailServiceImpl implements OrderDetailService{

    private final OrderDetailDao orderdetailDao;

    public OrderDetailServiceImpl() {
    	orderdetailDao = new HibernateOrderDetailDao();
    }

   

    @Override
    public int getQuantity(int id) {
        return orderdetailDao.getQuantity(id);
    }



	@Override
	public List<OrderDetail> getSum() {
		// TODO Auto-generated method stub
		return orderdetailDao.getSum();
	}
}
