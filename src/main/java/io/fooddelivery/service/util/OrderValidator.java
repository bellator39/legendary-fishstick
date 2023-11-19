package io.fooddelivery.service.util;

import io.fooddelivery.entity.Order;

public class OrderValidator {
    public static boolean OrderValidation(Order order){
        return (!order.getName().equals("")&&order.getName().length()>3&&order.getName().length()<40)&&
                (!order.getSoname().equals("")&&order.getSoname().length()>3&&order.getSoname().length()<40)&&
                (!order.getPhone().equals("")&&order.getPhone().length()>8&&order.getPhone().length()<40);
    }
}
