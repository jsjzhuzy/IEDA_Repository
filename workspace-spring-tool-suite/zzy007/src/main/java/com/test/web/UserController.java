package com.test.web;

import com.test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.test.domain.User;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userservice;
    //进入主界面
    @RequestMapping("")
    public String hello()
    {
        System.out.println("======================");
        System.out.println("======================");
        System.out.println("======================");
        return "login_1";
    }

    //学生登陆
    @RequestMapping("login_stu")
    public String login_teacher(User uu){
        User uu2 = userservice.findByNameAndPassword(uu.getName(),uu.getPassword());
        if(uu2 != null){
            int idd=uu2.getId();
            return "redirect:read_grade?id="+idd;
        }else{
            return "sorry";
        }
    }
    //登陆成功后的读取
    @RequestMapping("read")
    public String read(HttpServletRequest request){
        List<User> list = userservice.find();
        request.setAttribute("listt",list);
        return "success";
    }
    //打印学生成绩
    @RequestMapping("read_grade")
    public String read_grade(int id,HttpServletRequest request){
        User uu = userservice.findById(id);
        request.setAttribute("stuu",uu);
        return "success_1";
    }
    //删除
    @RequestMapping("del")
    public String del(int id){
        userservice.delById(id);
        return "redirect:read";
    }
    //根据id修改
    @RequestMapping("edit")
    public String edit(int id,HttpServletRequest request){
        User stu1 = userservice.findById(id);
        request.setAttribute("stu",stu1);
        System.out.println("===========================");
        System.out.println(stu1.getName());
        System.out.println("===========================");
        return "edit_web";
    }
    //修改分数
    @RequestMapping("change")
    public String change(User uu) {
    	userservice.pwd(uu);
    	return "redirect:read";
    }
    //根据id修改2
    @RequestMapping("edit_2")
    public String edit_2(int id,HttpServletRequest request) {
    	User uu = userservice.findById(id);
    	request.setAttribute("uuu", uu);
    	return "edit_web_2";
    }
    //修改密码
    @RequestMapping("change_2")
    public String change_2(User uu,String oldpwd,String newpwd) {
    	if(oldpwd.equals(uu.getPassword())) {
    		uu.setPassword(newpwd);
    		userservice.change_pwd(uu);
    		return "redirect:read";
    	}else {
    		return "sorry";
    	}
    }
    //增加
    @RequestMapping("add")
    public String add_1(User uu) {
    	userservice.addUser(uu);
    	return "redirect:read";
    }
}
