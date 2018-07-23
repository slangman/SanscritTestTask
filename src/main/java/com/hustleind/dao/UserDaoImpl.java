package com.hustleind.dao;

import com.hustleind.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
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
    public User getUserById(int id) {
        if (id < 0) {
            return null;
        }
        Session session = factory.getCurrentSession();
        return session.get(User.class, id);
    }

    @Override
    public User getUserByLogin(String login) {
        if (login == null || login.isEmpty()) {
            return null;
        }
        Session session = factory.getCurrentSession();
        return (User) session.createQuery("FROM User u where u.login = :login").
                setParameter("login", login).
                uniqueResult();
    }

    @Override
    public boolean addUser(User user) {
        if (user == null) {
            return false;
        }
        Session session = factory.getCurrentSession();
        session.save(user);
        return true;
    }

    @Override
    public boolean updateUser(User user) {
        if (user == null) {
            return false;
        }
        Session session = factory.getCurrentSession();
        session.update(user);
        return true;
    }

    @Override
    public boolean delUserById(int id) {
        if (id < 0) {
            return false;
        }
        Session session = factory.getCurrentSession();
        User user = getUserById(id);
        session.delete(user);
        return true;
    }
}
