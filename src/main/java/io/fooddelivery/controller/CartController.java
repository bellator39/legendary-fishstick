package io.fooddelivery.controller;

import io.fooddelivery.entity.CartProduct;
import io.fooddelivery.entity.CartUser;
import io.fooddelivery.entity.Product;
import io.fooddelivery.repository.CartUserRepository;
import io.fooddelivery.repository.CategoryProductRepository;
import io.fooddelivery.service.api.CartProductServiceApi;
import io.fooddelivery.service.api.OrderServiceApi;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/cart")
@Slf4j
public class CartController {

    private final CartProductServiceApi cartProductServiceApi;
    private final CartUserRepository cartUserRepository;
    private final CategoryProductRepository categoryProductRepository;
    private final OrderServiceApi orderServiceApi;
    @GetMapping("/user/{idCart}")
    public String userCart(@PathVariable("idCart")Long idCart, Model model){
        List<CartProduct> cartUserList = cartProductServiceApi.findCartProductByCartUser(cartUserRepository.getById(idCart));
        model.addAttribute("categoryList",categoryProductRepository.findAll());
        model.addAttribute("cartList",cartUserList);
        model.addAttribute("cartProductService",cartProductServiceApi);
        model.addAttribute("orderServiceApi",orderServiceApi);

        double sum = cartUserList.stream().mapToDouble(o1 -> o1.getProduct().getPrice()).sum();
        return "cartUserPage";
    }

    @GetMapping("/add/cart/{idProduct}/{count}/{idCart}")
    public String addToCart(@PathVariable("idProduct")Long idProduct,
                            @PathVariable("count")Integer count,
                            @PathVariable("idCart")Long idCart){
        CartProduct cartProduct = CartProduct.builder()
                .product(Product.builder().id(idProduct).build())
                .cartUser(CartUser.builder().id(idCart).build())
                .count(count)
                .build();

        cartProductServiceApi.saveCardProduct(cartProduct);
        return "redirect:/product/all";
    }

    @PostMapping("/add/cart/{idProduct}/{idCart}")
    public String addToCartWithCount(@PathVariable("idProduct")Long idProduct,
                                     @RequestParam("count")Integer count,
                                     @PathVariable("idCart")Long idCart){
        CartProduct cartProduct = CartProduct.builder()
                .product(Product.builder().id(idProduct).build())
                .cartUser(CartUser.builder().id(idCart).build())
                .count(count)
                .build();

        cartProductServiceApi.saveCardProduct(cartProduct);
        return "redirect:/cart/user/"+idCart;
    }

    @GetMapping("/user/{idCart}/clear")
    public String clearUserCart(@PathVariable("idCart")Long idCart){
        cartProductServiceApi.clearCartProduct(idCart);
        return "redirect:/cart/user/"+idCart;
    }

    @GetMapping("/remove/cart/{idCart}/{idCartProduct}")
    public String removeFromCart(@PathVariable("idCartProduct")Long idCartProduct,
                                 @PathVariable("idCart")Long idCart){
        cartProductServiceApi.deleteCartProduct(idCartProduct);
        return "redirect:/cart/user/"+idCart;
    }

}
