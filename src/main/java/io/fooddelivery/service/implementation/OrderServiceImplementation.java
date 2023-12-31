package io.fooddelivery.service.implementation;

import io.fooddelivery.entity.CartProduct;
import io.fooddelivery.entity.Order;
import io.fooddelivery.entity.OrderList;
import io.fooddelivery.entity.User;
import io.fooddelivery.repository.OrderListRepository;
import io.fooddelivery.repository.OrderRepository;
import io.fooddelivery.service.api.CartProductServiceApi;
import io.fooddelivery.service.api.OrderServiceApi;
import io.fooddelivery.service.util.OrderValidator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class OrderServiceImplementation implements OrderServiceApi {

    private final OrderRepository orderRepository;
    private final OrderListRepository orderListRepository;
    private final CartProductServiceApi cartProductServiceApi;
    @Transactional
    @Override
    public Order saveOrder(Order order, List<CartProduct> userProduct) {
        if(OrderValidator.OrderValidation(order)) {
            order.setStatus("In process");
            order.setDateOrder(new Date());
            Order orderSaveResult = orderRepository.save(order);
            List<OrderList> orderListUser = userProduct.stream()
                    .map(o1 -> OrderList.builder()
                            .product(o1.getProduct())
                            .order(order)
                            .count(o1.getCount())
                            .build())
                    .toList();
            orderListRepository.saveAll(orderListUser);
            cartProductServiceApi.clearCartProduct(userProduct.get(0).getCartUser().getId());
            log.info("Save new order with id - {} in {}",orderSaveResult.getId(),new Date());
            return orderSaveResult;
        }else{
            log.info("Error with save order fields in {}", new Date());
            return null;
        }
    }

    @Override
    public Order updateOrder(Order order) {
        if(OrderValidator.OrderValidation(order)) {
            Order orderUpdateResult = orderRepository.save(order);
            log.info("Update order with id - {} in {}",orderUpdateResult.getId(),new Date());
            return orderUpdateResult;
        }else{
            log.info("Error with update order fields in {}", new Date());
            return null;
        }
    }

    @Override
    public List<Order> getAllOrder() {
        log.info("Get all order in {}",new Date());
        return orderRepository.findAll();
    }

    @Override
    public Order getOrderById(Long idOrder) {
        Optional<Order> orderbyid = orderRepository.findById(idOrder);
        if(orderbyid.isPresent()){
            log.info("Get order by id - {} in {}",idOrder,new Date());
            return orderbyid.get();
        }else {
            log.info("Order with id - {} was not found in {}",idOrder,new Date());
            return null;
        }
    }

    @Override
    public List<Order> getAllByUser(Long userId) {
        User user = User.builder()
                .id(userId)
                .build();
        List<Order> orderByUser = orderRepository.findAllByUserOrder(user);
        log.info("Get all order by user with id - {} in {}",user.getId(),new Date());
        return orderByUser;
    }
}
