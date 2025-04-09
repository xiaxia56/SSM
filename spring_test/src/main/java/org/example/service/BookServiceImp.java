package org.example.service;

import org.example.dao.BookDaomapper;
import org.example.model.Books;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImp implements BookService{

    private BookDaomapper bookDaoMapper;
    public void setBookDaoMapper(BookDaomapper bookDaomapper) {
        this.bookDaoMapper = bookDaomapper;
    }
    @Override
    public List<Books> selectBooks() {
        return bookDaoMapper.selectBooks();
    }

    @Override
    public void updateBooks(Books books) {
        bookDaoMapper.updateBooks(books);
    }

    @Override
    public void insertBooks(Books books) {
        bookDaoMapper.insertBooks(books);
    }

    @Override
    public void delectBooks(int id) {
        bookDaoMapper.delectBooks(id);
    }

    @Override
    public Books selectBooksId(int id) {
        return bookDaoMapper.selectBooksId(id);
    }


}
