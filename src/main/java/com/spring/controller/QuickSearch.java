package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class QuickSearch {

	
	@RequestMapping("/home")
	public String home() {
		System.out.println("opening home page....");
		return "search";
	}
	@RequestMapping("/search")
	public RedirectView search(@RequestParam("Query")String query) {
		RedirectView rv=new RedirectView();
		if(query.isEmpty()) {
			rv.setUrl("redirect:/search");
			return rv;
		}
		rv.setUrl("https://www.google.com/search?q="+query);
		return rv;
	}
}
