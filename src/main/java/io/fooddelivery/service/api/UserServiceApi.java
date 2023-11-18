package io.fooddelivery.service.api;

import io.fooddelivery.entity.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserServiceApi extends UserDetailsService {
    User saveUser(User user);
    User updateUser(User user);
    User getUserById(Long idUser);
    Long deleteUserById(Long idUser);
    List<User>getAllUser();
    User getUserByLogin(String login);
}
