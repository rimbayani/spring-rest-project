package com.nusantara.service;

import com.nusantara.model.Districts;

import java.util.List;
import java.util.Optional;

public interface DistrictsService {
    public List<Districts> getAllDistricts();
    public Optional<Districts> getDistrictsById(Long id);
    public List<Districts> getDistrictsByRegencyId(Long id);
}