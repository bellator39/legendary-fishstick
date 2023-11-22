package io.fooddelivery.service.implementation;

import io.fooddelivery.entity.Blog;
import io.fooddelivery.entity.BlogCategory;
import io.fooddelivery.repository.BlogCategoryRepository;
import io.fooddelivery.repository.BlogRepository;
import io.fooddelivery.service.api.BlogServiceApi;
import io.fooddelivery.service.util.BlogValidator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class BlogServiceImplementation implements BlogServiceApi {

    private final BlogRepository blogRepository;
    private final BlogCategoryRepository blogCategoryRepository;

    @Override
    public Blog saveBlog(Blog blogSave,Long idCategory) {
        if(BlogValidator.BlogValidation(blogSave)){
            BlogCategory blogCategory = blogCategoryRepository.findById(idCategory).get();
            blogSave.setBlogCategory(blogCategory);
            blogSave.setDateCreate(new Date());
            Blog blogSaveResult = blogRepository.save(blogSave);
            log.info("Save new blog with id - {} in {}",blogSaveResult.getId(),new Date());
            return blogSaveResult;
        }else{
            log.info("Cannot save new blog error with blog fields in {}", new Date());
            return null;
        }

    }

    @Override
    public Blog updateBlog(Blog blogUpdate) {
        if(BlogValidator.BlogValidation(blogUpdate)) {
            Blog blogUpdateResult = blogRepository.save(blogUpdate);
            log.info("Update blog with id {} in {}",blogUpdateResult.getId(),new Date());
            return blogUpdateResult;
        }else{
            log.info("Cannot update blog error with blog fields in {}", new Date());
            return null;
        }
    }

    @Override
    public Blog getBlogById(Long idBlog) {
        Optional<Blog> blogById = blogRepository.findById(idBlog);
        if(blogById.isPresent()){
            log.info("Get blog with id - {} in {}",idBlog,new Date());
            return blogById.get();
        }else{
            log.info("Blog with id - {} was not found in {}",idBlog,new Date());
            return null;
        }
    }

    @Override
    public Blog deleteBlog(Long idBlog) {
        Optional<Blog> blogById = blogRepository.findById(idBlog);
        if(blogById.isPresent()){
            log.info("Delete blog with id - {} in {}",idBlog,new Date());
            blogRepository.delete(blogById.get());
            return blogById.get();
        }else{
            log.info("Blog with id - {} was not found in {}",idBlog,new Date());
            return null;
        }
    }

    @Override
    public List<Blog> getAllBlogs() {
        log.info("Get all blogs in {}",new Date());
        return blogRepository.findAll();
    }

    @Override
    public List<Blog> getAllByBlogCategory(Long idCategoryBlog) {
        Optional<BlogCategory> blogCategory = blogCategoryRepository.findById(idCategoryBlog);
        if(blogCategory.isPresent()){
            log.info("Get all blog with category id - {} in {}",idCategoryBlog,new Date());
            return blogCategory.get().getBlogs();
        }else{
            log.info("Blog category with id - {} was not found in {}",idCategoryBlog,new Date());
            return null;
        }
    }

    @Override
    public List<Blog> findBlogsByNameLike(String name) {
        if(name.equals("")){
            log.info("Name equals empty string, return all in {}",new Date());
            return blogRepository.findAll();
        }else{
            log.info("Get all blog by name - {} in {}",name,new Date());
            return blogRepository.findBlogsByNameLike(name);
        }
    }
}
