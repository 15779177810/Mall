package com.shopping.controller;

import com.shopping.mapper.OrdersMapper;
import com.shopping.po.GoodComment;
import com.shopping.po.User;
import com.shopping.service.OrderService;
import com.shopping.service.imp.OrderItemServiceImp;
import com.shopping.vo.OrderGoodVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * Created by 华哥哥 on 2017/9/17.
 */
@Controller
public class CommentController {

    @Autowired
    OrderService orderService;

    @RequestMapping("toComment.action")
    public String toComment(int orderId, Model model){
        List<OrderGoodVo> orderItems = orderService.getOrderItem(orderId);
        model.addAttribute("orderItems", orderItems);
        return "forward:comment.jsp";
    }

    @RequestMapping("comment.action")
    public String comment(HttpServletRequest request){
        Map<String, String[]> map = request.getParameterMap();
        Set<Map.Entry<String, String[]>> entries = map.entrySet();
        GoodComment[] goodComments = new GoodComment[entries.size()];
        int userId = 0;
        int i = 0;
        for (Map.Entry<String, String[]> entry : entries) {
            GoodComment goodComment = new GoodComment();
            userId = ((User)(request.getSession().getAttribute("user"))).getUserId();
            goodComment.setUserId(userId);
            goodComment.setGoodId(Integer.valueOf(entry.getKey()));
            goodComment.setTime(new Date());
            goodComment.setGoodComment(String.valueOf(entry.getValue()[0]));
            int id = Integer.parseInt(entry.getKey());
            goodComments[i] = goodComment;
            i++;
        }
        int orderId = (int)request.getSession().getAttribute("orderId");
        request.getSession().removeAttribute("orderId");
        orderService.comment(orderId,goodComments);

        return  "forward:orders.action?userId="+userId;
    }
}
