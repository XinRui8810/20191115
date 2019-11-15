package com.lxr.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxr.pojo.BookList;
import com.lxr.service.BookDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BorrowController {
    @Autowired
    BookDao bookDao;

    @RequestMapping("/borrowList.action")
    public String getBorrowList(BookList bookList,@RequestParam(required = false,defaultValue = "1",value = "page")int page, Model model) {
        PageHelper.startPage(page,2);
        List<BookList> booklist = bookDao.getBookList(bookList);
        PageInfo pageInfo = new PageInfo(booklist);
        model.addAttribute("bookname",bookList.getBookname());
        model.addAttribute("author",bookList.getAuthor());
        model.addAttribute("state",bookList.getState());
        model.addAttribute("pageInfo",pageInfo);
        return "bill2";
    }

    @RequestMapping("/borrowView.action")
    public String borrowView(Integer bookid, Model model) {
        BookList view = bookDao.getBookByid(bookid);
        if (view != null) {
            model.addAttribute("list", view);
            return "billView2";
        } else {
            return "bill2";
        }
    }

    @RequestMapping("/borrowUpdateList.action")
    public String borrowUpdateList(Integer bookid, Model model) {
        BookList updateList = bookDao.getBookByid(bookid);
        if (updateList != null) {
            model.addAttribute("list", updateList);
            return "billUpdate2";
        } else {
            return "billView2";
        }
    }

    @RequestMapping("/borrowUpdate.action")
    public ModelAndView borrowUpdate(BookList bookList){
        int borrowUpdate = bookDao.bookUpdate(bookList);
        ModelAndView mv = new ModelAndView();
        mv.addObject("list",borrowUpdate);
        mv.setViewName("redirect:/borrowList.action");
        return mv;
    }

}
