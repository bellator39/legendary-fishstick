package io.fooddelivery.service.api;

import io.fooddelivery.entity.Contacts;

import java.util.List;

public interface ContactServiceApi {
    Contacts saveContact(Contacts contactSave);
    Contacts deleteContact(Long idContactDelete);
    List<Contacts>getAll();
}
