package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("ctrl")
public class OKcontroller {
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping("oke")
	public String ok() {
	return "bai1";
	}
	@PostMapping("oke")
	public String m1() {
	request.setAttribute("message", "Đây là OKE 1!");
	return "bai1";
	}
	@GetMapping("oke")
	public String m2() {
	request.setAttribute("message", "Đây là OKE 2!");
	return "bai1";
	}
	@RequestMapping(value = "oke", params = "x")
	public String m3(@RequestParam("x") String x) {
	request.setAttribute("message", "Oke thầy cho em " + x +" điểm!");
	return "bai1";
	}
}
