package io.fooddelivery.entity;

import javax.persistence.*;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Users")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class User implements UserDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String login;

    private String name;

    private String soname;

    private String email;

    private String passwordUser;

    @Enumerated(EnumType.STRING)
    private Status status;

    @Column(name = "date_register")
    private Date dateRegister;

    @Enumerated(EnumType.STRING)
    private Role userRole;

    @OneToOne(mappedBy = "user")
    private CartUser cartUsers;

    @OneToMany(mappedBy = "userOrder")
    private List<Order>orderList;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Collections.singleton(userRole);
    }

    @Override
    public String getPassword() {
        return getPasswordUser();
    }

    @Override
    public String getUsername() {
        return getLogin();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public Long getCartId(){
        return getCartUsers().getId();
    }


}
