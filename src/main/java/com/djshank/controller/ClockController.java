package com.djshank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.djshank.model.Exercise;

@Controller
public class ClockController {
	@RequestMapping(value="/addMinutes")
	public String addMinutes(@ModelAttribute ("exercise")Exercise exercise){
		
		System.out.println("Exercise : "+exercise.getMinutes());
		return "addMinutes";
	}
}
