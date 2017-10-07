package com.shopping.service;

import com.shopping.po.Shop;
import com.shopping.vo.GoodsVo;
import com.shopping.vo.ShopVo;

import java.util.List;


public interface ShopService {
	
	Shop findByShopId(Integer id);
	
	List<Shop> findAll();
	
	List<ShopVo> findShopVoAll ();
	
	ShopVo findShopVoById (Integer shopId);
	
	void insertShop(Shop shop);
}