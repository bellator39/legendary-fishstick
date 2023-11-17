package io.fooddelivery.repository;

import io.fooddelivery.entity.BlogCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BlogCategoryRepository extends JpaRepository<BlogCategory,Long> {
}
