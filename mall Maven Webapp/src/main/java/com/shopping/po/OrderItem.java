package com.shopping.po;

public class OrderItem {
    private Integer orderItemId;

    private Integer count;

    private Integer goodId;

    private Integer orderId;

    public OrderItem() {
		super();
	}

	public OrderItem(Integer orderItemId, Integer count, Integer goodId,
			Integer orderId) {
		super();
		this.orderItemId = orderItemId;
		this.count = count;
		this.goodId = goodId;
		this.orderId = orderId;
	}

	public Integer getOrderItemId() {
        return orderItemId;
    }

    public void setOrderItemId(Integer orderItemId) {
        this.orderItemId = orderItemId;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getGoodId() {
        return goodId;
    }

    public void setGoodId(Integer goodId) {
        this.goodId = goodId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

	@Override
	public String toString() {
		return "OrderItem [orderItemId=" + orderItemId + ", count=" + count
				+ ", goodId=" + goodId + ", orderId=" + orderId + "]";
	}
}