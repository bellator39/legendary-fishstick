package io.fooddelivery.repository;

import io.fooddelivery.entity.CartProduct;
import io.fooddelivery.entity.CartUser;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface CartProductRepository extends JpaRepository<CartProduct,Long> {
    List<CartProduct>findCartProductByCartUser(CartUser cartUser);
 }
