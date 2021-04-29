package com.thomason.project.outdoors.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.thomason.project.outdoors.models.Fish;

@Repository
public interface FishRepository  extends CrudRepository<Fish, Long>{
    List<Fish> findAll();
}
