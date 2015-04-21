package org.spring.shop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping(value="/loginregister")
	public String login() {
		return "loginregister";
	}
}
