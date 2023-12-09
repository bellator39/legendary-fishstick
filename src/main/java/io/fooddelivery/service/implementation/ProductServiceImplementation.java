package io.fooddelivery.service.implementation;

import io.fooddelivery.entity.CategoryProduct;
import io.fooddelivery.entity.Product;
import io.fooddelivery.repository.CategoryProductRepository;
import io.fooddelivery.repository.ProductRepository;
import io.fooddelivery.service.api.ProductServiceApi;
import io.fooddelivery.service.util.ProductValidator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductServiceImplementation implements ProductServiceApi {

    private final ProductRepository productRepository;
    private final CategoryProductRepository categoryProductRepository;

    @Override
    public Product saveProduct(Product product, Long idCategory) {
         if(ProductValidator.ProductValidation(product)&&!productRepository.existsByName(product.getName())) {
            product.setDateCreate(new Date());
            product.setCountOfBuy(0);
            product.setStatus("In Stock");
            product.setCategoryProduct(CategoryProduct.builder().id(idCategory).build());
            log.info("Save new product with name - {} in {}",product.getName(),new Date());
             Product productResultSave = productRepository.save(product);
             return productResultSave;
        }else {
            log.warn("Cannot save product error with field in {}", new Date());
            return null;
        }
    }

    @Override
    public Product updateProduct(Product product) {
        if(ProductValidator.ProductValidation(product)) {
            log.info("Update product with name - {} in {}",product.getName(),new Date());
            Product productUpdateResult = productRepository.save(product);
            return productUpdateResult;
        }else {
            log.warn("Cannot update product error with field in {}", new Date());
            return null;
        }
    }

    @Override
    public Product getProductById(Long idProduct) {
        Optional<Product> productById = productRepository.findById(idProduct);
        if (productById.isPresent()){
            log.info("Get product by id with {} in {}",idProduct,new Date());
            return productById.get();
        }else{
            log.warn("Product with id - {} was not found in {}",idProduct,new Date());
            return null;
        }
    }

    @Override
    public Product deleteProduct(Long idProduct) {
        Optional<Product> productById = productRepository.findById(idProduct);
        if (productById.isPresent()){
            log.info("Get product by id with {} in {}",idProduct,new Date());
            productRepository.delete(productById.get());
            return productById.get();
        }else{
            log.warn("Product with id - {} was not found in {}",idProduct,new Date());
            return null;
        }
    }

    @Override
    public List<Product> getAllProduct() {
        log.info("Get all product in {}",new Date());
        return productRepository.findAll();
    }

    @Override
    public List<Product> getAllByCategory(CategoryProduct categoryProduct) {
        log.info("Get all product by category {} in {}",categoryProduct.getName(),new Date());
        return productRepository.findAllByCategoryProduct(categoryProduct);
    }

    @Override
    public List<Product> getAllByRangePrice(Double lowPrice, Double highPrice) {
        if(lowPrice>0 && lowPrice<highPrice){
            log.info("Get all product by price with min {} and max {} in {}",lowPrice,highPrice,new Date());
            return productRepository.findProductsByPriceRange(lowPrice,highPrice);
        }else{
            log.warn("Error with price in {}",new Date());
            return null;
        }
    }

    @Override
    public List<Product> getAllByName(String name) {
       if(name.equals("")){
           log.warn("Get product all, name equals empty string in {}",new Date());
           return productRepository.findAll();
       }else{
           log.info("Get all product with name {} in {}",name,new Date());
           return productRepository.findProductsByNameLike(name);
       }
    }

    @Override
    public List<Product> getMostReviewProduct() {
        log.info("Get more reviewed product in {}",new Date());
        return productRepository.findProductsWithMostReviews();
    }
}
