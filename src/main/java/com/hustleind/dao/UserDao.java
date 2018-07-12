package com.hustleind.dao;

import com.hustleind.entity.User;

public interface UserDao {
    boolean addUser(User user);
    boolean updateUser(User newUser);
    boolean delUserById(int id);

}
