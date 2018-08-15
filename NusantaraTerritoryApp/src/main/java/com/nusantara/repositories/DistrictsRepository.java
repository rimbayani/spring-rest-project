package com.nusantara.repositories;

import com.nusantara.model.Districts;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface DistrictsRepository extends JpaRepository<Districts,Long> {
    @Query("SELECT D FROM Districts D WHERE D.regency_id=:id")
    public List<Districts> getDistrictByRegencyId(@Param("id") Long id);
}