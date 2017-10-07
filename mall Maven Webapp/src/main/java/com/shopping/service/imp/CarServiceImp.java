package com.shopping.service.imp;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.exception.AccountException;
import com.shopping.mapper.AccountMapper;
import com.shopping.mapper.GoodsMapper;
import com.shopping.mapper.OrderItemMapper;
import com.shopping.mapper.OrdersMapper;
import com.shopping.mapper.ShopMapper;
import com.shopping.po.Orders;
import com.shopping.service.AccountService;
import com.shopping.service.CarService;
import com.shopping.service.GoodsService;
import com.shopping.service.OrderItemService;
import com.shopping.service.OrderService;
import com.shopping.service.ShopService;
import com.shopping.vo.GoodsVo;
import com.shopping.vo.ShopVo;



@Service
public class CarServiceImp implements CarService {
	
	@Autowired
	private GoodsMapper goodsMapper;

	@Autowired
	private ShopMapper shopMapper;
	@Autowired
	private AccountMapper accountMapper;
	@Autowired
	private OrdersMapper ordersMapper;
	@Autowired
	private OrderItemMapper orderItemMapper;
	
	@Override
	public void addGoods(List<GoodsVo> goods, GoodsVo good, List<ShopVo> shops ,HttpSession session){
		//移除session里的shops信息
		session.removeAttribute("shops");
		
		
		//拿到加入的商品所属的shopId，将商户信息的shopId取得，来处理商户额钱
		double pri = 0.0;
		int si = 0;
		int goodSId = good.getShopId();
		for (int i = 0; i < shops.size(); i++) {
			if (shops.get(i).getShopId()==goodSId) {
				si = i;
				pri = shops.get(i).getShopPrice();
			}
		}
		
		//如果商品集合为空，将拿进来的第一个商品的数量设为1，并加入到集合中
		if (goods.isEmpty()) {
			good.setCount(1);
			goods.add(good);
			pri += good.getCount()*good.getPrice();
		}else {
			//集合部位空
			//如果集合中包含要添加的商品，则拿出它的index拿到集合中商品的信息，再将它从集合移除，更改商品数量加1，再加入到集合中
			if (goods.contains(good)) {
				int goodId = goods.indexOf(good);
				GoodsVo goodAdd = goods.get(goodId);
				goods.remove(goodId);
				goodAdd.setCount(goodAdd.getCount()+1);
				goods.add(goodAdd);
				pri += good.getPrice();
			}else {
				//当集合不包含新添加的商品，则设count为1，再将它加入到集合中
				good.setCount(1);
				goods.add(good);
				pri += good.getPrice();
			}
		}
		
		//将对应的钱存入对应的商户
		shops.get(si).setShopPrice(pri);
		//将商户的商品的信息集合放到对应的session里面
		session.setAttribute("carGoods", goods);
		session.setAttribute("shops", shops);
	}

	@Override
	public void outGoods(List<GoodsVo> goodsVo, GoodsVo good, List<ShopVo> shops,ShopVo shopvo ,HttpSession session) {
		
		GoodsVo goodsDel = null;
		ShopVo shopDel = null;
		double shopPri = 0.0;
				
		//如果商品集合里面包含和要删除的商品同good_id的商品，则sumprice减去商品的数量乘以价格，再将商品从集合里移除
		if (goodsVo.contains(good) ) {
			int gid = goodsVo.indexOf(good);
			goodsDel  = goodsVo.get(gid);
			goodsVo.remove(goodsDel);
		}
				
		if (shops.contains(shopvo)) {
			int sid = shops.indexOf(shopvo);
			shopDel = shops.get(sid);
			shopPri = shopDel.getShopPrice() - goodsDel.getPrice();
			shops.remove(shopDel);
			shopDel.setShopPrice(shopPri);
			shops.add(shopDel);
		}
		session.setAttribute("carGoods",goodsVo);
		session.setAttribute("shops", shops);
		
	}

	@Override
	public void insertGoods(Integer shopId, List<ShopVo> shops,List<GoodsVo> goodsVo, List<GoodsVo> goodNew  ,HttpSession session){

		//当订单提交以后，购物车要把已经提交的商品清空
		session.removeAttribute("shops");
		ShopVo shopRem = shopMapper.findShopVoById(shopId);
		int sid = shops.indexOf(shopRem);
		shops.remove(shops.get(sid)); 
		shopRem.setShopPrice(0.0);
		shops.add(shopRem);
		session.setAttribute("shops", shops);
		
		//拿到session里面的商品集合session.removeAttribute("carGoods");
		for (int i = 0; i < goodsVo.size(); i++) {
			if (goodsVo.get(i).getShopId() != shopId) {
				goodNew.add(goodsVo.get(i));
			}
		}
		session.setAttribute("carGoods", goodNew);
		
	}
	
}
