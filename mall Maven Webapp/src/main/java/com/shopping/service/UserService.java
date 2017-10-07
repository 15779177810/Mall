package com.shopping.service;

import com.shopping.po.User;
import com.shopping.po.UserExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UserService {


    User login(User user);
    
    User register(User user);
    
    User modify(User user, Integer id);
}