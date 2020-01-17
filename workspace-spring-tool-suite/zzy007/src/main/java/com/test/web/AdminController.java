package com.test.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.domain.Admin;
import com.test.service.AdminService;


@Controller
public class AdminController {
    @Autowired
    private AdminService adminservice;
	@RequestMapping("login_teacher")
	public String login_teacher(Admin ad) {
		Admin ad2 = adminservice.findByNameAndPassword(ad.getName(), ad.getPassword());
		if(ad2 != null) {
			return "redirect:read";
		}else {
			return "sorry";
		}
	}
}
