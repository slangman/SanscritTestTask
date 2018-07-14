package com.hustleind.dao;

import com.hustleind.entity.User;

public interface UserDao {
    User getUserById(int id);
    boolean addUser(User user);
    boolean updateUser(User newUser);
    boolean delUserById(int id);

}
