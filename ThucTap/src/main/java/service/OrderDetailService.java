package service;

import bean.OrderDetail;

import java.util.List;

public interface OrderDetailService {
	List<OrderDetail> getSum();

    int getQuantity(int id);

    boolean save(OrderDetail orderDetail);
}
