package service;

import bean.User;
import dao.HibernateUserDao;
import dao.UserDao;

import java.util.List;

public class UserServiceImpl implements UserService {

    private final UserDao userDao;

    public UserServiceImpl() {
        userDao = new HibernateUserDao();
    }

    @Override
    public List<User> getAll() {
        return userDao.getAll();
    }

    @Override
    public User getUser(String email, String password) {
        return userDao.getUser(email, password);
    }
}