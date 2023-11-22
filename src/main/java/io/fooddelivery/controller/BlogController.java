package io.fooddelivery.controller;

import io.fooddelivery.entity.Blog;
import io.fooddelivery.repository.BlogCategoryRepository;
import io.fooddelivery.repository.CategoryProductRepository;
import io.fooddelivery.service.api.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/blog")
@RequiredArgsConstructor
@Slf4j
public class BlogController {

    private final CategoryProductRepository categoryProductRepository;
    private final BlogServiceApi blogServiceApi;
    private final CartProductServiceApi cartProductServiceApi;
    private final OrderServiceApi orderServiceApi;
    private final BlogCategoryRepository blogCategoryRepository;

    @GetMapping("/all")
    public String blogsAll(Model model){
        List<Blog> blogList = blogServiceApi.getAllBlogs();
        model.addAttribute("categoryList",categoryProductRepository.findAll());
        model.addAttribute("blogList",blogList);
        model.addAttribute("cartProductService",cartProductServiceApi);
        model.addAttribute("orderServiceApi",orderServiceApi);
        model.addAttribute("blogCategoryList",blogCategoryRepository.findAll());
        model.addAttribute("recentNews",blogServiceApi.getAllBlogs().stream().limit(3).toList());
        return "blogUserPage";
    }

    @GetMapping("/{idBlog}")
    public String blogById(@PathVariable("idBlog")Long idBlog,Model model){
        model.addAttribute("blog",blogServiceApi.getBlogById(idBlog));
        model.addAttribute("categoryList",categoryProductRepository.findAll());
        model.addAttribute("cartProductService",cartProductServiceApi);
        model.addAttribute("orderServiceApi",orderServiceApi);
        model.addAttribute("blogCategoryList",blogCategoryRepository.findAll());
        model.addAttribute("recentNews",blogServiceApi.getAllBlogs().stream().limit(3).toList());
        return "blogDetailsUserPage";
    }

    @GetMapping("/bycategory/{idCategory}")
    public String blogByCategory(@PathVariable("idCategory")Long idCategory,
                                 Model model){
        List<Blog> blogList = blogServiceApi.getAllByBlogCategory(idCategory);
        model.addAttribute("categoryList",categoryProductRepository.findAll());
        model.addAttribute("blogList",blogList);
        model.addAttribute("cartProductService",cartProductServiceApi);
        model.addAttribute("orderServiceApi",orderServiceApi);
        model.addAttribute("blogCategoryList",blogCategoryRepository.findAll());
        model.addAttribute("recentNews",blogServiceApi.getAllBlogs().stream().limit(3).toList());
        return "blogUserPage";
    }

    @PostMapping("/byname")
    public String blogByName(@RequestParam("name")String name, Model model){
        List<Blog> blogList = blogServiceApi.findBlogsByNameLike(name);
        model.addAttribute("categoryList",categoryProductRepository.findAll());
        model.addAttribute("blogList",blogList);
        model.addAttribute("cartProductService",cartProductServiceApi);
        model.addAttribute("orderServiceApi",orderServiceApi);
        model.addAttribute("blogCategoryList",blogCategoryRepository.findAll());
        model.addAttribute("recentNews",blogServiceApi.getAllBlogs().stream().limit(3).toList());
        return "blogUserPage";
    }
 }
