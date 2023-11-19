package io.fooddelivery.service.api;

import io.fooddelivery.entity.Product;
import io.fooddelivery.entity.ProductReview;

import java.util.List;

public interface ProductReviewServiceApi {
    ProductReview saveProductReview(ProductReview productReview);
    ProductReview deleteProductReview(Long idProductReview);
    List<ProductReview>findAllProductReviewByProduct(Long idProduct);
}
