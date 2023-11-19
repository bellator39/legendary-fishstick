package io.fooddelivery.service.implementation;

import io.fooddelivery.entity.Product;
import io.fooddelivery.entity.ProductReview;
import io.fooddelivery.repository.ProductReviewRepository;
import io.fooddelivery.service.api.ProductReviewServiceApi;
import io.fooddelivery.service.api.ProductServiceApi;
import io.fooddelivery.service.util.ProductReviewValidator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductReviewServiceImplementation implements ProductReviewServiceApi {
    private final ProductServiceApi productServiceApi;
    private final ProductReviewRepository productReviewRepository;

    @Override
    public ProductReview saveProductReview(ProductReview productReview) {
        if(ProductReviewValidator.ProductReviewValidation(productReview)) {
            productReview.setDateReview(new Date());
            ProductReview productReviewSaveResult = productReviewRepository.save(productReview);
            log.info("Save new product review for product with id {} in {}",productReviewSaveResult.getProduct().getId(),new Date());
            return productReviewSaveResult;
        }else{
            log.info("Cannot save product review, error with field in {}",new Date());
            return null;
        }
    }

    @Override
    public ProductReview deleteProductReview(Long idProductReview) {
        Optional<ProductReview> productReviewById = productReviewRepository.findById(idProductReview);
        if (productReviewById.isPresent()) {
            log.warn("Delete product review with id - {} in {}",idProductReview,new Date());
            productReviewRepository.delete(productReviewById.get());
            return productReviewById.get();
        }else{
            log.warn("Product review with id - {} was not found in {}",idProductReview,new Date());
            return null;
        }
    }

    @Override
    public List<ProductReview> findAllProductReviewByProduct(Long idProduct) {
        Product productById = productServiceApi.getProductById(idProduct);
        if(productById!=null){
            log.info("Get all review for product with id - {} in {}",idProduct,new Date());
            return productById.getProductReviews();
        }else{
            log.warn("Product with id - {} was not found in {}",idProduct,new Date());
            return null;
        }
    }
}
