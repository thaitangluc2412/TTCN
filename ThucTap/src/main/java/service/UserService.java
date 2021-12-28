package service;

import bean.User;

import java.util.List;

public interface UserService {
    List<User> getAll();

    User getUser(String email, String password);
}
