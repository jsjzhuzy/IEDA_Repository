package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.domain.User;
import com.test.mapper.UserMapper;
@Service
@Transactional
public class UserService implements UserMapper{
    @Autowired
    private UserMapper usermapper;
	@Override
	public List<User> find() {
		List<User> list = usermapper.find();
		return list;
	}

	@Override
	public User findById(int id) {
		User uu = usermapper.findById(id);
		return uu;
	}

	@Override
	public void delById(int id) {
		usermapper.delById(id);
	}

	@Override
	public User findByNameAndPassword(String name, String password) {
		User uu = usermapper.findByNameAndPassword(name, password);
		return uu;
	}

	@Override
	public void addUser(User uu) {
		usermapper.addUser(uu);
	}

	@Override
	public void pwd(User uu) {
		usermapper.pwd(uu);
	}

	@Override
	public void change_pwd(User uu) {
		usermapper.change_pwd(uu);
	}

}
