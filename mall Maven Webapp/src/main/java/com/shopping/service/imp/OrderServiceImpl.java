package com.shopping.service.imp;

import com.shopping.mapper.GoodCommentMapper;
import com.shopping.mapper.OrderItemMapper;
import com.shopping.mapper.OrdersMapper;
import com.shopping.po.*;
import com.shopping.service.OrderService;
import com.shopping.vo.CarGoodVo;
import com.shopping.vo.OrderGoodVo;

import com.shopping.vo.ShopOrderVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 华哥哥 on 2017/9/17.
 */
@Service
public class OrderServiceImpl implements OrderService{

    @Autowired
    OrdersMapper ordersMapper;

    @Autowired
    GoodCommentMapper goodCommentMapper;

    @Autowired
    OrderItemMapper orderItemMapper;

    public List<OrderGoodVo> getOrderItem(int orderId){
        List<OrderGoodVo> orderItems = ordersMapper.selectOrderGood(orderId);
        return orderItems;
    }

    public void comment(int orderId, GoodComment[] goodComments){
        for (GoodComment goodComment : goodComments) {
            goodCommentMapper.insert(goodComment);
        }
        Orders orders = ordersMapper.selectByPrimaryKey(orderId);
        orders.setState(3);
        ordersMapper.updateByPrimaryKey(orders);
    }

	@Override
	public void insert(Orders order,OrderItem[] orderItems) {
		
		ordersMapper.insert(order);
        for (OrderItem orderItem : orderItems) {
            orderItem.setOrderId(order.getOrderId());
            orderItemMapper.insert(orderItem);
        }
	}

	public List<CarGoodVo> selectByShopUserId(int userId){
        return null;
    }

    public List<Orders> getOrderByUserId(int userId){
	    OrdersExample ordersExample = new OrdersExample();
	    ordersExample.or().andUserIdEqualTo(userId);
	    ordersExample.setOrderByClause("date DESC");
	    return ordersMapper.selectByExample(ordersExample);
    }

    public List<ShopOrderVo> getOrderByShopUserId(int userId){
        return ordersMapper.selectOrderByShopUserId(userId);
    }
}
