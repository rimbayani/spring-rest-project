package com.nusantara.repositories;

import com.nusantara.model.Villages;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VillagesRepository extends JpaRepository<Villages,Long> {
    @Query("SELECT V FROM Villages V WHERE V.district_id =:id")
    public List<Villages> getAllVillagesByDistrictId(Long id);

}