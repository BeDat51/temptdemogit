package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;
@Controller
@RequestMapping("param")
public class ParamController {
	@Autowired
	HttpServletRequest request;
	@RequestMapping("form")
	public String form() { 
		return "bai2";
	}
	@RequestMapping("save/{x}")
	public String save(@PathVariable("x") String x, @RequestParam("y") String y) { 
		request.setAttribute("x", x); 
		request.setAttribute("y", y);
	return "bai2";
	}
}
