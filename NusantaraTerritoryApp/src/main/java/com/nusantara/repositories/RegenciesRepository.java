package com.nusantara.repositories;

import com.nusantara.model.Regencies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RegenciesRepository extends JpaRepository<Regencies, Long> {
    @Query("SELECT R FROM Regencies R WHERE R.province_id =:id")
    public List<Regencies> getAllRegenciesByProvincesId(@Param("id") Long id);
}
