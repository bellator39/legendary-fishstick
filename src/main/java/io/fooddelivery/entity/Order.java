package io.fooddelivery.entity;

import javax.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Orders")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String soname;

    private String city;

    private String street;

    private String phone;

    private String email;

    @ManyToOne
    private User userOrder;

    @Column(name = "order_notes")
    private String orderNotes;

    @Column(name = "total_price")
    private double totalPrice;

    private String status;

    @Column(name = "date_order")
    private Date dateOrder;

    @OneToMany(mappedBy = "order",fetch = FetchType.EAGER)
    private List<OrderList> orderLists = new ArrayList<OrderList>();

}
