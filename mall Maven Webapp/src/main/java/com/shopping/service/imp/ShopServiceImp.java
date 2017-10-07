package com.shopping.service.imp;

import com.shopping.mapper.ShopMapper;
import com.shopping.po.Shop;
import com.shopping.service.ShopService;
import com.shopping.vo.GoodsVo;
import com.shopping.vo.ShopVo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopServiceImp implements ShopService {

	@Autowired
	ShopMapper shopMapper;
	
	@Override
	public Shop findByShopId(Integer id) {
		Shop shop = shopMapper.selectByPrimaryKey(id);
		return shop;
	}

	@Override
	public List<Shop> findAll() {
		List<Shop> shops = shopMapper.selectByExample(null);
		return shops;
	}

	@Override
	public List<ShopVo> findShopVoAll() {
		List<ShopVo> shopVos = shopMapper.findShopVoAll();
		return shopVos;
	}

	@Override
	public ShopVo findShopVoById(Integer shopId) {
		ShopVo shopVo = shopMapper.findShopVoById(shopId);
		return shopVo;
	}

	@Override
	public void insertShop(Shop shop) {
		
		shopMapper.insert(shop);
	
	}

	
	
}
