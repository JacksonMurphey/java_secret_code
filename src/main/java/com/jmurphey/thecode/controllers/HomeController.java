package com.jmurphey.thecode.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/")
public class HomeController {

	@GetMapping("")
	public String index() {
		return "dash.jsp";
	}
	
	@PostMapping("/check")
	public String check(@RequestParam(value="code") String code, HttpSession session, 
			RedirectAttributes redirectAttributes) {
//		Didn't need this. 
//		answer = "codemaster";
//		session.setAttribute("codemaster", answer);
//		session.setAttribute("code", code);
	
		if(code.equals("codemaster")){
			return "redirect:/code";
		} else { redirectAttributes.addFlashAttribute("message", "You must try harder to enter!");
			return "redirect:/"; }
		

	}
	@GetMapping("/code")
	public String code() {
		
		return "code.jsp";
	}
}
