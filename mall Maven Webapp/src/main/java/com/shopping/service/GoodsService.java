package com.shopping.service;

import com.shopping.po.Goods;
import com.shopping.vo.GoodsVo;

import java.util.List;

import org.springframework.stereotype.Repository;

public interface GoodsService {
	int deleteByPrimaryKey(Integer id);
	
	int insert(Goods record);

	Goods updateGoods(Goods goods, Integer id);

	GoodsVo findGoodById(Integer id);

	List<Goods> findAll();

	List<Goods> findShopGoods(int userId);

	
	Goods findById(Integer id);

	List<Goods> selectByPrimaryKeyWithComm(Integer id);
}