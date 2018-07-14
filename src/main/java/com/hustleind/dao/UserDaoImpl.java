package com.hustleind.dao;

import com.hustleind.entity.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

    private SessionFactory factory;

    @Autowired
    public UserDaoImpl(SessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public boolean addUser(User user) {
        return false;
    }

    @Override
    public boolean updateUser(User newUser) {
        return false;
    }

    @Override
    public boolean delUserById(int id) {
        return false;
    }
}
