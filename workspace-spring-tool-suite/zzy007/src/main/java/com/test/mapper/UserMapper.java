package com.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.domain.User;

public interface UserMapper {
    //逐个查找
	public List<User> find();
	//按id查找
	public User findById(int id);
	//按id删除
	public void delById(int id);
	//按名称和密码查找
	public User findByNameAndPassword(@Param("name")String name,@Param("password")String password);
	//新增用户
	public void addUser(User uu);
	//修改成绩
	public void pwd(User uu);
	//修改密码
	public void change_pwd(User uu);
}
