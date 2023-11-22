package io.fooddelivery.controller;

import io.fooddelivery.entity.CartProduct;
import io.fooddelivery.entity.CartUser;
import io.fooddelivery.entity.Order;
import io.fooddelivery.entity.User;
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
@RequestMapping("/order")
@RequiredArgsConstructor
@Slf4j
public class OrderController {

    private final CartProductServiceApi cartProductServiceApi;
    private final CartUserRepository cartUserRepository;
    private final CategoryProductRepository categoryProductRepository;
    private final OrderServiceApi orderServiceApi;

    @GetMapping("/checkout/{cartId}")
    public String orderCheckout(Model model,@PathVariable("cartId")Long cartId){
         model.addAttribute("categoryList",categoryProductRepository.findAll());
         model.addAttribute("cartProductService",cartProductServiceApi);
         CartUser cartUser = CartUser.builder()
                 .id(cartId)
                 .build();
         model.addAttribute("cartList",cartProductServiceApi.findCartProductByCartUser(cartUser));
         model.addAttribute("totalPrice",cartProductServiceApi.calculateTotalPriceInCart(cartId));
         model.addAttribute("orderServiceApi",orderServiceApi);
         return "orderUserPage";
    }

    @PostMapping("/checkout/{userId}/{cartId}")
    public String orderCheckout(@PathVariable("userId")Long userId,
                                @PathVariable("cartId")Long cartId,
                                @RequestParam("totalprice")Long totalPrice,
                                @RequestParam("city")String city,
                                @RequestParam("email")String email,
                                @RequestParam("name")String name,
                                @RequestParam("order_notes")String orderNotes,
                                @RequestParam("phone")String phone,
                                @RequestParam("soname")String soname,
                                @RequestParam("street")String street,
                                Model model){
        Order orderCheckout = Order.builder()
                .totalPrice(totalPrice)
                .city(city)
                .email(email)
                .name(name)
                .soname(soname)
                .orderNotes(orderNotes)
                .phone(phone)
                .street(street)
                .userOrder(User.builder().id(userId).build())
                .build();
        CartUser cartUser = CartUser.builder()
                .id(cartId)
                .user(User.builder().id(userId).build())
                .build();
        List<CartProduct> cartProductByCartUser = cartProductServiceApi.findCartProductByCartUser(cartUser);

        Order orderCheckoutResult = orderServiceApi.saveOrder(orderCheckout, cartProductByCartUser);

        model.addAttribute("orderServiceApi",orderServiceApi);
        model.addAttribute("cartList",cartProductServiceApi.findCartProductByCartUser(cartUser));
        model.addAttribute("totalPrice",cartProductServiceApi.calculateTotalPriceInCart(cartId));
        model.addAttribute("categoryList",categoryProductRepository.findAll());
        model.addAttribute("cartProductService",cartProductServiceApi);

        if(orderCheckoutResult!=null){
            model.addAttribute("message",String.format("Dear %s thank you for checkout order!",name));
            return "redirect:/cart/user/"+userId;
        }else{
            model.addAttribute("message","Something was wrong, please try yet!");
            return "orderUserPage";
        }
    }

    @GetMapping("/user/{userId}")
    public String orderUser(@PathVariable("userId")Long userId,
                            Model model){
        model.addAttribute("orderServiceApi",orderServiceApi);
        model.addAttribute("categoryList",categoryProductRepository.findAll());
        model.addAttribute("cartProductService",cartProductServiceApi);
        model.addAttribute("ordersUser",orderServiceApi.getAllByUser(userId));
        return "currentUserOrdersPage";
    }

}
