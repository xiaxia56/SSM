package org.example.dao;

import org.example.model.Books;

import java.util.List;

public interface BookDaomapper {
    List<Books> selectBooks();
    void updateBooks(Books books);
    void insertBooks(Books books);
    void delectBooks(int id);
    Books selectBooksId(int id);
}
