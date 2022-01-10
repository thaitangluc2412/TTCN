package dao;

import java.util.List;

import bean.OrderDetail;

public interface OrderDetailDao {

	List<OrderDetail> getSum();

	int getQuantity(int id);
    
}
