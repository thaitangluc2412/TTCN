package service;

import dao.AuthorDao;
import dao.HibernateAuthorDao;
import persistence.Author;

import java.util.List;

public class AuthorServiceImpl implements AuthorService {
    private final AuthorDao authorDao;

    public AuthorServiceImpl() {
        authorDao = new HibernateAuthorDao();
    }

    @Override
    public List<Author> getAll() {
        return authorDao.getAll();
    }

    @Override
    public Author get(String email, String password) {
        return authorDao.get(email, password);
    }
}
