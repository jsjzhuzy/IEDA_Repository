package com.test.domain;

public class User {
	//信息
    private int id;
    private String name;
    private String password;
    private double grade;
    //信息
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}
    
    @Override
    public String toString() {
    	return "id="+id+",name="+name+",password="+password+",grade="+grade;
    }
}
