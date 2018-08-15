package com.nusantara.service;

import com.nusantara.error.EntityNotFoundException;
import com.nusantara.model.Villages;
import java.util.List;
import java.util.Optional;

public interface VillagesService {
    public List<Villages> getAllVillages() throws EntityNotFoundException;
    public Optional<Villages> getVillagesById(Long id) throws EntityNotFoundException;
    public List<Villages> getAllVillagesByDistrictId(Long id) throws EntityNotFoundException;
}