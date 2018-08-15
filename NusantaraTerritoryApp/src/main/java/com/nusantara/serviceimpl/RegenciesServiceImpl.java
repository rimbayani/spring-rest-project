package com.nusantara.serviceimpl;

import com.nusantara.error.EntityNotFoundException;
import com.nusantara.model.Regencies;
import com.nusantara.repositories.RegenciesRepository;
import com.nusantara.service.RegenciesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RegenciesServiceImpl implements RegenciesService {

    @Autowired
    private RegenciesRepository regenciesRepository;

    @Override
    public List<Regencies> getAllRegencies() throws EntityNotFoundException {
        return regenciesRepository.findAll();
    }

    @Override
    public Optional<Regencies> getRegenciesById(Long id) throws EntityNotFoundException {
        return regenciesRepository.findById(id);
    }

    @Override
    public List<Regencies> getAllRegenciesByProvincesId(Long id) throws EntityNotFoundException {
        return regenciesRepository.getAllRegenciesByProvincesId(id);
    }
}