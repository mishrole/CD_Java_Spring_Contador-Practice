package com.codingdojo.counter.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class CounterController {
	
	@RequestMapping("/")
	public String index(HttpSession session) {

		if (session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}
		
		Integer currentCount = (Integer) session.getAttribute("count");
		session.setAttribute("count", currentCount + 1);
		
		return "index";
	}
	
	@RequestMapping("/counter")
	public String showCount(HttpSession session, Model model) {
		
		if (session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}
		
		Integer currentCount = (Integer) session.getAttribute("count");
		model.addAttribute("countToShow", currentCount);
		
		return "show";
	}
	
	@RequestMapping("/count2")
	public String showCount2(HttpSession session) {

		if (session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}
		
		Integer currentCount = (Integer) session.getAttribute("count");
		session.setAttribute("count", currentCount + 2);

		return "count2";
	}
	
	@RequestMapping("/reset")
	public RedirectView reset(HttpSession session) {
		session.setAttribute("count", 0);
		return new RedirectView("counter");
	}
	
}
