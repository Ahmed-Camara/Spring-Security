package com.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/leaders")
	public String leadersResources() {
		
		return "leaders";
	}
	
	@GetMapping("/systems")
	public String systemsResources() {
		
		return "systems";
	}
}
