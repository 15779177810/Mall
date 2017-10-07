package com.shopping.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.po.OrderItem;
import com.shopping.service.OrderItemService;


@Service
public class OrderItemServiceImp implements OrderItemService {

	@Autowired
	OrderItemService orderItemService ;
	
	@Override
	public OrderItem insert(OrderItem orderItem) {
		orderItemService.insert(orderItem);
		return null;
	}

}
