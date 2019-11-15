package com.lxr.service;

import com.lxr.pojo.BookList;

import java.sql.SQLException;
import java.util.List;

public interface BookDao {
    public List<BookList> getBookList(BookList bookList);

    public BookList getBookByid(Integer bookid);

    public BookList bookUpdateList(Integer bookid);

    public Integer bookUpdate(BookList bookList);

    public void insertBook(BookList bookList);

    public void delBook(Integer bookid);
}
