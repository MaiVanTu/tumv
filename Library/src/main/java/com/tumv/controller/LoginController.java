package com.tumv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tumv.model.User;

@Controller
public class LoginController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginControllerGet() {
		return "Login";
	}

	@RequestMapping(value="/", method = RequestMethod.POST)
	public String loginControllerPost() {
		return "Home";
	}
}
