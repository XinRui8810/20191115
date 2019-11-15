package com.lxr.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxr.pojo.BookList;
import com.lxr.service.BookDao;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class BookController {
    @Autowired
    BookDao bookDao;
    @Autowired
    HttpServletRequest request;

    @RequestMapping("/bookList.action")
    public String getUserList(BookList bookList,@RequestParam(required = false,defaultValue = "1",value = "page")int page, Model model) {
        PageHelper.startPage(page,2);
        List<BookList> booklist = bookDao.getBookList(bookList);
        PageInfo pageInfo = new PageInfo(booklist);
        model.addAttribute("pageInfo",pageInfo);
        return "billList";
    }

    @RequestMapping("/bookView.action")
    public String bookView(Integer bookid, Model model) {
        BookList view = bookDao.getBookByid(bookid);
        if (view != null) {
            model.addAttribute("list", view);
            return "billView";
        } else {
            return "billList";
        }
    }

    @RequestMapping("/bookUpdateList.action")
    public String bookUpdateList(Integer bookid, Model model) {
        BookList updateList = bookDao.getBookByid(bookid);
        if (updateList != null) {
            model.addAttribute("list", updateList);
            return "billUpdate";
        } else {
            return "billView";
        }
    }

    @RequestMapping("/bookUpdate.action")
    public ModelAndView bookUpdate(BookList bookList){
        int bookUpdate = bookDao.bookUpdate(bookList);
        ModelAndView mv = new ModelAndView();
        mv.addObject("list",bookUpdate);
        mv.setViewName("redirect:/bookList.action");
        return mv;
    }

    @RequestMapping("/insertBook.action")
    public String insertUser(BookList bookList){
        bookDao.insertBook(bookList);
        return "redirect:/bookList.action";
    }

    @RequestMapping("/delBook.action")
    public ModelAndView delBook(HttpServletRequest request, ModelAndView mv) {
        Integer del = Integer.valueOf(request.getParameter("bookid"));
        if(del != null){
            bookDao.delBook(del);
        }
        mv.setViewName("redirect:/bookList.action");
        return mv;
    }

}
