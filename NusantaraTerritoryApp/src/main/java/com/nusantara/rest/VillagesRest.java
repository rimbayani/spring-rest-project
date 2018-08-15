package com.nusantara.rest;

import com.nusantara.error.EntityNotFoundException;
import com.nusantara.model.Villages;
import com.nusantara.service.VillagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(value = "/villages")
public class VillagesRest {

    @Autowired
    private VillagesService villagesService;

    @RequestMapping
    public List<Villages> getAllVillages() throws EntityNotFoundException {
        return villagesService.getAllVillages();
    }

    @RequestMapping(value = "/{id}")
    public Optional<Villages> getVillageById(@PathVariable("id") Long id) throws EntityNotFoundException{
        return villagesService.getVillagesById(id);
    }

    @RequestMapping(value = "/district/{id}")
    public List<Villages> getAllVillagesByDistrictId(@PathVariable("id") Long id)throws EntityNotFoundException{
        return villagesService.getAllVillagesByDistrictId(id);
    }
}