package dao;

import bean.User;

import java.util.List;

public interface UserDao {
    List<User> getAll();

    User getUser(String email, String password);

    int getQuantityUser();

    int getQuantityAuthor();
}
