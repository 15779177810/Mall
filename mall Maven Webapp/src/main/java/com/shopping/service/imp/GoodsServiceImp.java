package com.shopping.service.imp;

import com.shopping.mapper.GoodsMapper;
import com.shopping.mapper.ShopMapper;
import com.shopping.po.*;
import com.shopping.service.GoodsService;
import com.shopping.vo.GoodsVo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GoodsServiceImp implements GoodsService {
	@Autowired
	GoodsMapper goodsMapper;

	@Autowired
	ShopMapper shopMapper;
   
/*	@Override
	public List<Goods> getAll() {
		// TODO Auto-generated method stub
		return goodsMapper.selectByExample(null);
	}*/

	public List<Goods> selectByPrimaryKeyWithComm(Integer id){
		List<Goods> goodsList = goodsMapper.selectByPrimaryKeyWithComm(id);
		System.out.println(goodsList);
		return goodsList;
	}

	
	@Override
	public List<Goods> findAll() {
		// TODO Auto-generated method stub
		return goodsMapper.selectByExample(null);
	}

	public List<Goods> findShopGoods(int userId) {

		ShopExample shopExample = new ShopExample();
		shopExample.or().andUserIdEqualTo(userId);
		Shop shop = shopMapper.selectByExample(shopExample).get(0);

		GoodsExample goodsExample = new GoodsExample();
		goodsExample.or().andShopIdEqualTo(shop.getShopId());
		return goodsMapper.selectByExample(goodsExample);
	}
	@Override
	public Goods updateGoods(Goods goods, Integer id) {
		
		
		//用用户参数构建sql查询
		GoodsExample goodsExample = new GoodsExample();
		goodsExample.createCriteria().andGoodIdEqualTo(id);
		
		//更新用户
		goodsMapper.updateByExampleSelective(goods,goodsExample);
		
		return null;
	}
	

	@Override
	public GoodsVo findGoodById(Integer id) {
		List<GoodsVo> goodVos = goodsMapper.findGoodById(id);
		return goodVos.get(0);
	}

	@Override
	public int insert(Goods record) {
		// TODO Auto-generated method stub
		return goodsMapper.insert(record);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		
		return goodsMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Goods findById(Integer id) {
		
		return goodsMapper.findById(id);
	}

	
	
}
