package com.shopping.vo;

import java.util.Date;
import java.util.List;

/**
 * Created by 华哥哥 on 2017/9/12.
 */
public class UserOrder {
    private int order_id;
    private int user_id;
    private Date date;
    private int state;
    private List<OrderItem> orderItems;

    public int getOrder_id() {
        return order_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public Date getDate() {
        return date;
    }

    public int getState() {
        return state;
    }

    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setState(int state) {
        this.state = state;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }
}

