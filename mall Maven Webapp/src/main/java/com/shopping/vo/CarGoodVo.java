package com.shopping.vo;

import com.shopping.po.Orders;

import java.util.List;

/**
 * Created by 华哥哥 on 2017/9/18.
 */
public class CarGoodVo {
    int shopId;
    String shopName;
    List<OrderVo> orders;

    public int getShopId() {
        return shopId;
    }

    public String getShopName() {
        return shopName;
    }

    public List<OrderVo> getOrders() {
        return orders;
    }

    public void setShopId(int shopId) {
        this.shopId = shopId;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public void setOrders(List<OrderVo> orders) {
        this.orders = orders;
    }
}
