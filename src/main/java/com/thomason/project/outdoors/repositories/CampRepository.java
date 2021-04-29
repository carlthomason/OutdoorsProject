package com.thomason.project.outdoors.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.thomason.project.outdoors.models.Camp;

@Repository
public interface CampRepository extends CrudRepository<Camp, Long>{
    List<Camp> findAll();
}
