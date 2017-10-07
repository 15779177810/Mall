package com.shopping.vo;

import com.shopping.po.User;

import java.util.Date;
import java.util.List;

/**
 * Created by 华哥哥 on 2017/9/18.
 */
public class OrderVo {
    int orderId;
    Date date;
    int  userId;
    List<OrderItem> orderItems;

    public int getOrderId() {
        return orderId;
    }

    public Date getDate() {
        return date;
    }

    public int getUserId() {
        return userId;
    }

    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }
}
