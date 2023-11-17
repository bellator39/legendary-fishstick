package io.fooddelivery.repository;

import io.fooddelivery.entity.OrderList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderListRepository extends JpaRepository<OrderList,Long> {
}
