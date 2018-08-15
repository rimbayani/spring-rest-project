package com.nusantara.service;

import com.nusantara.error.EntityNotFoundException;
import com.nusantara.model.Provinces;

import java.util.List;
import java.util.Optional;

public interface ProvincesService {
    public List<Provinces> getAllProvinces() throws EntityNotFoundException;
    public Optional<Provinces> getProvincesById(Long id) throws EntityNotFoundException;

}
