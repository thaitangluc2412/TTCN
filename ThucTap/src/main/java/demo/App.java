package demo;

import bean.Book;
import bean.Order;
import bean.Order.Status;
import bean.OrderDetail;
import bean.OrderDetail.Id;
import service.*;

import java.time.LocalDateTime;
import java.util.Collection;

public class App {

    private static UserService userService = new UserServiceImpl();
    private static BookService bookService = new BookServiceImpl();
    private static CategoryService categoryService = new CategoryServiceImpl();
    private static OrderService orderService = new OrderServiceImpl();
    private static ReviewService reviewService = new ReviewServiceImpl();
    private static BookUserService bookUserservice = new BookUserServiceImpl();
    private static OrderDetailService orderDetailService = new OrderDetailServiceImpl();

    public static void main(String[] args) {
        Order order = new Order();
        order.setUser(userService.getProfile(2));
        order.setOrderDate(LocalDateTime.now());
        order.setTotalPrice(123d);
        order.setStatus(Status.Processing);
        order.setShippingAddress("123");
        order.setRecipientName("123");
        order.setRecipientPhone("421");
        orderService.save(order);

        Book book = bookService.getById(1);

        Id id = new Id(order.getOrderId(), book.getBookId());
        OrderDetail orderDetail = new OrderDetail();
        orderDetail.setId(id);
        orderDetail.setOrder(order);
        orderDetail.setBook(book);
        orderDetail.setQuantity(2);
        orderDetailService.save(orderDetail);
    }

    private static <Element> void print(Collection<Element> elements) {
        elements.forEach(System.out::println);
    }
}
