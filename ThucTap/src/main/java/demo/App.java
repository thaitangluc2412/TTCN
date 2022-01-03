package demo;

import java.util.Collection;
import java.util.List;

import bean.Book;
import bean.CategoryDto;
import service.BookService;
import service.BookServiceImpl;
import service.CategoryService;
import service.CategoryServiceImpl;
import service.OrderService;
import service.OrderServiceImpl;
import service.ReviewService;
import service.ReviewServiceImpl;
import service.UserService;
import service.UserServiceImpl;


public class App {

    private static UserService userService = new UserServiceImpl();
    private static BookService bookService = new BookServiceImpl();
    private static CategoryService categoryService = new CategoryServiceImpl();
    private static OrderService orderService = new OrderServiceImpl();
    private static ReviewService reviewService = new ReviewServiceImpl();
    
 

    public static void main(String[] args) {
        List<CategoryDto> listCategoryById = categoryService.getCategoryById();
        print(listCategoryById);
        System.out.println("=================================");
        List<Book> twoBookSeller = bookService.get2BookSeller();
        print(twoBookSeller);
    }

    private static <Element> void print(Collection<Element> elements) {
        elements.forEach(System.out::println);
    }

}
