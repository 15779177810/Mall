package com.shopping.controller;

import com.shopping.exception.AccountException;
import com.shopping.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by 华哥哥 on 2017/9/11.
 */
@Controller
public class AccountController {

    @Autowired
    private AccountService accountService;

    @RequestMapping("draw.action")
    public String draw(Model model, int userId, double money){
        try {
            accountService.draw(userId,money);
        } catch (AccountException e) {
            model.addAttribute("error",e.getMessage());
            return "forward:/error.jsp";
        }
        return "redirect:/info.action";
    }

    @RequestMapping("deposit.action")
    public String deposit(Model model,int userId,double money){
        try {
            accountService.deposit(userId,money);
        } catch (AccountException e) {
            model.addAttribute("error",e.getMessage());
            return "forward:/error.jsp";
        }
        return "redirect:/info.action";
    }
    

    @RequestMapping("getAccount.action")
    public String getAccount(Model model,int userId,double money){
        try {
            accountService.consume(userId, 12, money);
        } catch (AccountException e) {
            model.addAttribute("error",e.getMessage());
            return "forward:/order.jsp";
        }
        return "redirect:/info.action";
    }
}
