package io.fooddelivery.service.util;

import io.fooddelivery.entity.Blog;

public class BlogValidator {
    public static boolean BlogValidation(Blog blog){
        return (!blog.getTitle().equals("")&&blog.getTitle().length()>5&&blog.getTitle().length()<50)&&
                (!blog.getText().equals("")&&blog.getText().length()>10&&blog.getTitle().length()<512);
    }
}
