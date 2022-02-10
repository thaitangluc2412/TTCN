package demo;

import bean.Book;
import bean.OrderDetail;
import bean.OrderDetail.Id;
import bean.OrderDetail.ReviewStatus;
import service.*;

import java.time.LocalDate;
import java.util.Collection;

public class App {

    private static UserService userService = new UserServiceImpl();
    private static BookService bookService = new BookServiceImpl();
    private static CategoryService categoryService = new CategoryServiceImpl();
    private static OrderService orderService = new OrderServiceImpl();
    private static ReviewService reviewService = new ReviewServiceImpl();
    private static BookUserService bookUserservice = new BookUserServiceImpl();
    private static OrderDetailService orderDetailService = new OrderDetailServiceImpl();
    
    private static LocalDate startDate = LocalDate.of(2022, 1, 1);
    private static LocalDate endDate = LocalDate.of(2023, 1, 1);

    public static void main(String[] args) {
       int i = userService.addtAuthor("thaitangluc22", "1234", "TEST THU", "asdasd 123123 ", "0123456789", "05749874");
       System.out.println(i);
    }

    private static <Element> void print(Collection<Element> elements) {
        elements.forEach(System.out::println);
    }
}
