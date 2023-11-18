package io.fooddelivery.entity;

import javax.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "CartUser")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class CartUser {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(mappedBy = "cartUser")
    private List<CartProduct> cartProducts;

}
