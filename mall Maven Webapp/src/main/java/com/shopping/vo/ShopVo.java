package com.shopping.vo;

import com.shopping.po.Shop;


public class ShopVo {
	
	 private Integer shopId;

	private String shopName;

	private Integer userId;

	private String sdesc;
	
	private Double shopPrice;

	public ShopVo() {
		this.shopPrice=0.0;
	}
	
	public ShopVo(Shop shop, Double shopPrice) {
		super();
		this.shopId = shop.getShopId();
		this.shopName = shop.getShopName();
		this.userId = shop.getUserId();
		this.sdesc = shop.getSdesc();
		this.shopPrice = shopPrice;
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
		this.shopName = shopName;
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
		this.sdesc = sdesc;
	}

	public Double getShopPrice() {
		return shopPrice;
	}

	public void setShopPrice(Double shopPrice) {
		this.shopPrice = shopPrice;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj==null)
			return false;
		if(!(obj instanceof ShopVo))
			return false;
		ShopVo shopVo = (ShopVo) obj;
		if(this.shopId==shopVo.getShopId())
			return true;
		return false;
	}

	@Override
	public String toString() {
		return "ShopVo [shopId=" + shopId + ", shopName=" + shopName
				+ ", userId=" + userId + ", sdesc=" + sdesc + ", shopPrice="
				+ shopPrice + "]";
	}
  
}