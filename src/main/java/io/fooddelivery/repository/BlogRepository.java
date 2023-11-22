package io.fooddelivery.repository;

import io.fooddelivery.entity.Blog;
import io.fooddelivery.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BlogRepository extends JpaRepository<Blog,Long> {
    @Query("SELECT b FROM Blog b WHERE LOWER(b.title) LIKE LOWER(CONCAT('%', :keyword, '%'))")
    List<Blog> findBlogsByNameLike(@Param("keyword") String keyword);
}
