package io.fooddelivery.controller;

import io.fooddelivery.entity.User;
import io.fooddelivery.service.api.UserServiceApi;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
@Slf4j
@RequiredArgsConstructor
public class UserController {
    private final UserServiceApi userService;


    @GetMapping("/signup")
    public String signUpUser(Model model){
        return "signup";
    }

    @PostMapping("/signup")
    public String signUpUser(@RequestParam("name")String name,
                             @RequestParam("name")String soname,
                             @RequestParam("name")String email,
                             @RequestParam("name")String password,
                             @RequestParam("name")String login, Model model){

        User user = User.builder()
                .name(name)
                .soname(soname)
                .login(login)
                .email(email)
                .passwordUser(password)
                .build();
        User userSaveResult = userService.saveUser(user);
        if(userSaveResult==null){
            model.addAttribute("message",String.format("User with login - %s already exists",login));
            return "signup";
        }else {
            return "redirect:/login";
        }
    }

}
