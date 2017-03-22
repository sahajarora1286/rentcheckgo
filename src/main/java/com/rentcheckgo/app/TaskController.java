package com.rentcheckgo.app;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rentcheckgo.dao.TaskDAO;
import com.rentcheckgo.dao.UserDAO;
import com.rentcheckgo.model.Task;
import com.rentcheckgo.model.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class TaskController {

	@Autowired
	private TaskDAO taskDao;

	@Autowired
	private UserDAO userDao;

	private static final Logger logger = LoggerFactory.getLogger(TaskController.class);

	@RequestMapping(value = "/postTask", method = RequestMethod.POST)
	public String postTask(ModelMap modelMap, HttpServletRequest request, HttpSession session) {

		Task task = new Task();
		String unit = (String) request.getParameter("unit");
		String streetAddress = (String) request.getParameter("streetAddress");
		String city = (String) request.getParameter("city");
		String province = (String) request.getParameter("province");
		String postalCode = (String) request.getParameter("postalCode");
		String preferredTime = (String) request.getParameter("preferredTime");
		String note = (String) request.getParameter("note");
		int minBudget = Integer.parseInt(request.getParameter("minBudget"));
		int maxBudget = Integer.parseInt(request.getParameter("maxBudget"));
		int posterId = (Integer) session.getAttribute("userId");
		System.out.println("Session attribute poster id is: " + posterId);
		User user = userDao.get(posterId);

		task.setUnit(unit);
		task.setStreetAddress(streetAddress);
		task.setCity(city);
		task.setProvince(province);
		task.setPostalCode(postalCode);
		task.setPreferredTime(preferredTime);
		task.setNote(note);
		task.setMinBudget(minBudget);
		task.setMaxBudget(maxBudget);

		task.setPoster(user);
		taskDao.postTask(task);

		return "afterPostTask";

	}

	@RequestMapping(value = "/browseTasks", method = RequestMethod.GET)
	public String getTasks(ModelMap modelMap, HttpServletRequest request, HttpSession session) {

		if (session.getAttribute("userId") == null){
			return "home";
		} else {
			List<Task> taskList = new ArrayList<Task>();

			taskList = taskDao.listTasks();

			modelMap.put("taskList", taskList);

			return "browseTasks";
		}

	}
	
	@RequestMapping(value = "/viewTask", method = RequestMethod.GET)
	public String viewTask(ModelMap modelMap, HttpServletRequest request, HttpSession session) {

		if (session.getAttribute("userId") == null){
			return "home";
		} else {
			int id = Integer.parseInt(request.getParameter("id"));
			
			
			Task task = taskDao.getTaskById(id);
			if (task!=null){
				modelMap.put("task", task);
			}
			

			return "taskView";
		}

	}




}