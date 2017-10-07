package com.shopping.po;

public class Shop {
    private Integer shopId;

    private String shopName;

    private Integer userId;

    private String sdesc;

    public Shop(){

    }

    public Shop(Integer shopId, String shopName, Integer userId, String sdesc) {
		super();
		this.shopId = shopId;
		this.shopName = shopName;
		this.userId = userId;
		this.sdesc = sdesc;
	}

	public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName == null ? null : shopName.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getSdesc() {
        return sdesc;
    }

    public void setSdesc(String sdesc) {
        this.sdesc = sdesc == null ? null : sdesc.trim();
    }

	@Override
	public String toString() {
		return "Shop [shopId=" + shopId + ", shopName=" + shopName
				+ ", userId=" + userId + ", sdesc=" + sdesc + "]";
	}
}