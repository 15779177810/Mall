package com.shopping.po;

import java.util.Date;

public class Orders {
    private Integer orderId;

    private Integer userId;

    private Date date;

    private Integer state;

    public Orders() {
		super();
	}

	public Orders(Integer orderId, Integer userId, Date date, Integer state) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.date = date;
		this.state = state;
	}

	public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", userId=" + userId + ", date="
				+ date + ", state=" + state + "]";
	}
}