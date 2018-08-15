package com.nusantara.rest;
import com.nusantara.error.EntityNotFoundException;
import com.nusantara.model.Provinces;
import com.nusantara.service.ProvincesService;
import com.nusantara.serviceimpl.ProvincesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Optional;

@RestController
public class ProvincesRest extends ProvincesServiceImpl {

    @Autowired
    ProvincesService provincesService;

    @RequestMapping(value = "/provinces")
    public List<Provinces> getAllProvinces() throws EntityNotFoundException {
        return provincesService.getAllProvinces();
    }

    @RequestMapping(value = "/provinces/{id}")
    public Optional<Provinces> getProvincesById(@PathVariable("id") Long id) throws EntityNotFoundException {
        if(!provincesService.getProvincesById(id).isPresent())
            throw new EntityNotFoundException("Pesan error coy");
        return provincesService.getProvincesById(id);
    }
}