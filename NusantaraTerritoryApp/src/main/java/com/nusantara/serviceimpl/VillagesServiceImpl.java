package com.nusantara.serviceimpl;

import com.nusantara.error.EntityNotFoundException;
import com.nusantara.model.Villages;
import com.nusantara.repositories.VillagesRepository;
import com.nusantara.service.VillagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class VillagesServiceImpl implements VillagesService {

    @Autowired
    private VillagesRepository villagesRepository;


    @Override
    public List<Villages> getAllVillages() throws EntityNotFoundException {
        return villagesRepository.findAll();
    }

    @Override
    public Optional<Villages> getVillagesById(Long id) throws EntityNotFoundException {
        return villagesRepository.findById(id);
    }

    @Override
    public List<Villages> getAllVillagesByDistrictId(Long id) throws EntityNotFoundException {
        return villagesRepository.getAllVillagesByDistrictId(id);
    }
}
