package service;

import dao.AdminDao;
import dao.HibernateAdminDao;
import persistence.Admin;

import java.util.List;

public class AdminServiceImpl implements AdminService {
    private final AdminDao adminDao;

    public AdminServiceImpl() {
        adminDao = new HibernateAdminDao();
    }

    @Override
    public List<Admin> getAll() {
        return adminDao.getAll();
    }

    @Override
    public Admin get(String account, String password) {
        return adminDao.get(account, password);
    }
}
