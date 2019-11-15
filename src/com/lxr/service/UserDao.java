package com.lxr.service;

import com.lxr.pojo.User;

import java.sql.SQLException;
import java.util.List;

public interface UserDao {
    public User Login(User user);

    public List<User> getUserList(User user);

    public User getUserByid(Integer id);

    public User userUpdateList(Integer id);

    public Integer userUpdate(User user);

    public void insertUser(User user);

    public void delUser(Integer id);

    public int modifyPasswordById(User user);

}
