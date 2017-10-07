package com.shopping.vo;

import com.shopping.po.Goods;

/**
 * ATE TABLE `order_item` (
 `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
 `count` int(11) DEFAULT NULL,
 `good_id` int(11) DEFAULT NULL,
 `order_id` int(11) DEFAULT NULL,
 * Created by 华哥哥 on 2017/9/17.
 */
public class OrderGoodVo {
    private int order_item_id;
    private int count;
    private int order_id;
    private Goods goods;

    public void setOrder_item_id(int order_item_id) {
        this.order_item_id = order_item_id;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public int getOrder_item_id() {
        return order_item_id;
    }

    public int getCount() {
        return count;
    }

    public int getOrder_id() {
        return order_id;
    }

    public Goods getGoods() {
        return goods;
    }
}
