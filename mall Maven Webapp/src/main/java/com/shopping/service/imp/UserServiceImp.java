package com.shopping.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.mapper.AccountMapper;
import com.shopping.mapper.UserMapper;
import com.shopping.po.Account;
import com.shopping.po.User;
import com.shopping.po.UserExample;
import com.shopping.service.UserService;

@Service
public class UserServiceImp implements UserService {

	@Autowired
	UserMapper userMapper;
	@Autowired
	AccountMapper accountMapper;
	
	@Override
	public User login(User user){

		UserExample userExample = new UserExample();
		//用用户参数构建sql查询
		userExample.createCriteria().andUsernameEqualTo(user.getUsername())
				.andPasswordEqualTo(user.getPassword());

		//查询表中是否存在对应数据的用户
		int count = userMapper.countByExample(userExample);
		if(0==count)
			return null;
		else {
			List<User> users = userMapper.selectByExample(userExample);
			return users.get(0);
		}

	}

	@Override
	public User register(User user) {

		List<User> users = null;
		Account account = null;
		Integer auid =null;
		
		//将对应数据的用户插入表中
		userMapper.insert(user);
		
		//用用户参数构建sql查询
		UserExample userExample = new UserExample();
		userExample.createCriteria().andUsernameEqualTo(user.getUsername())
			.andPasswordEqualTo(user.getPassword());
		
		//查询表中是否存在对应数据的用户
		int c = userMapper.countByExample(userExample);
		if ( 0 == c) {
			return null;
		}else {
			//获取刚刚存入的用户的id，并设置给account表中的uid
			users = userMapper.selectByExample(userExample);
			auid = users.get(0).getUserId();
			account = new Account(auid, 0.0);
			accountMapper.insert(account);
			
			return users.get(0);
		}
	}
	

	@Override
	public User modify(User user, Integer id) {
				
		//用用户参数构建sql查询
		UserExample userExample = new UserExample();
		userExample.createCriteria().andUserIdEqualTo(id);
		
		//更新用户
		userMapper.updateByExampleSelective(user, userExample);
		
		return null;
	}

	

}
