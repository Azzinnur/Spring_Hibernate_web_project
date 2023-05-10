package com.spring.web.dao;

import com.spring.web.model.User;

import org.springframework.stereotype.Repository;

import javax.persistence.*;

import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void add(User user) {
        entityManager.persist(user);
    }

    @Override
    public List<User> getAllUsers() {
        Query query = entityManager.createQuery("Select u FROM User u");
        return query.getResultList();
    }
    @Override
    public User findUser(long id) {
        return entityManager.find(User.class, id);
    }

    @Override
    public void delete(long id) {
        User user = entityManager.find(User.class, id);
        entityManager.remove(user);
    }

    @Override
    public void update(User user) {
        entityManager.merge(user);
    }
}
