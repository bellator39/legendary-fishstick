package io.fooddelivery.controller;

import io.fooddelivery.dto.Request;
import io.fooddelivery.entity.OrderList;
import io.fooddelivery.repository.CategoryProductRepository;
import io.fooddelivery.service.api.CartProductServiceApi;
import io.fooddelivery.service.api.OrderServiceApi;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/card")
@RequiredArgsConstructor
public class PaymentCardController {
    private final OrderServiceApi orderServiceApi;

    @Value("${stripe.api.publicKey}")
    private String publicKey;

    @GetMapping("/{amount}/{email}/{orderId}")
    public String showCard(@PathVariable("amount")String amount,
                           @PathVariable("email")String email,
                           @PathVariable("orderId")Long orderId,
                           Model model){
        model.addAttribute("publicKey", publicKey);
        model.addAttribute("amount", amount);
        model.addAttribute("email", email);
        List<OrderList> orderLists = orderServiceApi.getOrderById(orderId).getOrderLists();
        String productsName = orderLists.stream()
                .map(o1->o1.getProduct().getName())
                .collect(Collectors.joining(", "));
        model.addAttribute("productName", productsName);
        return "checkoutUserPage";
    }
}
