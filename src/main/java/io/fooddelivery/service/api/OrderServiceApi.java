package io.fooddelivery.service.api;

import io.fooddelivery.entity.CartProduct;
import io.fooddelivery.entity.Order;
import io.fooddelivery.entity.User;

import java.util.List;

public interface OrderServiceApi {
    Order saveOrder(Order order, List<CartProduct>userProduct);
    Order updateOrder(Order order);
    List<Order>getAllOrder();
    Order getOrderById(Long idOrder);

    List<Order>getAllByUser(Long userIdr);
}
