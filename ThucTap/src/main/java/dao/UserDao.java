package dao;

import bean.User;

import java.util.List;

public interface UserDao {
    List<User> getAll();
    
    List<User> getAuthor();
    
    List<User> getCustomer();

    User getUser(String email, String password);

    int getQuantityUser();

    int getQuantityAuthor();
}
