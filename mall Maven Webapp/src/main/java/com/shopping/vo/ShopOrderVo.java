package com.shopping.vo;

import java.util.Date;
import java.util.List;

/**
 * Created by 华哥哥 on 2017/9/19.
 */
public class ShopOrderVo {
    private int orderId;
    private String buyerName;
    private Date date;
    private int state;
    private List<SimpleGoodVo> goods;

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public void setBuyerName(String buyerName) {
        this.buyerName = buyerName;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setState(int state) {
        this.state = state;
    }

    public void setGoods(List<SimpleGoodVo> goods) {
        this.goods = goods;
    }

    public int getOrderId() {
        return orderId;
    }

    public String getBuyerName() {
        return buyerName;
    }

    public Date getDate() {
        return date;
    }

    public int getState() {
        return state;
    }

    public List<SimpleGoodVo> getGoods() {
        return goods;
    }
}
