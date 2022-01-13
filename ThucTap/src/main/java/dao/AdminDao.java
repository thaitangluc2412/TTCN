package dao;

import persistence.Admin;

import java.util.List;

public interface AdminDao {
    List<Admin> getAll();

    Admin get(String account, String password);
}
