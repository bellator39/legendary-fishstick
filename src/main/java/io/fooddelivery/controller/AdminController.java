package io.fooddelivery.controller;

import io.fooddelivery.entity.Blog;
import io.fooddelivery.entity.BlogCategory;
import io.fooddelivery.entity.CategoryProduct;
import io.fooddelivery.entity.Contacts;
import io.fooddelivery.entity.Order;
import io.fooddelivery.entity.Product;
import io.fooddelivery.entity.ProductReview;
import io.fooddelivery.entity.Role;
import io.fooddelivery.entity.Status;
import io.fooddelivery.entity.User;
import io.fooddelivery.repository.BlogCategoryRepository;
import io.fooddelivery.repository.CategoryProductRepository;
import io.fooddelivery.repository.ProductReviewRepository;
import io.fooddelivery.service.api.BlogServiceApi;
import io.fooddelivery.service.api.ContactServiceApi;
import io.fooddelivery.service.api.OrderServiceApi;
import io.fooddelivery.service.api.ProductServiceApi;
import io.fooddelivery.service.api.UserServiceApi;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
@Slf4j
public class AdminController {

  private final ProductServiceApi productServiceApi;
  private final BlogServiceApi blogServiceApi;
  private final UserServiceApi userServiceApi;
  private final OrderServiceApi orderServiceApi;
  private final ContactServiceApi contactServiceApi;

  private final BlogCategoryRepository blogCategoryRepository;
  private final CategoryProductRepository categoryProductRepository;

