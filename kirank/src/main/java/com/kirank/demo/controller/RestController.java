package com.kirank.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kirank.demo.service.UserService;
import com.kirank.demo.user.User;

public class RestController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String hello() {
		return "This is Home page";
	}
	
	@GetMapping("/saveuser")
	public String saveuser(@RequestParam String id,@RequestParam String name,@RequestParam String language,@RequestParam String framework) {
		User user = new User(id,name,language,framework);
		userService.saveMyUser(user);
		return "User Saved";
	}
}
