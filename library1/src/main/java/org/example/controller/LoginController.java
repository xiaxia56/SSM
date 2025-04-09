package org.example.controller;

import org.example.service.UserSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    @Qualifier("userServiceImp")
    private UserSerivce userSerivce;

    //展示登录页面
//    public String loginPaper(){
//        return "login";
//    }

//    @PostMapping("/authenticate")
//    public String authenticate(@RequestParam("username") String username,@RequestParam("password") String password,Model model){
//        boolean b = userSerivce.validateUser(username, password);
//        if (b){
//            model.addAttribute("username",username);
//            return "/book/allBook";
//        }
//        else {
//            model.addAttribute("error","Invalid username or password.");
//            return "login";
//        }
//    }

}
