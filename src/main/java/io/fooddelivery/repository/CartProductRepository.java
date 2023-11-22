package io.fooddelivery.repository;

import io.fooddelivery.entity.CartProduct;
import io.fooddelivery.entity.CartUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface CartProductRepository extends JpaRepository<CartProduct,Long> {
    List<CartProduct>findCartProductByCartUser(CartUser cartUser);
    @Query("SELECT COALESCE(SUM(cp.count), 0) FROM CartProduct cp WHERE cp.cartUser.user.id = :cartUserId")
    int countProductsInCart(Long cartUserId);

    @Query("SELECT COALESCE(SUM(cp.count * p.price), 0) FROM CartProduct cp " +
            "JOIN Product p ON cp.product.id = p.id WHERE cp.cartUser.user.id = :cartUserId")
    double calculateTotalPriceInCart(Long cartUserId);

    void deleteAllByCartUser(CartUser idCartUser);
 }

