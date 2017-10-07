package com.shopping.vo;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

import com.shopping.po.Goods;

public class GoodsVo {
	private int count;
	
    private Integer goodId;

    private Integer typeId;

    private String goodName;

    private String goodDesc;

    private Double price;

    private String img;

    private Integer shopId;

    public GoodsVo() {}
    
	public GoodsVo(Integer count, Goods goods) {
		super();
		count = 1;
		this.goodId = goods.getGoodId();
		this.typeId = goods.getTypeId();
		this.goodName = goods.getGoodName();
		this.goodDesc = goods.getGoodDesc();
		this.price = goods.getPrice();
		this.img = goods.getImg();
		this.shopId = goods.getShopId();
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
		return "GoodsVo [count=" + count + ", goodId=" + goodId + ", typeId="
				+ typeId + ", goodName=" + goodName + ", goodDesc=" + goodDesc
				+ ", price=" + price + ", img=" + img + ", shopId=" + shopId
				+ "]";
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	@Override
	public boolean equals(Object obj) {
		if(obj==null)
			return false;
		if(!(obj instanceof GoodsVo))
			return false;
		GoodsVo goodsVo = (GoodsVo)obj;
		if(this.goodId==goodsVo.getGoodId())
			return true;
		return false;
	}
	
}