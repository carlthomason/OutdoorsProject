package com.thomason.project.outdoors.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.thomason.project.outdoors.models.Hunt;

@Repository
public interface HuntRepository extends CrudRepository<Hunt, Long> {
	List<Hunt> findAll();	
}
