package com.rentcheckgo.dao;

import java.util.List;

import com.rentcheckgo.model.Task;
import com.rentcheckgo.model.User;

public interface TaskDAO {
	public void postTask(Task task);
	
	public List<Task> listTasks();
	
	public void deleteTask(int taskId);
	
	public void deleteTask(Task task);

	Task getTaskById(int id);
	
}
