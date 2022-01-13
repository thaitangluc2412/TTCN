package dao;

import persistence.Author;

import java.util.List;

public interface AuthorDao {
    List<Author> getAll();

    Author get(String email, String password);
}
