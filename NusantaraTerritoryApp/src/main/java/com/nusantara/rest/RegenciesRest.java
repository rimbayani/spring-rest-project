package com.nusantara.rest;

import com.nusantara.error.EntityNotFoundException;
import com.nusantara.model.Regencies;
import com.nusantara.service.RegenciesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(value = "/regencies")
public class RegenciesRest {

    @Autowired
    RegenciesService regenciesService;

    @RequestMapping
    public List<Regencies> getAllRegencies() throws EntityNotFoundException {
        return regenciesService.getAllRegencies();
    }

    @RequestMapping(value = "/{id}")
    public Optional<Regencies> getRegenciesById(@PathVariable("id") Long id) throws EntityNotFoundException{
        return regenciesService.getRegenciesById(id);
    }

    @RequestMapping(value = "/province/{id}")
    public List<Regencies> getRegenciesByProvinceId(@PathVariable("id") Long id) throws EntityNotFoundException{
        return regenciesService.getAllRegenciesByProvincesId(id);
    }
}
