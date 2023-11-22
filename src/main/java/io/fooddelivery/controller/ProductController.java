package io.fooddelivery.controller;

import io.fooddelivery.entity.CategoryProduct;
import io.fooddelivery.entity.Product;
import io.fooddelivery.entity.ProductReview;
import io.fooddelivery.repository.CategoryProductRepository;
import io.fooddelivery.service.api.CartProductServiceApi;
import io.fooddelivery.service.api.ProductReviewServiceApi;
import io.fooddelivery.service.api.ProductServiceApi;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/product")
@RequiredArgsConstructor
@Slf4j
public class ProductController {
    private final ProductServiceApi productServiceApi;
    private final CategoryProductRepository categoryProductRepository;
    private final ProductReviewServiceApi productReviewServiceApi;
    private final CartProductServiceApi cartProductServiceApi;
    @GetMapping("/all")
    public String productShop(Model model){
        List<Product> productList = productServiceApi.getAllProduct();
        List<Product> lastProduct = productServiceApi.getAllProduct().stream().limit(3).toList();

        model.addAttribute("lastProductList",lastProduct);
        model.addAttribute("categoryList",categoryProductRepository.findAll());
        model.addAttribute("productList",productList);
        model.addAttribute("salesProductList",productList.stream().skip(3).limit(6).toList());
        model.addAttribute("cartProductService",cartProductServiceApi);

        return "productUserPage";
    }

    @GetMapping("/{id}")
    public String productDetails(@PathVariable("id")Long idProduct,Model model){
        List<Product> lastProduct = productServiceApi.getAllProduct().stream().limit(3).toList();
        Product productById = productServiceApi.getProductById(idProduct);
        double averageRating = productById.getProductReviews().stream()
                .mapToDouble(ProductReview::getRating)
                .average()
                .orElse(0.0);
        model.addAttribute("averageRating",averageRating);
        model.addAttribute("categoryList",categoryProductRepository.findAll());
        model.addAttribute("lastProductList",lastProduct);
        model.addAttribute("productDetailes",productById);
        model.addAttribute("cartProductService",cartProductServiceApi);

        return "productDetailsUserPage";
    }

    @GetMapping("/review/{idProduct}")
    public String productReview(Model model,@PathVariable("idProduct")Long idProduct){
        model.addAttribute("product",productServiceApi.getProductById(idProduct));
        model.addAttribute("cartProductService",cartProductServiceApi);

        return "productReviewUserPage";
    }

    @PostMapping("/review/{idProduct}")
    public String productReview(@PathVariable("idProduct")Long idProduct,
                                @RequestParam("name")String name,
                                @RequestParam("soname")String soname,
                                @RequestParam("email")String email,
                                @RequestParam("rating")Integer rating){
        ProductReview productReview = ProductReview.builder()
                .name(name)
                .soname(soname)
                .email(email)
                .rating(rating)
                .build();
        Product productById = productServiceApi.getProductById(idProduct);
        productReview.setProduct(productById);
        productReviewServiceApi.saveProductReview(productReview);

        return "redirect:/product/"+idProduct;
    }

    @GetMapping("/category/{idCategory}")
    public String productByCategory(@PathVariable("idCategory")Long idCategory,
                                    Model model){
        CategoryProduct categoryProduct = CategoryProduct.builder()
                .id(idCategory)
                .build();
        List<Product> lastProduct = productServiceApi.getAllProduct().stream().limit(3).toList();
        List<Product> productListByCategory = productServiceApi.getAllByCategory(categoryProduct);
        model.addAttribute("productList",productListByCategory);
        model.addAttribute("lastProductList",lastProduct);
        model.addAttribute("categoryList",categoryProductRepository.findAll());
        model.addAttribute("salesProductList",productListByCategory.stream().limit(6).toList());
        model.addAttribute("cartProductService",cartProductServiceApi);

        return "productUserPage";
    }

    @PostMapping("/byprice")
    public String productByRangePrice(@RequestParam("minPrice")String priceMin,
                                      @RequestParam("maxPrice")String priceMax,
                                      Model model){
        List<Product> productByPrice = productServiceApi.getAllByRangePrice(
                Double.valueOf(priceMin.replace('$',' ').trim()),
                Double.valueOf(priceMax.replace('$',' ').trim()));

        List<Product> lastProduct = productServiceApi.getAllProduct().stream().limit(3).toList();

        if(productByPrice!=null) {
            model.addAttribute("productList", productByPrice);
            model.addAttribute("lastProductList", lastProduct);
            model.addAttribute("categoryList", categoryProductRepository.findAll());
            model.addAttribute("salesProductList", productByPrice.stream().limit(6).toList());
            model.addAttribute("cartProductService",cartProductServiceApi);
        }else{
            model.addAttribute("productList", Collections.emptyList());
            model.addAttribute("lastProductList", lastProduct);
            model.addAttribute("categoryList", categoryProductRepository.findAll());
            model.addAttribute("salesProductList", lastProduct.stream().limit(6).toList());
            model.addAttribute("cartProductService",cartProductServiceApi);
        }

        return "productUserPage";
    }

    @PostMapping("/byname")
    public String productByName(@RequestParam("name")String nameProduct,Model model){

        List<Product> allByName = productServiceApi.getAllByName(nameProduct);
        List<Product> lastProduct = productServiceApi.getAllProduct().stream().limit(3).toList();

        model.addAttribute("productList", allByName);
        model.addAttribute("lastProductList", lastProduct);
        model.addAttribute("categoryList", categoryProductRepository.findAll());
        model.addAttribute("salesProductList", allByName.stream().limit(6).toList());
        model.addAttribute("cartProductService",cartProductServiceApi);

        return "productUserPage";

    }
}
