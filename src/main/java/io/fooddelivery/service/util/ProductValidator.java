package io.fooddelivery.service.util;

import io.fooddelivery.entity.Product;

public class ProductValidator {
    public static boolean ProductValidation(Product product){
        return (!product.getName().equals("")&&product.getName().length()>5&&product.getName().length()<45)&&
                (!product.getDescription().equals("")&&product.getDescription().length()>15&&product.getDescription().length()<255)&&
                (product.getCount()>0)&&(product.getWeight()>0)&&(product.getPrice()>0);
    }
}
