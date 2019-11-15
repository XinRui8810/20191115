package com.lxr.service;

import com.lxr.mapper.UserMapper;
import com.lxr.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserDaoImpl implements UserDao {
    @Autowired
    UserMapper userMapper;

    @Override
    public User Login(User user) {
        return userMapper.login(user);
    }

    @Override
    public List<User> getUserList(User user) {
        return userMapper.getUserList(user);
    }

    @Override
    public User getUserByid(Integer id) {
        return userMapper.userView(id);
    }

    @Override
    public User userUpdateList(Integer id) {
        return userMapper.userUpdateList(id);
    }

    @Override
    public Integer userUpdate(User user) {
        int result = userMapper.userUpdate(user);
        return result;
    }

    @Override
    public void insertUser(User user) {
        userMapper.insertUser(user);
    }

    @Override
    public void delUser(Integer id) {
        userMapper.delUser(id);
    }

    @Override
    public int modifyPasswordById(User user) {
        return userMapper.modifyPasswordById(user);
    }


}
