package io.fooddelivery.service.implementation;

import io.fooddelivery.entity.CartUser;
import io.fooddelivery.entity.Role;
import io.fooddelivery.entity.Status;
import io.fooddelivery.entity.User;
import io.fooddelivery.repository.CartUserRepository;
import io.fooddelivery.repository.UserRepository;
import io.fooddelivery.service.api.UserServiceApi;
import javax.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserServiceImplementation implements UserServiceApi {

    private final UserRepository userRepository;
    private final BCryptPasswordEncoder passwordEncoder;
    private final CartUserRepository cartUserRepository;

    @Transactional
    @Override
    public User saveUser(User user) {
        Optional<User> userByLogin = userRepository.getUserByLogin(user.getLogin());
        if(userByLogin.isPresent()){
            return null;
        }
        user.setPasswordUser(passwordEncoder.encode(user.getPassword()));
        user.setUserRole(Role.USER);
        user.setDateRegister(new Date());
        user.setStatus(Status.ACTIVE);
        User userSave = userRepository.save(user);
        CartUser cartNewUser = CartUser.builder()
                .user(userSave)
                .build();
        userSave.setCartUsers(cartNewUser);
        cartUserRepository.save(cartNewUser);
        return userSave;
    }

    @Override
    public User updateUser(User user) {
        return null;
    }

    @Override
    public User getUserById(Long idUser) {
        return null;
    }

    @Override
    public Long deleteUserById(Long idUser) {
        return null;
    }

    @Override
    public List<User> getAllUser() {
        return null;
    }

    @Override
    public User getUserByLogin(String login) {
        return null;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> optionalUser = userRepository.getUserByLogin(username);
        if(optionalUser.isPresent()){
            return optionalUser.get();
        }else{
            throw new UsernameNotFoundException("User with username not found");
        }
    }
}
