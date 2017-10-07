package com.shopping.service.imp;

import com.shopping.exception.AccountException;
import com.shopping.mapper.AccountMapper;
import com.shopping.mapper.BusinessMapper;
import com.shopping.po.Account;
import com.shopping.po.AccountExample;
import com.shopping.po.Business;
import com.shopping.service.AccountService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class AccountServiceImp implements AccountService {

    @Autowired
    AccountMapper accountMapper;

    @Autowired
    BusinessMapper businessMapper;

    public void consume(int from,int to,double money) throws AccountException {
        AccountExample aeFrom = new AccountExample();
        aeFrom.or().andUserIdEqualTo(from);
        Account fromAccount = accountMapper.selectByExample(aeFrom).get(0);

        AccountExample aeTo = new AccountExample();
        aeTo.or().andUserIdEqualTo(to);
        Account toAccount = accountMapper.selectByExample(aeTo).get(0);

        if(money<0)
            throw new AccountException("金额必须大于零");
        if(money>fromAccount.getBalance())
            throw new AccountException("余额不足");

        fromAccount.setBalance(fromAccount.getBalance()-money);
        toAccount.setBalance(toAccount.getBalance()+money);
        accountMapper.updateByPrimaryKey(fromAccount);
        accountMapper.updateByPrimaryKey(toAccount);

        Business business = new Business();
        business.setUserId(fromAccount.getUserId());
        business.setType("消费");
        business.setDirection("用户id"+toAccount.getUserId()+"收款");
        business.setDate(new Date());
        business.setBalance(money);
        businessMapper.insert(business);
    }

    public void draw(int userid,double money) throws AccountException {
        AccountExample accountExample = new AccountExample();
        accountExample.or().andUserIdEqualTo(userid);
        Account account = accountMapper.selectByExample(accountExample).get(0);

        if(money<=0)
            throw new AccountException("金额必须大于零");
        if(money>account.getBalance())
            throw new AccountException("余额不足");

        account.setBalance(account.getBalance()-money);
        accountMapper.updateByPrimaryKey(account);
        Business business = new Business();
        business.setUserId(account.getUserId());
        business.setDate(new Date());
        business.setBalance(money);
        business.setType("取现");
        business.setDirection("取现");
        businessMapper.insert(business);
    }

    public void deposit(int userid,double money) throws AccountException {
        AccountExample accountExample = new AccountExample();
        accountExample.or().andUserIdEqualTo(userid);
        Account account = accountMapper.selectByExample(accountExample).get(0);

        if (money<=0)
            throw new AccountException("金额必须大于零");

        account.setBalance(account.getBalance()+money);
        accountMapper.updateByPrimaryKey(account);
        Business business = new Business();
        business.setUserId(account.getUserId());
        business.setDate(new Date());
        business.setBalance(money);
        business.setType("充值");
        business.setDirection("充值");
        businessMapper.insert(business);
    }

    @Override
    public Account getBalance(Integer userId) {
        AccountExample accountExample = new AccountExample();
        accountExample.or().andUserIdEqualTo(userId);
        Account account = accountMapper.selectByExample(accountExample).get(0);
        return account;
    }


}
