package demo;

import java.util.List;

import bean.User;
import service.BookService;
import service.BookServiceImpl;
import service.UserServiceImpl;

public class App {
	private static BookService itemService = new BookServiceImpl();
	
	
	public static void main(String[] args) {
		UserServiceImpl user = new UserServiceImpl();
		List<User> list = user.getAll();
		for(User u : list) {
			System.out.println(u);
		}
	}
}
