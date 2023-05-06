package com.spring.web.dao;

import com.spring.web.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface UserDAO {
    public void add(User user);

    public List<User> getAllUsers();

    public void delete(long id);

    public User findUser(long id);

    public void update(User user);

}
