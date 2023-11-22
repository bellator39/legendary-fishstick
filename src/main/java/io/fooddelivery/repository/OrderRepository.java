package io.fooddelivery.repository;

import io.fooddelivery.entity.Order;
import io.fooddelivery.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order,Long> {
    List<Order>findAllByUserOrder(User user);
}
