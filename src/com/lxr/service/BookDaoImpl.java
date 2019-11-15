package com.lxr.service;

import com.lxr.mapper.BookMapper;
import com.lxr.pojo.BookList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Service
public class BookDaoImpl implements BookDao {
    @Autowired
    BookMapper bookMapper;

    @Override
    public List<BookList> getBookList(BookList bookList) {
        return bookMapper.getBookList(bookList);
    }

    @Override
    public BookList getBookByid(Integer bookid) {
        return bookMapper.bookView(bookid);
    }

    @Override
    public BookList bookUpdateList(Integer bookid) {
        return bookMapper.bookUpdateList(bookid);
    }

    @Override
    public Integer bookUpdate(BookList bookList) {
        int result = bookMapper.bookUpdate(bookList);
        return result;
    }

    @Override
    public void insertBook(BookList bookList) {
        bookMapper.insertBook(bookList);
    }

    @Override
    public void delBook(Integer bookid) {
        bookMapper.delBook(bookid);
    }
}
