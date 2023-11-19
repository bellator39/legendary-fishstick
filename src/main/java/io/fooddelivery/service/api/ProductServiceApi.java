package io.fooddelivery.service.api;

import io.fooddelivery.entity.CategoryProduct;
import io.fooddelivery.entity.Product;
import io.fooddelivery.entity.ProductReview;

import java.util.List;

public interface ProductServiceApi {
    Product saveProduct(Product product,Long idCategory);
    Product updateProduct(Product product);
    Product getProductById(Long idProduct);
    List<Product>getAllProduct();
    List<Product>getAllByCategory(CategoryProduct categoryProduct);
    List<Product>getAllByRangePrice(Double lowPrice,Double highPrice);
    List<Product>getAllByName(String name);
    List<Product>getMostReviewProduct();
}
