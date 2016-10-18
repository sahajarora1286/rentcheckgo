package com.rentcheckgo.dao;

import java.util.List;

import com.rentcheckgo.model.User;


public interface UserDAO {
    public List<User> list();
    
    public User get(int id);
    
    public void saveOrUpdate(User user);
     
    public void delete(int id);
    
    public User login(String email, String password);
}