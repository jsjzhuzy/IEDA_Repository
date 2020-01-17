package com.test.mapper;

import org.apache.ibatis.annotations.Param;

import com.test.domain.Admin;

public interface AdminMapper {
    public Admin findByNameAndPassword(@Param("name")String name,@Param("password")String password);
}
