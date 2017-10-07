package com.shopping.controller;

import java.util.List;
import javax.servlet.http.HttpSession;

import com.shopping.po.User;
import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shopping.po.Goods;

import com.shopping.service.GoodsService;


/**
 * 处理商品的crud
 * @author Administrator
 *
 */
@Controller
public class GoodsController {
	/**
	 * 查询员工数据（分页查询）
	 */
	@Autowired
	GoodsService go;

	@RequestMapping("/goods.action")
	public String showGoods(HttpSession session) {
		List<Goods> list = go.findAll();
		//model.addAttribute("go", list);
		session.setAttribute("goods",list);
	//	System.out.println(list.get(1));
	//	System.err.println(list);
		return "index.jsp";
	}
	@RequestMapping("/admin/goodsdelete.action")
	public String deleteGoods(Goods goods,Model model){
	//	String id = request.getParameter("goodId");
	//	Integer goodId = Integer.valueOf(id);

	//	int goodId=Integer.parseInt((String)request.getParameter("goodId"));
	//	System.out.println(goodId);
		System.out.println(goods);
		System.out.println("!!!!!!!!!!"+goods.getGoodId());
		go.deleteByPrimaryKey(goods.getGoodId());
		return "forward:/goodlist.action";
		
	}
	@RequestMapping("/admin/goodsadd.action")
	public String addGoods(Goods goods,Model model){
		//goods=new Goods(goods.getGoodId(),goods.getTypeId(),goods.getName(),goods.getDesc(),goods.getPrice(),goods.getImg());
		go.insert(goods);
		return "forward:/goodlist.action";		
	}
	
	@RequestMapping("admin/goodsupdate.action")
	public String updateGoods(Goods goods,Model model){
		
		go.updateGoods(goods,goods.getGoodId());
		return "forward:/goodlist.action";
	}
	
	
	@RequestMapping("/goodlist.action")
	public String goodslist(Model model, HttpSession session) {
		int userId = ((User) session.getAttribute("user")).getUserId();
		List<Goods> list = go.findShopGoods(userId);
		if(list.size()>0){
			model.addAttribute("go", list);
		}
		return "forward:/admin/ProductList.jsp";
	}
/*	@RequestMapping("/goodsinfo.action")
	public String GoodsInfo(Model model,GoodComment goodcomment) {
		Integer id=goodcomment.getCommentId();
		GoodComment goodComment2= goodcommentservice.findById(id);
		model.addAttribute("goodsinfo",goodComment2);
	//	session.setAttribute("goods",list);
	//	System.out.println(list.get(1));
	//	System.err.println(list);
		return "forward:/admin/GoodsInfo.jsp";
	}*/
	@RequestMapping("/goodsbyid.action")
	public String GoodsById(Model model,Goods goods) {
		List<Goods> goodList= go.selectByPrimaryKeyWithComm(goods.getGoodId());
		if(goodList.size()>0){
			model.addAttribute("goodbyid", goodList);
			model.addAttribute("goods", goodList.get(0));
		}

//		System.out.println(good);
	//	session.setAttribute("goods",good);
	//	System.out.println(list.get(1));
	//	System.err.println(list);
		return "forward:/admin/GoodsInfo.jsp";
	}

	@RequestMapping("/toModify.action")
	public String toModify(int goodId,Model model){
		Goods goods = go.findById(goodId);
		model.addAttribute("good",goods);
		return "forward:admin/ProductModify.jsp";
	}

//	@RequestMapping("/goodupdate.action")
//	public String goodsupdate(Model model,Goods goods) {
//		goods=new Goods(goods.getGoodId(),goods.getTypeId(),goods.getName(),goods.getDesc(),goods.getPrice(),goods.getImg());
//		
//		model.addAttribute("goo", goods);
//		System.out.println(goods);
//		return "forward:admin/ProductModify.jsp";
//	}
}
