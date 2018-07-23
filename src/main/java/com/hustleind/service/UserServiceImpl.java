package com.hustleind.service;

import com.hustleind.dao.UserDao;
import com.hustleind.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.MultiValueMap;

@Service("userServiceImpl")
@Transactional
public class UserServiceImpl implements UserService {
    private UserDao userDao;

    @Autowired
    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }


    @Override
    public User getActiveUser() {
        org.springframework.security.core.userdetails.User activeUser =
                (org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return getUserByLogin(activeUser.getUsername());
    }

    @Override
    public User getUserById(int id) {
        return userDao.getUserById(id);
    }

    @Override
    public User getUserByLogin(String login) {
        return userDao.getUserByLogin(login);
    }

    @Override
    public boolean checkUserExists(String login) {
        if (login == null || login.isEmpty()) {
            return false;
        }
        return (userDao.getUserByLogin(login) != null);
    }

    @Override
    public boolean addUserByParams(MultiValueMap<String, String> incParam) {
        if (incParam == null || incParam.isEmpty()) {
            return false;
        }
        User user = new User();
        user.setLogin(incParam.get("login").get(0));
        user.setPasswordHash(CryptService.encrypt(incParam.get("password").get(0)));
        user.setFName(incParam.get("fName").get(0));
        user.setLName(incParam.get("lName").get(0));
        return userDao.addUser(user);
    }


}
