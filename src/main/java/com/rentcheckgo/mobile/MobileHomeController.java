package com.rentcheckgo.mobile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rentcheckgo.app.HomeController;
import com.rentcheckgo.dao.UserDAO;
import com.rentcheckgo.model.User;

@Controller
public class MobileHomeController {

	@Autowired
	private UserDAO userDao;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/mobile/login", method = RequestMethod.GET)
	
	public @ResponseBody String loginUser(@RequestParam (value = "email", required = true)
	String email, @RequestParam (value = "password", required = true)
	String password) {

		System.out.println("User email is: " + email);
		JSONObject jsonObj = new JSONObject();
		User user = userDao.login(email, password);
		if (user != null){
			System.out.println("User logged in and user id is: " + user.getId());
			jsonObj.put("email", email);
			jsonObj.put("password", password);
			jsonObj.put("id", user.getId());
			jsonObj.put("firstName", user.getFirstName());
			jsonObj.put("lastName", user.getLastName());
			jsonObj.put("success", "true");
	
			return jsonObj.toString();

		} else {
			jsonObj.put("success", "false");
			return jsonObj.toString();
		}

	}
	
}
