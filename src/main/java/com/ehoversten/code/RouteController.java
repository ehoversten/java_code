package com.ehoversten.code;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class RouteController {

	@GetMapping("/")
	public String home() {
		return "index";
	}

	@GetMapping("/secret")
	public String secret() {
		return "secret";
	}

	@PostMapping(value="/process")
		public String process(@RequestParam(value="keyword") String code, RedirectAttributes redirectAttributes) {
			//TODO: process POST request
			System.out.println(code);
			
			if(code.equals("bushido")) {
				return "redirect:/secret";
			} else {
				redirectAttributes.addFlashAttribute("error", "You must traing harder!");
				return "redirect:/";
			}
		}

}
