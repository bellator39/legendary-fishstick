package io.fooddelivery.service.implementation;

import io.fooddelivery.entity.Contacts;
import io.fooddelivery.repository.ContactsRepository;
import io.fooddelivery.service.api.ContactServiceApi;
import io.fooddelivery.service.util.ContactValidator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class ContactServiceImplementation implements ContactServiceApi {

    private final ContactsRepository contactsRepository;

    @Override
    public Contacts saveContact(Contacts contactSave) {
        if(ContactValidator.ContactValidation(contactSave)){
            contactSave.setDateSend(new Date());
            Contacts contactSaveResult = contactsRepository.save(contactSave);
            log.info("Save new contact with id - {} in {}",contactSaveResult.getId(),new Date());
            return contactSaveResult;
        }else{
            log.info("Cannot save contact error with filed in {}",new Date());
            return null;
        }

    }

    @Override
    public Contacts deleteContact(Long idContactDelete) {
        Optional<Contacts> contactById = contactsRepository.findById(idContactDelete);
        if(contactById.isPresent()){
            contactsRepository.delete(contactById.get());
            log.info("Delete contact with id - {} in {}",idContactDelete,new Date());
            return contactById.get();
        }else{
            log.info("Contact with id - {} was not found in {}",idContactDelete, new Date());
            return null;
        }
    }

    @Override
    public List<Contacts> getAll() {
        log.info("Get all contacts in {}",new Date());
        return contactsRepository.findAll();
    }
}
