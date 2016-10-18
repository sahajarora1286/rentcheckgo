package com.rentcheckgo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.rentcheckgo.model.User;
 
public class UserDAOImpl implements UserDAO {
	@Autowired
    private SessionFactory sessionFactory;
	
	public UserDAOImpl() {
        
    }
 
    public UserDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
 
    @Override
    @Transactional
    public List<User> list() {
        @SuppressWarnings("unchecked")
        
        /*
        List<User> listUser = new ArrayList<User>();
        
        String sql = "select u from User u";
        
        Session session = sessionFactory.getCurrentSession();
        
        Query query = session.createQuery(sql);
        
        listUser = query.list();
        
        
        */
        
        List<User> listUser = (List<User>) sessionFactory.getCurrentSession()
                .createCriteria(User.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
        return listUser;
        
    }
    
    @Override
    @Transactional
    public void saveOrUpdate(User user) {
    	sessionFactory.getCurrentSession().save("User",	 user);
        //sessionFactory.getCurrentSession().saveOrUpdate(user);
    }
 
    @Override
    @Transactional
    public void delete(int id) {
        User userToDelete = new User();
        userToDelete.setId(id);
        sessionFactory.getCurrentSession().delete(userToDelete);
    }
 
    @Override
    @Transactional
    public User get(int id) {
        String hql = "from User where id=" + id;
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
         
        @SuppressWarnings("unchecked")
        List<User> listUser = (List<User>) query.list();
         
        if (listUser != null && !listUser.isEmpty()) {
            return listUser.get(0);
        }
         
        return null;
    }
    
    @Override
    @Transactional
    public User login(String email, String password){
    	String hql = "from User where email= :email and password= :password";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setString("email", email); 
        query.setString("password", password); 
        @SuppressWarnings("unchecked")
        List<User> listUser = (List<User>) query.list();
         
        if (listUser != null && !listUser.isEmpty()) {
            return listUser.get(0);
        } else return null;
         
    }
 
}