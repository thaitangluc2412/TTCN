package service;

import persistence.Author;

import java.util.List;

public interface AuthorService {
    List<Author> getAll();

    Author get(String email, String password);
}
