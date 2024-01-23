package io.fooddelivery.service.implementation;

import io.fooddelivery.entity.CartUser;
import io.fooddelivery.entity.Role;
import io.fooddelivery.entity.Status;
import io.fooddelivery.entity.User;
import io.fooddelivery.repository.CartUserRepository;
import io.fooddelivery.repository.UserRepository;
import io.fooddelivery.service.api.UserServiceApi;
import javax.transaction.Transactional;

import io.fooddelivery.service.util.UserValidator;
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
            log.warn("User with username - {} already exists in {}",user.getUsername(),new Date());
            return null;
        }
        user.setPasswordUser(passwordEncoder.encode(user.getPassword()));
        user.setUserRole(Role.USER);
        user.setDateRegister(new Date());
        user.setStatus(Status.ACTIVE);
        User userSave = userRepository.save(user);
        log.info("Save new user with login - {} in {}",user.getLogin(),new Date());

        CartUser cartNewUser = CartUser.builder()
                .user(userSave)
                .build();
        userSave.setCartUsers(cartNewUser);
        log.info("Set new user cart with id - {} in {}",cartNewUser.getId(),new Date());
        cartUserRepository.save(cartNewUser);

        return userSave;
    }

    @Override
    public User updateUser(User user) {
        if(UserValidator.UserValidation(user)){
            log.warn("Error with user fields in {}",new Date());
            return null;
        }
        User updateResult = userRepository.save(user);
        log.info("Update user with id - {} in {}",updateResult.getId(),new Date());
        return updateResult;
    }

    @Override
    public User getUserById(Long idUser) {
        Optional<User> userById = userRepository.findById(idUser);
        if(userById.isPresent()){
            log.info("Get user with id - {} in {}",idUser,new Date());
            return userById.get();
        }else{
            log.warn("User with id - {} was not found in {}",idUser,new Date());
            return null;
        }

    }

    @Override
    public Long deleteUserById(Long idUser) {
        Optional<User> userById = userRepository.findById(idUser);
        if(userById.isPresent()){
            log.info("Delete user with id - {} in {}",idUser,new Date());
            userRepository.delete(userById.get());
            return idUser;
        }else{
            log.warn("User with id - {} was not found in {}",idUser,new Date());
            return null;
        }
    }

    @Override
    public List<User> getAllUser() {
        log.info("Get all user in {}",new Date());
        return userRepository.findAll();
    }

    @Override
    public User getUserByLogin(String login) {
        Optional<User> optionalUser = userRepository.getUserByLogin(login);
        if(optionalUser.isPresent()){
            log.info("Get user with login - {} in {}",login,new Date());
            return optionalUser.get();
        }else{
            log.warn("User with login - {} was not found in {}",login,new Date());
            return null;
        }
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> optionalUser = userRepository.getUserByLogin(username);
        if(optionalUser.isPresent()){
            log.info("Get user by username in {}",new Date());
            return optionalUser.get();
        }else{
            log.info("User with username was not found");
            throw new UsernameNotFoundException("User with username not found");
        }
    }
}