  private final ProductReviewRepository productReviewRepository;

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @GetMapping("/dashboard")
  public String adminDashboard(Model model) {
    List<Order> listOrder = orderServiceApi.getAllOrder();
    List<User> listUser = userServiceApi.getAllUser();
    List<Contacts> listContact = contactServiceApi.getAll();
    List<ProductReview> listProductReview = productReviewRepository.findAll();
    List<Product> mostReviewProduct = productServiceApi.getMostReviewProduct().stream().limit(10)
        .collect(
            Collectors.toList());

    double totalOrderPrice = listOrder.stream().mapToDouble(Order::getTotalPrice).sum();

    model.addAttribute("orderList", listOrder);
    model.addAttribute("userList", listUser);
    model.addAttribute("contactList", listContact);
    model.addAttribute("listProductReview", listProductReview);
    model.addAttribute("totalOrderPrice", totalOrderPrice);
    model.addAttribute("mostReviewProduct", mostReviewProduct);
    model.addAttribute("productCategory", categoryProductRepository.findAll());
    return "admin_page/adminDashboardPage";
  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @GetMapping("/listproduct")
  public String listProduct(Model model) {
    List<Product> productList = productServiceApi.getAllProduct();
    model.addAttribute("listProducts", productList);
    return "admin_page/listProductPage";
  }

  @PreAuthorize("hasAuthority('ADMIN')")
  @GetMapping("/addproduct")
  public String addProduct(Model model) {
    List<CategoryProduct> categoryProductList = categoryProductRepository.findAll();
    model.addAttribute("listCategory", categoryProductList);
    return "admin_page/addProductPage";
  }

  @PreAuthorize("hasAuthority('ADMIN')")
  @PostMapping("/addproduct")
  public String addProduct(@RequestParam("name") String name,
      @RequestParam("description") String description,
      @RequestParam("price") String price,
      @RequestParam("weight") String weight,
      @RequestParam("photo_url") String photo_url,
      @RequestParam("category") Long idCategory,
      @RequestParam("count") Integer count,
      Model model) {
    Product product = Product.builder()
        .name(name)
        .description(description)
        .price(Double.parseDouble(price.replace(',', '.')))
        .weight(Double.parseDouble(weight.replace(',', '.')))
        .photoUrl(photo_url)
        .count(count)
        .build();

    Product productSave = productServiceApi.saveProduct(product, idCategory);
    if (productSave != null) {
      return "redirect:/admin/listproduct";
    } else {
      List<CategoryProduct> categoryProductList = categoryProductRepository.findAll();
      model.addAttribute("listCategory", categoryProductList);
      model.addAttribute("message", String.format("Product with name %s already exists!", name));
      return "admin_page/addProductPage";
    }
  }

  @PreAuthorize("hasAuthority('ADMIN')")
  @GetMapping("/editproduct/{id}")
  public String editProduct(@PathVariable("id") Long id, Model model) {
    List<CategoryProduct> categoryProductList = categoryProductRepository.findAll();
    model.addAttribute("listCategory", categoryProductList);

    Product productById = productServiceApi.getProductById(id);
    model.addAttribute("productById", productById);
    return "admin_page/editProductPage";
  }

  @PreAuthorize("hasAuthority('ADMIN')")
  @PostMapping("/editproduct/{id}")
  public String editProduct(@PathVariable("id") Long id,
      @RequestParam("name") String name,
      @RequestParam("description") String description,
      @RequestParam("price") String price,
      @RequestParam("weight") String weight,
      @RequestParam("photo_url") String photo_url,
      @RequestParam("category") Long idCategory,
      @RequestParam("count") Integer count,
      Model model) {
    Product productUpdate = productServiceApi.getProductById(id);
    productUpdate.setName(name);
    productUpdate.setDescription(description);
    productUpdate.setPrice(Double.parseDouble(price.replace(',', '.')));
    productUpdate.setWeight(Double.parseDouble(weight.replace(',', '.')));
    productUpdate.setPhotoUrl(photo_url);
    productUpdate.setCategoryProduct(CategoryProduct.builder().id(idCategory).build());
    productUpdate.setCount(count);

    Product productUpdateResult = productServiceApi.updateProduct(productUpdate);
    if (productUpdateResult != null) {
      return "redirect:/admin/listproduct";
    } else {
      List<CategoryProduct> categoryProductList = categoryProductRepository.findAll();
      model.addAttribute("listCategory", categoryProductList);
      model.addAttribute("message", String.format("Product with name %s already exists!", name));
      return "admin_page/editProductPage";
    }
  }

  @PreAuthorize("hasAuthority('ADMIN')")
  @GetMapping("/deleteproduct/{id}")
  public String deleteProduct(@PathVariable("id") Long idProduct, Model model) {
    Product productDelete = productServiceApi.deleteProduct(idProduct);
    return "redirect:/amdin/listproduct";
  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @GetMapping("/listuser")
  public String listUser(Model model) {
    List<User> userList = userServiceApi.getAllUser();
    model.addAttribute("listUser", userList);
    return "admin_page/listUserPage";
  }

  @PreAuthorize("hasAuthority('ADMIN')")
  @GetMapping("/edituser/{id}")
  public String editUser(@PathVariable("id") Long idUser, Model model) {
    User userById = userServiceApi.getUserById(idUser);
    model.addAttribute("idUser", idUser);
    model.addAttribute("userEdit", userById);
    model.addAttribute("roles", Role.values());
    model.addAttribute("status", Status.values());
    return "admin_page/editUserPage";
  }

  @PreAuthorize("hasAuthority('ADMIN')")
  @PostMapping("/edituser/{id}")
  public String editUser(@PathVariable("id") Long idUser,
      @RequestParam("name") String name,
      @RequestParam("soname") String soname,
      @RequestParam("status") String status,
      @RequestParam("role") String role, Model model) {
    User userById = userServiceApi.getUserById(idUser);
    userById.setName(name);
    userById.setSoname(soname);
    userById.setStatus(Status.valueOf(status));
    userById.setUserRole(Role.valueOf(role));

    User userUpdateResult = userServiceApi.updateUser(userById);
    if (userUpdateResult != null) {
      return "redirect:/admin/listuser";
    } else {
      model.addAttribute("message", "Something was wrong try yet!");
      model.addAttribute("idUser", idUser);
      model.addAttribute("userEdit", userById);
      model.addAttribute("roles", Role.values());
      model.addAttribute("status", Status.values());
      return "admin_page/editUserPage";
    }
  }

  @PreAuthorize("hasAuthority('ADMIN')")
  @GetMapping("/deleteuser/{id}")
  public String deleteUser(@PathVariable("id") Long id) {
    User userById = userServiceApi.getUserById(id);
    userById.setStatus(Status.BLOCKED);
    userServiceApi.updateUser(userById);
    return "redirect:/admin/listuser";
  }


  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @GetMapping("/listorder")
  public String listOrder(Model model) {
    List<Order> orderList = orderServiceApi.getAllOrder();
    model.addAttribute("listOrder", orderList);
    return "admin_page/listOrderPage";
  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @GetMapping("/editorder/{id}")
  public String editOrderPage(@PathVariable("id") Long id, Model model) {
    Order orderById = orderServiceApi.getOrderById(id);
    model.addAttribute("orderEdit", orderById);
    model.addAttribute("idOrder", id);
    return "admin_page/editOrderPage";
  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @PostMapping("/editorder/{id}")
  public String editOrder(@PathVariable("id") Long id,
      @RequestParam("name") String name,
      @RequestParam("soname") String soname,
      @RequestParam("street") String street,
      @RequestParam("city") String city,
      @RequestParam("email") String email,
      @RequestParam("status") String status,
      Model model) {
    Order orderById = orderServiceApi.getOrderById(id);
    orderById.setName(name);
    orderById.setSoname(soname);
    orderById.setStatus(soname);
    orderById.setStreet(street);
    orderById.setCity(city);
    orderById.setEmail(email);
    orderById.setStatus(status);

    Order orderUpdateResult = orderServiceApi.updateOrder(orderById);

    if (orderUpdateResult != null) {
      return "redirect:/admin/listorder";
    } else {
      model.addAttribute("message", "Something was wrong try yet!");
      model.addAttribute("orderEdit", orderById);
      model.addAttribute("idOrder", id);
      return "admin_page/editOrderPage";
    }

  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @GetMapping("/listcontacts")
  public String listContact(Model model) {
    List<Contacts> contactsList = contactServiceApi.getAll();
    model.addAttribute("listContacts", contactsList);
    return "admin_page/listContactsPage";
  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @GetMapping("/deletecontact/{id}")
  public String deleteContact(@PathVariable("id") Long id) {
    contactServiceApi.deleteContact(id);
    return "redirect:/admin/listcontacts";
  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @GetMapping("/listblogs")
  public String listBlogs(Model model) {
    List<Blog> blogList = blogServiceApi.getAllBlogs();
    model.addAttribute("listBlog", blogList);
    return "admin_page/listBlogsPage";
  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @GetMapping("/addblog")
  public String addBlog(Model model) {
    model.addAttribute("blogCategory", blogCategoryRepository.findAll());
    return "admin_page/addBlogPage";
  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @PostMapping("/addblog")
  public String addBlog(@RequestParam("title") String title,
      @RequestParam("author") String author,
      @RequestParam("photo_url") String photo_url,
      @RequestParam("text") String text,
      @RequestParam("category") Long category,
      Model model) {
    Blog blog = Blog.builder()
        .title(title)
        .text(text)
        .photoUrl(photo_url)
        .author(author)
        .build();
    Blog blogSaveResult = blogServiceApi.saveBlog(blog, category);

    if (blogSaveResult != null) {
      return "redirect:/admin/listblogs";
    } else {
      model.addAttribute("blogCategory", blogCategoryRepository.findAll());
      model.addAttribute("message", "Something was wrong, try yet");
      return "admin_page/addBlogPage";
    }

  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @GetMapping("/editblog/{id}")
  public String editBlog(@PathVariable("id") Long id, Model model) {
    Blog blogEdit = blogServiceApi.getBlogById(id);
    model.addAttribute("editBlog", blogEdit);
    model.addAttribute("blogCategory", blogCategoryRepository.findAll());
    model.addAttribute("blogId", id);
    return "admin_page/editBlogPage";
  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @PostMapping("/editblog/{id}")
  public String editBlog(@PathVariable("id") Long id,
      @RequestParam("title") String title,
      @RequestParam("author") String author,
      @RequestParam("photo_url") String photo_url,
      @RequestParam("text") String text,
      @RequestParam("category") Long category,
      Model model) {
    Blog blog = blogServiceApi.getBlogById(id);
    blog.setText(text);
    blog.setTitle(title);
    blog.setAuthor(author);
    blog.setPhotoUrl(photo_url);
    blog.setBlogCategory(BlogCategory.builder().id(category).build());

    Blog blogUpdateResult = blogServiceApi.updateBlog(blog);

    if (blogUpdateResult != null) {
      return "redirect:/admin/listblogs";
    } else {
      model.addAttribute("editBlog", blog);
      model.addAttribute("blogCategory", blogCategoryRepository.findAll());
      model.addAttribute("blogId", id);
      model.addAttribute("message", "Something was wrong, try yet");
      return "admin_page/editBlogPage";
    }
  }

  @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR')")
  @GetMapping("/deleteblog/{id}")
  public String deleteBlog(@PathVariable("id") Long id) {
    blogServiceApi.deleteBlog(id);
    return "redirect:/admin/listblogs";
  }

}
