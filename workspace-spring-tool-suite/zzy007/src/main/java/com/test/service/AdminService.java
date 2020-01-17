package com.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.domain.Admin;
import com.test.mapper.AdminMapper;
@Service
public class AdminService implements AdminMapper{
    @Autowired
    private AdminMapper adminmapper;
	@Override
	public Admin findByNameAndPassword(String name,String password) {
		Admin ad = adminmapper.findByNameAndPassword(name,password);
		return ad;
	}

}
