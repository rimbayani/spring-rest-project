package com.nusantara.repositories;

import com.nusantara.model.Provinces;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProvincesRepository extends CrudRepository<Provinces, Long> { }
