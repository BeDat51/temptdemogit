package com.example.demo.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.Product2;

@Controller
@RequestMapping("product")
public class ProductController2 {

    @GetMapping("form4")
    public String form(Model model) {
        Product2 pr = new Product2();
        pr.setName("iPhone 15");
        pr.setPrice(20000.0);
        pr.setImageUrl("https://cdn-v2.didongviet.vn/files/products/2023/8/29/1/1695953279709_thumb_iphone_15_didongviet.jpg"); 
        model.addAttribute("product", pr);
        return "bai4";
    }

    @PostMapping("save4")
    public String save(@ModelAttribute("product2") Product2 pr) {

        return "bai4";
    }

    @ModelAttribute("productList")
    public List<Product2> getItems() {
        return Arrays.asList(
            new Product2("Iphone", 1500.0, "https://cdn-v2.didongviet.vn/files/products/2023/8/29/1/1695953279709_thumb_iphone_15_didongviet.jpg"),
            new Product2("Iphone", 1500.0, "https://cdn-v2.didongviet.vn/files/products/2023/8/29/1/1695953279709_thumb_iphone_15_didongviet.jpg")
        );
    }
}

