package com.nusantara.serviceimpl;

import com.nusantara.model.Districts;
import com.nusantara.repositories.DistrictsRepository;
import com.nusantara.service.DistrictsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class DistrictsServiceImpl implements DistrictsService {
    @Autowired
    private DistrictsRepository districtsRepository;

    @Override
    public List<Districts> getAllDistricts() {
        return districtsRepository.findAll();
    }

    @Override
    public Optional<Districts> getDistrictsById(Long id) {
        return districtsRepository.findById(id);
    }

    @Override
    public List<Districts> getDistrictsByRegencyId(Long id) {
        return districtsRepository.getDistrictByRegencyId(id);
    }
}