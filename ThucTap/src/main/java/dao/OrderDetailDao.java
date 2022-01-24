package dao;

import bean.OrderDetail;
import bean.OrderDetail.Id;
import bean.OrderDetail.ReviewStatus;
import bean.OrderDetailDto;

import java.util.List;

public interface OrderDetailDao {

    List<OrderDetail> getSum();

    int getQuantity(int id);

    boolean save(OrderDetail orderDetail);

    List<OrderDetailDto> getOrderDetailDtoByBookId(int bookId);

    OrderDetail getById(Id id);

}
