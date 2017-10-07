package com.shopping.service;

import com.shopping.exception.AccountException;
import com.shopping.po.Account;
import com.shopping.po.AccountExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface AccountService {

    void consume(int from,int to,double money) throws AccountException;

    void draw(int userid, double money) throws AccountException;

    void deposit(int userid,double money) throws AccountException;

    Account getBalance(Integer userId);
}