package io.fooddelivery.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String homePage(Model model){
        model.addAttribute("message","hello world!");
        return "homeUserPage";
    }

    @GetMapping("/contact")
    public String contactPage(Model model){
        return "contactUserPage";
    }

}
