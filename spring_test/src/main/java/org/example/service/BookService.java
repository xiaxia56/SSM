package org.example.service;

import org.example.model.Books;

import java.util.List;

public interface BookService {
    List<Books> selectBooks();
    void updateBooks(Books books);
    void insertBooks(Books books);
    void delectBooks(int id);
    Books selectBooksId(int id);
}
