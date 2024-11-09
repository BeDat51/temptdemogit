package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.Product;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	HttpServletRequest request;

	@GetMapping("form")
	public String form(Model model) {
		model.addAttribute("product", new Product());
		return "bai3";
	}

	@PostMapping("save")
	public String save(Product pr) {
		request.setAttribute("product", pr);
		return "bai3";
	}
}
