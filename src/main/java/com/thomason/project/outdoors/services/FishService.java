package com.thomason.project.outdoors.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.thomason.project.outdoors.models.Fish;
import com.thomason.project.outdoors.repositories.FishRepository;

@Service
public class FishService {
    private final FishRepository fishRepository;

    public FishService(FishRepository fishRepository) {
        this.fishRepository = fishRepository;
    }

    // get all Fish 
    public List<Fish> getAll() {
        return (List<Fish>) fishRepository.findAll();
    }

    // find a fish by id
    public Fish findFish(Long id) {
       Optional<Fish> myfish = fishRepository.findById(id);
       if (myfish.isPresent()) {
          return myfish.get();
       }else {
          return null;
       }
   }
    
   // create a fish
   public Fish createFish(Fish myFish) {
       return fishRepository.save(myFish);
   }

   // Update fish
   public void updateFish(Fish myFish) {
       fishRepository.save(myFish);
   }

   // Delete fish
   public void deleteFish(Long myId) {
      fishRepository.deleteById(myId);
   }
}