package com.shopping.controller;

import com.shopping.mapper.OrdersMapper;
import com.shopping.po.OrderItem;
import com.shopping.po.Orders;
import com.shopping.po.User;
import com.shopping.service.OrderService;
import com.shopping.vo.CarGoodVo;
import com.shopping.vo.OrderGoodVo;
import com.shopping.vo.ShopOrderVo;
import com.shopping.vo.UserOrder;
import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by 华哥哥 on 2017/9/12.
 */

@Controller
public class OrderController {

    @Autowired
    OrdersMapper ordersMapper;

    @Autowired
    OrderService orderService;

    @RequestMapping("orders.action")
    public String getOrder(Model model,int userId){
        List<UserOrder> orders = ordersMapper.selectUserOrder(userId);
        model.addAttribute("orders",orders);
        return "forward:order.jsp";
    }

    @RequestMapping("confirmOrder.action")
    public String confirmOrder(int order_id,int userId){
        Orders orders = ordersMapper.selectByPrimaryKey(order_id);
        orders.setState(2);
        ordersMapper.updateByPrimaryKey(orders);
        return "redirect:orders.action?userId="+userId;
    }

    @RequestMapping("carGood.action")
    public String carGood(int userId){
        List<CarGoodVo> carGoodVos = orderService.selectByShopUserId(userId);
        return null;
    }

    @RequestMapping("shopOrders.action")
    public String shopOrder(HttpSession session,Model model){
        int userId = ((User)session.getAttribute("user")).getUserId();
        List<ShopOrderVo> shopOrders = orderService.getOrderByShopUserId(userId);
        model.addAttribute("shopOrders",shopOrders);
        return "forward:AdminOrder.jsp";
    }

    @RequestMapping("sendOutGood.action")
    public String sendOutGood(int orderId, HttpSession session){
        Orders orders = ordersMapper.selectByPrimaryKey(orderId);
        orders.setState(1);
        ordersMapper.updateByPrimaryKey(orders);
        return "redirect:shopOrders.action";
    }

}
