package dao;

import bean.User;

import java.util.List;

public interface UserDao {
    List<User> getAll();
    
    List<User> getAuthor();

    User getUser(String email, String password);

    int getQuantityUser();

    int getQuantityAuthor();
}
