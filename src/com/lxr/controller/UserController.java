package com.lxr.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxr.pojo.User;
import com.lxr.service.UserDao;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
public class UserController {
    @Autowired
    UserDao userDao;

    @Autowired
    HttpServletRequest request;

    @RequestMapping("/login.action")
    public String login(User user) {
        HttpSession session = request.getSession();
        User login = userDao.Login(user);
        if (login != null) {
            session.setAttribute("user", login);
            return "frame";
        } else {
            return "login";
        }
    }

    @RequestMapping("/loginPage.action")
    public String loginPage() {
        return "login";
    }

    @RequestMapping("/frame.action")
    public String frame() {
        return "frame";
    }

    @RequestMapping("/userList.action")
    public ModelAndView getUserList(User user,@RequestParam(required = false,defaultValue = "1",value = "page")int page) {
        ModelAndView mv = new ModelAndView();
        PageHelper.startPage(page,2);
        List<User> users = userDao.getUserList(user);
        PageInfo pageInfo = new PageInfo(users);
        mv.addObject("useraccount",user.getUseraccount());
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("userList");
        return mv;
    }

    @RequestMapping("/UserView.action")
    public String userView(Integer id, Model model) {
        User view = userDao.getUserByid(id);
        if (view != null) {
            model.addAttribute("user", view);
            return "userView";
        } else {
            return "userList";
        }
    }

    @RequestMapping("/userUpdateList.action")
    public String userUpdateList(Integer id, Model model) {
        User updateList = userDao.getUserByid(id);
        if (updateList != null) {
            model.addAttribute("user", updateList);
            return "userUpdate";
        } else {
            return "userView";
        }
    }

    @RequestMapping("/userUpdate.action")
    public ModelAndView userUpdate(User user, MultipartFile pictureFile) throws IOException {
        String fileName = UUID.randomUUID().toString().replaceAll("-","");
        String extension = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
        fileName = fileName + "." + extension;
        pictureFile.transferTo(new File("D:\\upload\\" + fileName));
        user.setHeadpath(fileName);
        int userUpdate = userDao.userUpdate(user);
        ModelAndView mv = new ModelAndView();
        mv.addObject("user",userUpdate);
        mv.setViewName("redirect:/userList.action");
        return mv;
    }

    @RequestMapping("/insertUser.action")
    public String insertUser(User user, MultipartFile pictureFile,Model model) throws IOException {
        String fileName = UUID.randomUUID().toString().replaceAll("-","");
        String extension = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
        fileName = fileName + "." + extension;
        pictureFile.transferTo(new File("D:\\upload\\" + fileName));
        user.setHeadpath(fileName);
        userDao.insertUser(user);
        return "redirect:/userList.action";
    }

    @RequestMapping("/delUser.action")
    public ModelAndView delUser(HttpServletRequest request, ModelAndView mv) {
        Integer del = Integer.valueOf(request.getParameter("id"));
        if(del != null){
            userDao.delUser(del);
        }
        mv.setViewName("redirect:/userList.action");
        return mv;
    }

    @RequestMapping("/modifyPasswordById.action")
    public String modifyPasswordById(User user, String newpassword) {

        return "redirect:/userList.action";
    }



}
