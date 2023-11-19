package io.fooddelivery.service.util;

import io.fooddelivery.entity.ProductReview;

public class ProductReviewValidator {
    public static boolean ProductReviewValidation(ProductReview productReview){
        return (!productReview.getName().equals("")&&productReview.getName().length()>3&&productReview.getName().length()<40)&&
                (!productReview.getSoname().equals("")&&productReview.getSoname().length()>3&&productReview.getSoname().length()<40);
    }
}
