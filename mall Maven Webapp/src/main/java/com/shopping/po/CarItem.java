package com.shopping.po;

import java.util.Date;

public class CarItem {
    private Integer carItemId;

    private Integer goodId;

    private Integer carId;

    private Date time;

    public Integer getCarItemId() {
        return carItemId;
    }

    public void setCarItemId(Integer carItemId) {
        this.carItemId = carItemId;
    }

    public Integer getGoodId() {
        return goodId;
    }

    public void setGoodId(Integer goodId) {
        this.goodId = goodId;
    }

    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}