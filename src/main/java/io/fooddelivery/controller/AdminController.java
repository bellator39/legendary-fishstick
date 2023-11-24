package io.fooddelivery.controller;

import io.fooddelivery.entity.*;
import io.fooddelivery.service.api.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
@Slf4j
public class AdminController {

    private final ProductServiceApi productServiceApi;
    private final BlogServiceApi blogServiceApi;
    private final UserServiceApi userServiceApi;
    private final OrderServiceApi orderServiceApi;
    private final ContactServiceApi contactServiceApi;

    @GetMapping("/dashboard")
    public String adminDashboard(){
        return "admin_page/adminDashboardPage";
    }

    @GetMapping("/listproduct")
    public String listProduct(Model model){
        List<Product> productList = productServiceApi.getAllProduct();
        model.addAttribute("listProducts",productList);
        return "admin_page/listProductPage";
    }

    @GetMapping("/listuser")
    public String listUser(Model model){
        List<User> userList = userServiceApi.getAllUser();
        model.addAttribute("listUser",userList);
        return "admin_page/listUserPage";
    }

    @GetMapping("/listorder")
    public String listOrder(Model model){
        List<Order> orderList = orderServiceApi.getAllOrder();
        model.addAttribute("listOrder",orderList);
        return "admin_page/listOrderPage";
    }

    @GetMapping("/listcontacts")
    public String listContact(Model model){
        List<Contacts> contactsList = contactServiceApi.getAll();
        model.addAttribute("listContacts",contactsList);
        return "admin_page/listContactsPage";
    }

    @GetMapping("/listblogs")
    public String listBlogs(Model model){
        List<Blog> blogList = blogServiceApi.getAllBlogs();
        model.addAttribute("listBlog",blogList);
        return "admin_page/listBlogsPage";
    }

}
