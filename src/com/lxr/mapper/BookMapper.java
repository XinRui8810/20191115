package com.lxr.mapper;

import com.lxr.pojo.BookList;

import java.util.List;

public interface BookMapper {
    public List<BookList> getBookList(BookList bookList);

    public BookList bookView(Integer bookid);

    public BookList bookUpdateList(Integer bookid);

    public Integer bookUpdate(BookList bookList);

    public void insertBook(BookList bookList);

    public void delBook(Integer bookid);
}
