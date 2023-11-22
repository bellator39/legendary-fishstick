package io.fooddelivery.controller;

import io.fooddelivery.entity.Blog;
import io.fooddelivery.entity.CategoryProduct;
import io.fooddelivery.entity.Contacts;
import io.fooddelivery.entity.Product;
import io.fooddelivery.repository.CategoryProductRepository;
import io.fooddelivery.service.api.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
@Slf4j
public class HomeController {

    private final CategoryProductRepository categoryProductRepository;
    private final ProductServiceApi productServiceApi;
    private final BlogServiceApi blogServiceApi;
    private final ContactServiceApi contactServiceApi;
    private final CartProductServiceApi cartProductServiceApi;
    private final OrderServiceApi orderServiceApi;
    @GetMapping("/")
    public String homePage(Model model){
        List<Product> meatList = productServiceApi.getAllByCategory(CategoryProduct.builder().id(10L).build()).stream().limit(5).toList();
        List<Product> vegetablesList = productServiceApi.getAllByCategory(CategoryProduct.builder().id(11L).build()).stream().limit(5).toList();
        List<Product> fastFoodList = productServiceApi.getAllByCategory(CategoryProduct.builder().id(17L).build()).stream().limit(5).toList();
        List<Product> fruits = productServiceApi.getAllByCategory(CategoryProduct.builder().id(13L).build()).stream().limit(5).toList();
        List<Product> lastProduct = productServiceApi.getAllProduct().stream().limit(3).toList();
        List<Product> topRatedProduct = productServiceApi.getMostReviewProduct().stream().limit(3).toList();
        List<Product> reviewProduct = productServiceApi.getAllProduct().stream().skip(3).limit(3).toList();
        List<Blog> blogList = blogServiceApi.getAllBlogs().stream().limit(3).toList();

        model.addAttribute("categoryList",categoryProductRepository.findAll());
        model.addAttribute("meatProductList",meatList);
        model.addAttribute("vegetablesList",vegetablesList);
        model.addAttribute("fastFoodList",fastFoodList);
        model.addAttribute("fruitsList",fruits);
        model.addAttribute("lastProductList",lastProduct);
        model.addAttribute("topRatedProductList",topRatedProduct);
        model.addAttribute("reviewProductList",reviewProduct);
        model.addAttribute("blogList",blogList);
        model.addAttribute("cartProductService",cartProductServiceApi);
        model.addAttribute("orderServiceApi",orderServiceApi);

        return "homeUserPage";
    }

    @GetMapping("/contact")
    public String contactPage(Model model){
        model.addAttribute("cartProductService",cartProductServiceApi);
        model.addAttribute("orderServiceApi",orderServiceApi);
        return "contactUserPage";
    }

    @PostMapping("/contact")
    public String contactSave(@RequestParam(name = "name")String name,
                              @RequestParam(name = "email")String email,
                              @RequestParam(name = "message")String message,
                              Model model){
        Contacts contactsSave = Contacts.builder()
                .name(name)
                .email(email)
                .message(message)
                .build();

        Contacts contactSaveResult = contactServiceApi.saveContact(contactsSave);

        if(contactSaveResult!=null){
            model.addAttribute("cartProductService",cartProductServiceApi);
            model.addAttribute("message",String.format("Dear %s thanks for message for us! We will answer you soon",name));
            model.addAttribute("orderServiceApi",orderServiceApi);
            return "contactUserPage";
        }else{
            model.addAttribute("cartProductService",cartProductServiceApi);
            model.addAttribute("message","Something was wrong, please try later!");
            model.addAttribute("orderServiceApi",orderServiceApi);
            return "contactUserPage";

        }

    }

}
