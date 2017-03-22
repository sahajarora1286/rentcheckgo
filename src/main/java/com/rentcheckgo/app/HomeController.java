package com.rentcheckgo.app;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rentcheckgo.dao.UserDAO;
import com.rentcheckgo.model.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private UserDAO userDao;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {

		List<User> listUsers = userDao.list();
		ModelAndView model = new ModelAndView("home");
		model.addObject("userList", listUsers);
		return model;
	}

	@RequestMapping(value = "/navPostTask", method = RequestMethod.GET)
	public ModelAndView postAd(HttpSession session) {
		if (isUserLoggedIn(session)){
			ModelAndView model = new ModelAndView("postTask");
			return model;
		} else {
			return new ModelAndView("redirect:/");
		}
	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String goToDashboard(HttpSession session) {

		if (session.getAttribute("firstName")!=null){

			return "afterLogin";
		}


		return "home";
	}

	private boolean isUserLoggedIn(HttpSession session){
		if (session.getAttribute("firstName")!=null){
			return true;
		}

		else return false;
	}


	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public ModelAndView newUser() {
		ModelAndView model = new ModelAndView("UserForm");
		model.addObject("user", new User());
		return model;      
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView editUser(HttpServletRequest request) {
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = userDao.get(userId);
		ModelAndView model = new ModelAndView("UserForm");
		model.addObject("user", user);
		return model;      
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpServletRequest request) {
		int userId = Integer.parseInt(request.getParameter("id"));
		userDao.delete(userId);
		return new ModelAndView("redirect:/");     
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveUser(ModelMap modelMap, HttpServletRequest request, HttpSession session) {
		System.out.println("User email is: " + (String)request.getParameter("registerEmail"));

		User user = new User();

		if (((String)request.getParameter("registerPassword")).equals((String)request.getParameter("confirmRegisterPassword"))){
			user.setFirstName((String)request.getParameter("firstName"));
			user.setLastName((String)request.getParameter("lastName"));
			user.setPassword((String)request.getParameter("registerPassword"));
			user.setEmail((String)request.getParameter("registerEmail"));
			userDao.saveOrUpdate(user);
			session.setAttribute("firstName",((String)request.getParameter("firstName")));
			session.setAttribute("userId", user.getId());
			return "afterLogin";
		} else {
			System.out.println("Passwords do not match.");
			modelMap.put("errorMessage", "Passwords do not match.");
			return "home";
		}


	}  

	/*
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginUser(HttpServletRequest request, HttpSession session, ModelMap modelMap) {
    	System.out.println("Session attribute is: " + session.getAttribute("firstName"));

    	System.out.println("User email is: " + (String)request.getParameter("loginEmail"));
    	String email = (String) request.getParameter("loginEmail");
    	String password = (String) request.getParameter("loginPassword");

    	User user = userDao.login(email, password);
    	if (user != null){
    		System.out.println("User logged in and user id is: " + user.getId());
    		session.setAttribute("firstName", user.getFirstName());
    		return "afterLogin";

    	} else {
    		modelMap.put("errorMessage", "E-mail or Password combination does not match. Please try again.");
    		return "home";
    	}

    }  
	 */

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginUser(HttpServletRequest request, HttpSession session, ModelMap modelMap) {
		System.out.println("Session attribute is: " + session.getAttribute("firstName"));

		System.out.println("User email is: " + (String)request.getParameter("loginEmail"));
		String email = (String) request.getParameter("loginEmail");
		String password = (String) request.getParameter("loginPassword");

		User user = userDao.login(email, password);
		if (user != null){
			System.out.println("User logged in and user id is: " + user.getId());
			session.setAttribute("firstName", user.getFirstName());
			session.setAttribute("userId", user.getId());
			System.out.println("Set session attribute user id as: " + user.getId());
			goToDashboard(session);
			return "afterLogin";

		} else {
			modelMap.put("errorMessage", "E-mail or Password combination does not match. Please try again.");
			return "home";
		}

	}

	@RequestMapping(value = "/getTime", method = RequestMethod.GET)	
	public String getTime(@RequestParam (value = "mobile", required = false)
	String isMobile, HttpSession session) {
		if (isMobile!=null){
			if (isMobile.equals("true")){
				Date date = new Date();
				String time = date.toString();
				JSONObject jsonObj = new JSONObject();
				try {
					jsonObj.put("time", time);
					return jsonObj.toString();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "couldn't return json";
			} 
		}else return "postTask";
		return "redirect:/";

	}



	@RequestMapping(value = "/logout", method = RequestMethod.GET)	
	public String logoutUser(HttpSession session) {
		session.removeAttribute("firstName");
		return "redirect:/";
	}

}
