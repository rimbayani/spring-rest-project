package com.nusantara.service;

import com.nusantara.error.EntityNotFoundException;
import com.nusantara.model.Regencies;
import java.util.List;
import java.util.Optional;

public interface RegenciesService {
    public List<Regencies> getAllRegencies() throws EntityNotFoundException;
    public Optional<Regencies> getRegenciesById(Long id) throws EntityNotFoundException;
    public List<Regencies> getAllRegenciesByProvincesId(Long id) throws EntityNotFoundException;
}