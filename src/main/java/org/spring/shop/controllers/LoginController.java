package org.spring.shop.controllers;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.spring.shop.entities.Product;
import org.spring.shop.entities.Role;
import org.spring.shop.entities.User;
import org.spring.shop.models.IAdmin;
import org.spring.shop.models.IUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@Autowired
	private IUser user;
	@RequestMapping(value="/login")
	public ModelAndView login(HttpServletResponse response, @RequestParam(value="error", required = false) String error) {
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid email or password. Please try again.");
		}
	    model.addObject("user", new User());
		model.setViewName("login");
		
		return model;
	}
	
	@RequestMapping(value="/addUser")
	public String registerUserAccount(@Valid User user, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("categories", user);
			return "login";
		}
		this.user.addUser(user);
		return "home";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletResponse response) {
		Cookie cookie = new Cookie("cust_name", null);
        cookie.setMaxAge(0);
        response.addCookie(cookie);
		return "home";
	}
}
