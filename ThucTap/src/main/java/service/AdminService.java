package service;

import persistence.Admin;

import java.util.List;

public interface AdminService {
    List<Admin> getAll();

    Admin get(String account, String password);
}
