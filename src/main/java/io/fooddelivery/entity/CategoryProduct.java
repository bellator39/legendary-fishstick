package io.fooddelivery.entity;


import javax.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "Category_Product")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class CategoryProduct {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String description;

    @OneToMany(mappedBy = "categoryProduct")
    private List<Product> products;

}
