package com.shopping.service;

import com.shopping.po.GoodComment;
import com.shopping.po.OrderItem;
import com.shopping.po.Orders;
import com.shopping.vo.CarGoodVo;
import com.shopping.vo.OrderGoodVo;
import com.shopping.vo.ShopOrderVo;

import java.util.List;


/**
 * Created by 华哥哥 on 2017/9/17.
 */
public interface OrderService {
    List<OrderGoodVo> getOrderItem(int orderId);
    void comment(int orderId, GoodComment[] goodComments);
    void insert(Orders order,OrderItem[] orderItems);
    List<CarGoodVo> selectByShopUserId(int userId);
    List<Orders> getOrderByUserId(int userId);
    List<ShopOrderVo> getOrderByShopUserId(int userId);
}
