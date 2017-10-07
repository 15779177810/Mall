package com.shopping.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.shopping.vo.OrderItem;
import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shopping.exception.AccountException;
import com.shopping.po.Orders;
import com.shopping.service.AccountService;
import com.shopping.service.CarService;
import com.shopping.service.GoodsService;
import com.shopping.service.OrderItemService;
import com.shopping.service.OrderService;
import com.shopping.service.ShopService;
import com.shopping.vo.GoodsVo;
import com.shopping.vo.ShopVo;


@Controller
public class CarController {

	@Autowired
	private GoodsService goodsService;
	@Autowired
	private ShopService shopService;
	@Autowired
	private AccountService accountService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderItemService orderItemService;
	@Autowired
	private CarService carService;
	
	/**
	 * 拿到session里的商品数据，如果要添加的商品已经存在，则将其count+1，否则，将商品加入session。
	 * 拿到session里的价格数据，对其总价进行修改
	 * @param request 通过环境的request拿到传递的数值
	 * @param session 拿到会话的session
	 * @return 跳转回购物车页面
	 */
	@RequestMapping("carGoods.action")
	public String carGoods(HttpServletRequest request, HttpSession session){
		
		//获取点击传进来的商品id，拿到对应商品
		Integer id = Integer.parseInt(request.getParameter("goodId"));
		GoodsVo good = goodsService.findGoodById(id);
		
		//拿到session里面的商品集合
		@SuppressWarnings("unchecked")
		List<GoodsVo> goods = (List<GoodsVo>) session.getAttribute("carGoods");
		//如何集合为空，则新建一个
		if (goods == null) {
			goods = new ArrayList<GoodsVo>();
		}
		//拿到所有的商户信息，存到session里面，供购物车使用
		@SuppressWarnings("unchecked")
		List<ShopVo> shops = (List<ShopVo>) session.getAttribute("shops");
		if (shops == null) {
			shops = shopService.findShopVoAll();
		}
		
		carService.addGoods(goods, good, shops, session);
		
		return "forward:/CarBuy.jsp";
 	}

	
	/**
	 * 删除购物车某一项商品
	 * @param request 通过环境的request拿到传递的数值
	 * @param session 拿到会话的session
	 * @return 跳转回购物车页面
	 */
	@RequestMapping("outdelcarGoods.action")
	public String outdelcarGoods(HttpServletRequest request, HttpSession session){	
		
		//拿到session里面的商品集合
		@SuppressWarnings("unchecked")
		List<GoodsVo> goodsVo  = (List<GoodsVo>) session.getAttribute("carGoods");
		@SuppressWarnings("unchecked")
		List<ShopVo> shops  = (List<ShopVo>) session.getAttribute("shops");

		//获取点击传进来的商品id，拿到对应商品
		Integer goodId = Integer.parseInt(request.getParameter("goodId"));
		GoodsVo good = goodsService.findGoodById(goodId);
		//获取点击传进来的商品id，拿到对应商品
		Integer shopId = Integer.parseInt(request.getParameter("shopId"));
		ShopVo shopvo = shopService.findShopVoById(shopId);
		
		carService.outGoods(goodsVo,good,shops, shopvo, session);
		
		return "forward:/CarBuy.jsp";
	}
	
	/*
	 * 清空对应的session
	 * @param session 拿到本次会话的session
	 * @return  跳转回购物车页面
	 */
	@RequestMapping("outcarGoods.action")
	public String outcarGoods(HttpSession session){	
		//清空对应session的数据
		session.removeAttribute("carGoods");	
		session.removeAttribute("shops");
		return "forward:/CarBuy.jsp";
	}
	
	@RequestMapping("insertToOrder.action")
	public String insertToOrder(HttpServletRequest request, HttpSession session){
		
		double money = Double.parseDouble(request.getParameter("money"));
		int from = Integer.parseInt(request.getParameter("from"));
		int to = Integer.parseInt(request.getParameter("to"));
		int shopId = Integer.parseInt(request.getParameter("shopId"));
		Orders order = new Orders(null, from, new Date(), 0);
		List<GoodsVo> goodsVos = (List<GoodsVo>) session.getAttribute("carGoods");
		com.shopping.po.OrderItem[] orderItems = new com.shopping.po.OrderItem[goodsVos.size()];
		int i = 0;
		for (GoodsVo goodsVo : goodsVos) {
			if(goodsVo.getShopId() == shopId){
				com.shopping.po.OrderItem orderItem = new com.shopping.po.OrderItem();
				orderItem.setCount(goodsVo.getCount());
				orderItem.setGoodId(goodsVo.getGoodId());
				orderItems[i] = orderItem;
				i++;
			}
		}
		orderService.insert(order,orderItems);

		try {
			accountService.consume(from, to, money);
		} catch (AccountException e) {
			return "forward:/error.jsp";
		}

		
		//当订单提交以后，购物车要把已经提交的商品清空
		@SuppressWarnings("unchecked")
		List<ShopVo> shops  = (List<ShopVo>) session.getAttribute("shops");
		
		//拿到session里面的商品集合
		@SuppressWarnings("unchecked")
		List<GoodsVo> goodsVo  = (List<GoodsVo>) session.getAttribute("carGoods");
		List<GoodsVo> goodNew = new ArrayList<>();
		
		carService.insertGoods(shopId,shops, goodsVo, goodNew, session);
		
		return "redirect:/orders.action?userId="+from;
	}

}

