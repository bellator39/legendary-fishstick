package io.fooddelivery.entity;

import javax.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Table(name = "CartProduct")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class CartProduct {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "cart_user_id")
    private CartUser cartUser;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    private int count;

    @Column(name = "date_add")
    private Date dateAdd;


}
