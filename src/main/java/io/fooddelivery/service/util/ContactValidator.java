package io.fooddelivery.service.util;

import io.fooddelivery.entity.Contacts;

public class ContactValidator {
    public static boolean ContactValidation(Contacts contacts){
        return (!contacts.getName().equals("")&&contacts.getName().length()>3&&contacts.getName().length()<40)&&
                (!contacts.getEmail().equals("")&&!contacts.getMessage().equals(""));
    }
}
