package dao;

import persistence.Customer;

import java.util.List;

public class HibernateCustomerDao extends AbstractHibernateDao implements CustomerDao {
    private static final String Q_GET_ALL = "SELECT * FROM customer";
    private static final String Q_GET_CUSTOMER = "SELECT * FROM customer\n" +
                                                 "WHERE Email = :email AND Password = :password";

    @Override
    public List<Customer> getAll() {
        return openSession().createNativeQuery(Q_GET_ALL, Customer.class).getResultList();
    }

    @Override
    public Customer get(String email, String password) {
        return openSession().createNativeQuery(Q_GET_CUSTOMER, Customer.class)
                            .setParameter("email", email)
                            .setParameter("password", password)
                            .uniqueResult();
    }
}
