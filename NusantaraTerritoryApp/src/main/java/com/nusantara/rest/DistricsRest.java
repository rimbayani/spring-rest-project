package com.nusantara.rest;
import com.nusantara.model.Districts;
import com.nusantara.service.DistrictsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(value = "/districts")
public class DistricsRest {

    @Autowired
    private DistrictsService districtsService;

    @RequestMapping
    public List<Districts> getAllDistricts(){
        return districtsService.getAllDistricts();
    }

    @RequestMapping(value = "/{id}")
    public Optional<Districts> getDistrictsById(@PathVariable("id") Long id){
        return districtsService.getDistrictsById(id);
    }

    @RequestMapping(value = "/regency/{id}")
    public List<Districts> getAllDistrictsByRegencyId(@PathVariable("id") Long id){
        return districtsService.getDistrictsByRegencyId(id);
    }
}
