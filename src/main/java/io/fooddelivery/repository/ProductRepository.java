package io.fooddelivery.repository;

import io.fooddelivery.entity.CategoryProduct;
import io.fooddelivery.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product,Long> {

    @Query("SELECT p, COUNT(pr) AS reviewCount " +
            "FROM Product p LEFT JOIN p.productReviews pr " +
            "GROUP BY p.id " +
            "ORDER BY reviewCount DESC")
    List<Product> findProductsWithMostReviews();

    List<Product>findAllByCategoryProduct(CategoryProduct categoryProduct);
    @Query("SELECT p FROM Product p " +
            "WHERE p.price BETWEEN :minPrice AND :maxPrice " +
            "ORDER BY p.price ASC")
    List<Product> findProductsByPriceRange(@Param("minPrice") double minPrice, @Param("maxPrice") double maxPrice);

    @Query("SELECT p FROM Product p WHERE LOWER(p.name) LIKE LOWER(CONCAT('%', :keyword, '%'))")
    List<Product> findProductsByNameLike(@Param("keyword") String keyword);

    boolean existsByName(String name);
}
