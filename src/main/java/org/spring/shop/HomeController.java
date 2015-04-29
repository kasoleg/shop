package org.spring.shop;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.spring.shop.entities.User;
import org.spring.shop.models.IUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	@Autowired
	private IUser user;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletResponse response, Model model) {
		UserDetails userDetails = null;
		try {
			userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String email = userDetails.getUsername();
			User user = this.user.getUserByEmail(email);
			Cookie cookie = new Cookie("cust_name", user.getName().toUpperCase());
			response.addCookie(cookie);
		} catch(Exception e) {
			
		}
		return "home";
	}
	
}
