package com.shopping.vo;

/**
 * Created by 华哥哥 on 2017/9/12.
 */
public class OrderItem {
    private int order_item_id;
    private int count;
    private int good_id;
    private int type_id;
    private String good_name;
    private String good_desc;
    private double price;
    private String img;

    public void setOrder_item_id(int order_item_id) {
        this.order_item_id = order_item_id;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setGood_id(int good_id) {
        this.good_id = good_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public void setGood_name(String good_name) {
        this.good_name = good_name;
    }

    public void setGood_desc(String good_desc) {
        this.good_desc = good_desc;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getOrder_item_id() {
        return order_item_id;
    }

    public int getCount() {
        return count;
    }

    public int getGood_id() {
        return good_id;
    }

    public int getType_id() {
        return type_id;
    }

    public String getGood_name() {
        return good_name;
    }

    public String getGood_desc() {
        return good_desc;
    }

    public double getPrice() {
        return price;
    }

    public String getImg() {
        return img;
    }
}
