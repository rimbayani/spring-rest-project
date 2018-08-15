package com.nusantara.serviceimpl;

import com.nusantara.error.EntityNotFoundException;
import com.nusantara.model.Provinces;
import com.nusantara.repositories.ProvincesRepository;
import com.nusantara.service.ProvincesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProvincesServiceImpl implements ProvincesService {

    @Autowired
    ProvincesRepository provincesRepository;

    @Override
    public List<Provinces> getAllProvinces() throws EntityNotFoundException {
        return (List<Provinces>) provincesRepository.findAll();
    }

    @Override
    public Optional<Provinces> getProvincesById(Long id) throws EntityNotFoundException {
        return provincesRepository.findById(id);
    }
}
