package com.shopping.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.shopping.vo.GoodsVo;
import com.shopping.vo.ShopVo;



public interface CarService {
	void addGoods(List<GoodsVo> goods, GoodsVo good, List<ShopVo> shops ,HttpSession session);

	void outGoods(List<GoodsVo> goods, GoodsVo good, List<ShopVo> shops,ShopVo shop ,HttpSession session);

	void insertGoods(Integer shopId,List<ShopVo> shops,List<GoodsVo> goodsVo, List<GoodsVo> goodNew  ,HttpSession session);

}