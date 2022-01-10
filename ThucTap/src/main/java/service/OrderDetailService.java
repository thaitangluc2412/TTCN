package service;

import bean.OrderDetail;

import java.util.Hashtable;
import java.util.List;

public interface OrderDetailService {
	List<OrderDetail> getSum();

    int getQuantity(int id);
 
}
