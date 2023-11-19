package io.fooddelivery.service.api;

import io.fooddelivery.entity.CartProduct;
import io.fooddelivery.entity.CartUser;

import java.util.List;

public interface CartProductServiceApi {
    CartProduct saveCardProduct(CartProduct cartProduct);
    CartProduct deleteCartProduct(Long idCartProduct);
    List<CartProduct> findCartProductByCartUser(CartUser cartUser);
}
