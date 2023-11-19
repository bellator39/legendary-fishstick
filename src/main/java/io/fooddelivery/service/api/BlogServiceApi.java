package io.fooddelivery.service.api;

import io.fooddelivery.entity.Blog;

import java.util.List;

public interface BlogServiceApi {
    Blog saveBlog(Blog blogSave,Long idCategory);
    Blog updateBlog(Blog blogUpdate);
    Blog getBlogById(Long idBlog);
    Blog deleteBlog(Long idBlog);
    List<Blog>getAllBlogs();
    List<Blog>getAllByBlogCategory(Long idCategoryBlog);
}
