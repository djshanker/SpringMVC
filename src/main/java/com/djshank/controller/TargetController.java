package com.djshank.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.djshank.model.Target;

@Controller
@SessionAttributes("target")
public class TargetController {
	@RequestMapping(value="addTarget", method=RequestMethod.GET)
	public String addTarget(Model model){
		Target target = new Target();
		target.setMinutes(20);
		//System.out.println("");
		model.addAttribute("target", target);
		return "addTarget";
	}
	
	
	
	
	@RequestMapping(value="addTarget", method=RequestMethod.POST)
	public String updateTarget(@Valid @ModelAttribute("target") Target target, BindingResult result){
		
		System.out.println("Result has errors : "+result.hasErrors());
		System.out.println("Updated Minutes : "+target.getMinutes());
		//model.addAttribute("target", new Target());
		if(result.hasErrors()){
			return "addTarget";
		}
		
		return "redirect:addMinutes.html";
	}

}
