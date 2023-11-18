package io.fooddelivery.entity;

import javax.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Table(name = "Contacts")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class Contacts {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String email;

    private String message;

    @Column(name = "date_send")
    private Date dateSend;

}
