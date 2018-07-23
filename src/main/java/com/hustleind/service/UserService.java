package com.hustleind.service;

import com.hustleind.entity.User;
import org.springframework.util.MultiValueMap;

public interface UserService {
    User getActiveUser();
    User getUserById(int id);
    User getUserByLogin(String login);
    boolean checkUserExists(String login);
    boolean addUserByParams(MultiValueMap<String, String> incParam);
}
