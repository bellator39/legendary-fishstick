package io.fooddelivery.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Product")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String description;

    @Column(name = "photo_url")
    private String photoUrl;

    private int count;

    private double price;

    private double weight;

    @Column(name = "count_of_buy")
    private int countOfBuy;

    private String status;

    @Column(name = "date_create")
    private Date dateCreate;

    @ManyToOne
    @JoinColumn(name = "category_product_id")
    private CategoryProduct categoryProduct;

    @OneToMany(mappedBy = "product")
    private List<ProductReview> productReviews;

}
