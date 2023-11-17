package io.fooddelivery.repository;

import io.fooddelivery.entity.CartUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartUserRepository extends JpaRepository<CartUser,Long> {
}
