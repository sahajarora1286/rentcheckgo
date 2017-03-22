package com.rentcheckgo.dao;

import java.util.List;

import org.hibernate.Query;
import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;

import com.rentcheckgo.model.Task;
import com.rentcheckgo.model.User;

public class TaskDAOImpl implements TaskDAO{
	
	@Autowired
    private SessionFactory sessionFactory;
	
	public TaskDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

	@Override
	@Transactional
	public void postTask(Task task) {
		sessionFactory.getCurrentSession().save("Task",	 task);
	}

	@Override
	@Transactional
	public List<Task> listTasks() {
		 @SuppressWarnings("unchecked")
		List<Task> listTasks = (List<Task>) sessionFactory.getCurrentSession()
                .createCriteria(Task.class).addOrder(Order.desc("id"))
                .list();
        return listTasks;
	
	}

	@Override
	public void deleteTask(int taskId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteTask(Task task) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
    @Transactional
    public Task getTaskById(int id) {
        String hql = "from Task where task_id=" + id;
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
         
        @SuppressWarnings("unchecked")
        List<Task> listTask = (List<Task>) query.list();
         
        if (listTask != null && !listTask.isEmpty()) {
            return listTask.get(0);
        }
         
        return null;
    }
	
}
