package dao;

import persistence.Admin;

import java.util.List;

public class HibernateAdminDao extends AbstractHibernateDao implements AdminDao {

    private static final String Q_GET_ALL = "SELECT * FROM admin";
    private static final String Q_GET_ADMIN = "SELECT * FROM admin\n" +
                                              "WHERE Account = :account AND Password = :password";

    @Override
    public List<Admin> getAll() {
        return openSession().createNativeQuery(Q_GET_ALL, Admin.class).getResultList();
    }

    @Override
    public Admin get(String account, String password) {
        return openSession().createNativeQuery(Q_GET_ADMIN, Admin.class)
                            .setParameter("account", account)
                            .setParameter("password", password)
                            .uniqueResult();
    }
}
