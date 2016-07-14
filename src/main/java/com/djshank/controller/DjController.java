package com.djshank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DjController {
	@RequestMapping(value="/djhello")
	public String sayHelloDJ(Model model){
		model.addAttribute("djhello", "Hello DJ");
		return "hello";
	}
}
