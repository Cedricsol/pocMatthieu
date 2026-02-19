package com.poc.spring;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {
    private final List<Book> books = new ArrayList<>();
    
    @Override
    public Collection<Book> getBooks() {
        return books;
    }

    @Override
    public Book addBook(Book book) {
        books.add(book);
        return book;
    }
}