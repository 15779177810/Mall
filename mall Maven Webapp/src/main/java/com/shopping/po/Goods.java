package com.shopping.po;

import java.util.Set;

public class Goods {
    private Integer goodId;

    private Integer typeId;

    private String goodName;

    private String goodDesc;

    private Double price;

    private String img;

    private Integer shopId;

    private Set<GoodComment> goodComment;

    public void setGoodComment(Set<GoodComment> goodComment) {
        this.goodComment = goodComment;
    }

    public Set<GoodComment> getGoodComment() {
        return goodComment;
    }

    public Integer getGoodId() {
        return goodId;
    }

    public void setGoodId(Integer goodId) {
        this.goodId = goodId;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName == null ? null : goodName.trim();
    }

    public String getGoodDesc() {
        return goodDesc;
    }

    public void setGoodDesc(String goodDesc) {
        this.goodDesc = goodDesc == null ? null : goodDesc.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }    
    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

	@Override
	public String toString() {
		return "Goods [goodId=" + goodId + ", typeId=" + typeId + ", goodName="
				+ goodName + ", goodDesc=" + goodDesc + ", price=" + price
				+ ", img=" + img + ", shopId=" + shopId + "]";
	}
}