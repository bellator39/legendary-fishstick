package io.fooddelivery.service.util;

import io.fooddelivery.entity.User;

public class UserValidator {
    public static boolean UserValidation(User user){
        return (!user.getLogin().equals("") && user.getLogin().length()>5 && user.getLogin().length()<30)&&
                (!user.getName().equals("")&&user.getName().length()>3&&user.getName().length()<40)&&
                (!user.getSoname().equals("")&&user.getSoname().length()>3&&user.getSoname().length()<40)&&
                (!user.getEmail().equals("")&&user.getEmail().length()>8&&user.getEmail().length()<100)&&
                (!user.getPasswordUser().equals("")&&user.getPassword().length()>8&&user.getPassword().length()<30);
    }
}
