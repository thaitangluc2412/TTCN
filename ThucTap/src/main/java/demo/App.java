package demo;

import service.*;


import java.util.Collection;
import java.util.List;

import bean.Book;
import bean.BookDto;
import bean.CategoryDto;

import bean.User;
import service.BookService;
import service.BookServiceImpl;
import service.ReviewServiceImpl;
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
