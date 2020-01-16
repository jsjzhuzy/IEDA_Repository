package com.test;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.test.mapper")
public class SpringBootMainClass {
    public static void main(String[] args){
        SpringApplication.run(SpringBootMainClass.class,args);
    }
}
