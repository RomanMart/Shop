package com.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.entity.Phone;
import com.service.CustomerSRV;
import com.service.PhoneSRV;

@Controller
public class MainController {
	@Autowired
	private CustomerSRV customerService;
	@Autowired
	private PhoneSRV phoneService;

	List<Phone> pList = new ArrayList<Phone>();

	@Autowired
	public MainController(CustomerSRV customerService, PhoneSRV phoneService) {
		this.customerService = customerService;
		this.phoneService = phoneService;
	}

	@RequestMapping("/")
	public String main(Model model) {
		model.addAttribute("message", "message");
		return "base";
	}

	@RequestMapping("/login")
	public String login2() {
		return "page";
	}

	@RequestMapping("/sign")
	public String SignIn() {

		return "SignIn";

	}

	@RequestMapping(value = "addUser", method = RequestMethod.POST)
	public String addUser(@RequestParam String username, @RequestParam String password) {
		customerService.save(username, password);
		return "base";
	}

	@RequestMapping("addPhone")
	public String addUser() {
		return "AddPhone";
	}

	@RequestMapping(value = "createPhone", method = RequestMethod.POST)
	public String createPhone(@RequestParam String brand, String type, double price, @RequestParam MultipartFile file,
			Model model) {
		Phone phone = new Phone();
		phone.setBrand(brand);
		phone.setType(type);
		phone.setPrice(price);
		try {
			phone.setFile(file.getBytes());
		} catch (IOException e) {

			phone.setFile(new byte[1]);
		}
		phoneService.save(phone);
		model.addAttribute("showAllPhones", phoneService.findAll());
		return "Phones";
	}

	@RequestMapping("showAllPhones")
	public String showAllPhones(Model model) {
		model.addAttribute("showAllPhones", phoneService.findAll());
		return "Phones";
	}

	@RequestMapping("showAllPhonesB")
	public String showAllPhonesB(Model model) {
		model.addAttribute("showAllPhonesB", phoneService.findAll());
		return "PhoneBase";
	}

	@RequestMapping(value = "RemovePhone", method = RequestMethod.POST)
	public String remove(Model model, @RequestParam Integer id) {
		Phone phone = phoneService.findOne(id);
		phoneService.remove(phone);
		return "redirect:/showAllPhones";
	}

	@RequestMapping("filter")
	public String filter(Model model, @RequestParam Double price) {
		model.addAttribute("filter", phoneService.findByPrice(price));
		return "filter";
	}

	@RequestMapping("findByBrand")
	public String findByBrand(Model model, @RequestParam String brand) {
		model.addAttribute("findByBrand", phoneService.findByBrand(brand));
		return "Find";
	}

	@RequestMapping(value = "RemovePhoneById", method = RequestMethod.POST)
	public String removeId(Model model, @RequestParam int id) {
		phoneService.remove(id);
		return "redirect:/showAllPhones";
	}

	@RequestMapping(value = "phoneNumber-{id}", method = RequestMethod.GET)
	public String singlePhone(@PathVariable("id") int id, Model model) {

		model.addAttribute("phone", phoneService.findOne(Integer.valueOf(id)));

		return "singlePhone";

	}

}
