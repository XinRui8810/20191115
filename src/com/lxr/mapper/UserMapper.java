package com.lxr.mapper;

import com.lxr.pojo.User;

import java.util.List;

public interface UserMapper {
    public User login(User user);

    public List<User> getUserList(User user);

    public User userView(Integer id);

    public User userUpdateList(Integer id);

    public Integer userUpdate(User user);

    public void insertUser(User user);

    public void delUser(Integer id);

    public int modifyPasswordById(User user);

}
