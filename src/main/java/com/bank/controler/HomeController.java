package com.bank.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bank.model.Account;
import com.bank.service.Service;

@Controller
public class HomeController {
	@Autowired
	public Service service;

	@RequestMapping("/")
	public String onStart() {
		return "views/index.jsp";

	}

	@RequestMapping("/new")
	public String OpenAc() {

		return "views/new.jsp";
	}

	@RequestMapping("/success")
	public String Open(@ModelAttribute Account details) {

		service.openAc(details);
		return "views/index.jsp";
	}

	@RequestMapping("/login")
	public String login(@RequestParam String email, @RequestParam String pass, Model model) {
		String ac = service.chekAc(email, pass);
		if (ac != null) {
			model.addAttribute("email", email);
			return "views/profile.jsp";
		}
		return "views/index.jsp";

	}

	@RequestMapping("/show")
	public String showData(@RequestParam String email, Model model) {
		Account ac = service.showData(email);
//		System.out.println(ac.getAc());
		model.addAttribute("ac", ac);
		return "views/show.jsp";
	}

	@RequestMapping("/balance")
	public String showBalance(@RequestParam String email, Model model) {

		int balance = service.showBalance(email);
		model.addAttribute("balance", balance);
		return "views/balance.jsp";
	}

	@RequestMapping("/credit")
	public String credit(@RequestParam String email, @RequestParam int ammount, Model model) {
		int balance = service.credit(email, ammount);
		model.addAttribute("balance", balance);
		return "views/balance.jsp";
	}

	@RequestMapping("/debit")
	public String debit(@RequestParam String email, @RequestParam int ammount, Model model) {
		int balance = service.debit(email, ammount);
		if (balance >= 0) {
			model.addAttribute("balance", balance);
			return "views/balance.jsp";
		} else {
			return "views/profile.jsp";
		}
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam String email) {
		service.delete(email);
		return "views/index.jsp";
	}

}
